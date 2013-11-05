using UnityEngine;
using System.Collections;

[AddComponentMenu ("Camera/ViewSwitch")]
[RequireComponent (typeof(Camera))]
public class ViewSwitch : MonoBehaviour
{
	public delegate void SwitchedEventHandler();
	public event SwitchedEventHandler Switched;

	[SerializeField] private float m_duration;
	[SerializeField] private float m_fov;
	[SerializeField] private float m_near;
	[SerializeField] private float m_far;
	[SerializeField] private float m_orthoSize;
	[SerializeField] private Transform m_orthoTransform;
	[SerializeField] private Transform m_perspTransform;

	[HideInInspector] private bool m_isOrtho;
	[HideInInspector] private float m_aspectRatio;
	[HideInInspector] private Matrix4x4 m_orthoProjection;
	[HideInInspector] private Matrix4x4 m_perspProjection;

	Matrix4x4 MatrixLerp(Matrix4x4 from, Matrix4x4 to, float weight) 
	{
		Matrix4x4 ret = new Matrix4x4();
		for (int i = 0; i < 16; i++)
		{
			ret[i] = Mathf.Lerp(from[i], to[i], weight);
		}
		return ret;
	}

	IEnumerator DoSwitch(Matrix4x4 targetProjection, Transform targetTransform)
	{
		float startTime = Time.time;
		float dt;
		while (Time.time - startTime < m_duration)
		{
			dt = Time.time - startTime;
			camera.projectionMatrix = MatrixLerp(camera.projectionMatrix, targetProjection, dt / m_duration);
			transform.position = Vector3.Slerp(transform.position, targetTransform.position, dt / m_duration);
			transform.rotation = Quaternion.Slerp(transform.rotation, targetTransform.rotation, dt / m_duration);
			yield return null;
		}
		camera.projectionMatrix = targetProjection;
		m_isOrtho = !m_isOrtho;
		OnSwitch();
	}

	void OnSwitch()
	{
		if (Switched != null)
		{
			Switched();
		}
	}

	public void Switch()
	{
		if (camera.projectionMatrix == m_orthoProjection)
		{
			StartCoroutine(DoSwitch(m_perspProjection, m_perspTransform));
		}
		else
		{
			StartCoroutine(DoSwitch(m_orthoProjection, m_orthoTransform));
		}
	}

	void Awake()
	{
		m_aspectRatio = (float) Screen.width / Screen.height;
		m_orthoProjection = Matrix4x4.Ortho(-m_orthoSize * m_aspectRatio, m_orthoSize * m_aspectRatio, -m_orthoSize, m_orthoSize, m_near, m_far);
		m_perspProjection = Matrix4x4.Perspective(m_fov, m_aspectRatio, m_near, m_far);
		camera.projectionMatrix = m_orthoProjection;
		m_isOrtho = true;
	}
}
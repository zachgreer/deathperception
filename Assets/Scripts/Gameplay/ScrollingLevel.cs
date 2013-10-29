using UnityEngine;

public class ScrollingLevel : MonoBehaviour
{
	static float s_speed = 2;
	[HideInInspector] Transform m_transform;

	void Switching()
	{
		enabled = false;
	}

	void Switched()
	{
		enabled = true;
	}

	void Awake()
	{
		m_transform = transform;
		ZDrive.Instance.Switching += Switching;
		ZDrive.Instance.Switched += Switched;
	}

	void Update()
	{
		m_transform.Translate(-Vector3.right * s_speed * Time.deltaTime);
	}
}
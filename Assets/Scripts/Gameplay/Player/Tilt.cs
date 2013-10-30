using UnityEngine;

// Attach to the Player's 3D Mesh to make it tilt (when in 3D mode).
public class Tilt : MonoBehaviour
{
	[SerializeField] float m_speed;
	[SerializeField] float m_snap;
	[SerializeField] float m_yLimit;
	[SerializeField] float m_zLimit;
	[HideInInspector] Transform m_transform;
	[SerializeField] Transform m_crosshair;
	[HideInInspector] Vector3 m_crossHairOrigin;
	[HideInInspector] bool m_tilt;

	public void Toggle()
	{
		m_tilt = !m_tilt;
	}

	void Awake()
	{
		m_transform = transform;
		m_crossHairOrigin = m_crosshair.localPosition;
		m_tilt = false;
		ZDrive.Instance.Switched += Toggle;
	}

	void Update()
	{
		if (m_tilt)
		{
			float newY = Mathf.Clamp(m_crosshair.localPosition.y + Input.GetAxis("Vertical") * m_speed * Time.deltaTime, -m_yLimit, m_yLimit);
			float newZ = Mathf.Clamp(m_crosshair.localPosition.z - Input.GetAxis("Horizontal") * m_speed * Time.deltaTime, -m_zLimit, m_zLimit);
			m_crosshair.localPosition = new Vector3(m_crosshair.localPosition.x, newY, newZ);
		}
		m_crosshair.localPosition = Vector3.Lerp(m_crosshair.localPosition, m_crossHairOrigin, m_snap * Time.deltaTime);
		m_transform.LookAt(m_crosshair);
	}
}
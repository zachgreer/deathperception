using UnityEngine;

[AddComponentMenu ("Player/Tilt")]
public class Tilt : MonoBehaviour
{
	[SerializeField] private float m_speed;
	[SerializeField] private float m_snap;
	[SerializeField] private float m_yLimit;
	[SerializeField] private float m_zLimit;
	[SerializeField] private Transform m_crosshair;

	[HideInInspector] private Transform m_transform;
	
	[HideInInspector] private Vector3 m_crossHairOrigin;
	[HideInInspector] private bool m_tilt;

	public void Toggle()
	{
		m_tilt = !m_tilt;
	}

	void Awake()
	{
		m_transform = GetComponent<Transform>();

		m_crossHairOrigin = m_crosshair.localPosition;
		m_tilt = false;
	}

	void Start()
	{
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
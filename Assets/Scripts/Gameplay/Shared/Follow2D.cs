using UnityEngine;

public class Follow2D : MonoBehaviour
{
	[SerializeField] Transform m_target;
	const float m_zPosition = -5;
	[HideInInspector] Transform m_transform;
	[HideInInspector] Vector3 m_newAngles;

	void Start()
	{
		m_transform = GetComponent<Transform>();
	}

	void Update()
	{
		m_transform.position = new Vector3(m_target.position.x, m_target.position.y, m_zPosition);

		m_newAngles = m_target.rotation.eulerAngles;
		m_newAngles.x = 0;
		m_newAngles.y = 0;
		m_transform.rotation = Quaternion.Euler(m_newAngles);
	}
}
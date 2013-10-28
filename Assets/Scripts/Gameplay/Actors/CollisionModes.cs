using UnityEngine;

public class CollisionModes : MonoBehaviour
{
	[HideInInspector] Vector3 m_orthoSize;
	[HideInInspector] Vector3 m_perspSize;
	[HideInInspector] BoxCollider m_boxCollider;
	[HideInInspector] bool m_ortho;

	const float k_orthoWidthModifier = 100f;

	void Switched()
	{
		if (m_ortho)
		{
			m_boxCollider.size = m_perspSize;
		}
		else
		{
			m_boxCollider.size = m_orthoSize;
		}
		m_ortho = !m_ortho;
	}

	void Start()
	{
		m_ortho = true;

		m_boxCollider = GetComponent<BoxCollider>();

		m_perspSize = GetComponent<BoxCollider>().size;
		m_orthoSize = m_perspSize;
		m_orthoSize.z *= k_orthoWidthModifier;
		
		m_boxCollider.size = m_orthoSize;

		ZDrive.Instance.Switched += new ZDrive.SwitchedEventHandler(Switched);
	}
}
using UnityEngine;
using System.Collections.Generic;

// Manages enabling and disabling of the 2D and 3D colliders in child objects.
public class Multicollider : MonoBehaviour
{
	[SerializeField] GameObject m_2dChild;
	[SerializeField] GameObject m_3dChild;
	[HideInInspector] List<Collider> m_2dColliders;
	[HideInInspector] List<Collider> m_3dColliders;

	public void Toggle()
	{
		for (int i = 0; i < m_2dColliders.Count; i++)
		{
			m_2dColliders[i].enabled = !m_2dColliders[i].enabled;
		}
		for (int i = 0; i < m_2dColliders.Count; i++)
		{
			m_3dColliders[i].enabled = !m_3dColliders[i].enabled;
		}
	}

	void Awake()
	{
		m_2dColliders = new List<Collider>(m_2dChild.GetComponentsInChildren<Collider>(true));
		m_3dColliders = new List<Collider>(m_3dChild.GetComponentsInChildren<Collider>(true));
	}
}
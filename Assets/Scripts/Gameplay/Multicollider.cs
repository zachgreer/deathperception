using UnityEngine;

public class Multicollider : MonoBehaviour
{
	[SerializeField] Collider m_2dCollider;
	[SerializeField] Collider m_3dCollider;

	void Switch()
	{
		// Switch between 2D and 3D colliders being enabled
		m_2dCollider.enabled = !m_2dCollider.enabled;
		m_3dCollider.enabled = !m_3dCollider.enabled;
	}

	void Awake()
	{
		ZDrive.Instance.Switched += Switch;
	}
}
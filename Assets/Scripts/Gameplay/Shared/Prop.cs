using UnityEngine;

// Props cannot move on their own.
[RequireComponent (typeof(Multicollider))]
public class Prop : MonoBehaviour
{
	[HideInInspector] Multicollider m_multiCollider;

	void Switched()
	{
		m_multiCollider.Toggle();
	}

	void Awake()
	{
		m_multiCollider = GetComponent<Multicollider>();
		ZDrive.Instance.Switched += Switched;
	}
}
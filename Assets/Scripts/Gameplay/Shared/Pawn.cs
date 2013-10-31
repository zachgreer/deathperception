using UnityEngine;

// Behaviour for all combatant entities.
[RequireComponent (typeof(Multicollider))]
[RequireComponent (typeof(Health))]
[RequireComponent (typeof(Movement))]
public class Pawn : MonoBehaviour
{
	[HideInInspector] Health m_health;
	[HideInInspector] Movement m_movement;
	[HideInInspector] Cannon m_cannon;
	[HideInInspector] Multicollider m_multiCollider;

	void Died()
	{
		// Explosion!
		gameObject.SetActive(false);
	}

	void Switching()
	{
		m_movement.enabled = false;
	}

	void Switched()
	{
		m_movement.enabled = true;
		m_multiCollider.Toggle();
	}

	public void MoveTo(Vector3 position)
	{
		m_movement.MoveTo(position);
	}

	public void MoveTowards(Vector3 direction)
	{
		m_movement.MoveTowards(direction);
	}

	public void Fire()
	{
		m_cannon.Fire();
	}

	void Awake()
	{
		m_health = GetComponent<Health>();
		m_movement = GetComponent<Movement>();
		m_cannon = GetComponentInChildren<Cannon>();
		m_multiCollider = GetComponent<Multicollider>();

		m_health.Died += Died;

		ZDrive.Instance.Switching += Switching;
		ZDrive.Instance.Switched += Switched;
	}

	void OnDestroy()
	{
		if (ZDrive.Instance != null)
		{
			ZDrive.Instance.Switching -= Switching;
			ZDrive.Instance.Switched -= Switched;
		}
	}

	void OnApplicationQuit()
	{
		ZDrive.Instance.Switching -= Switching;
		ZDrive.Instance.Switched -= Switched;
	}
}
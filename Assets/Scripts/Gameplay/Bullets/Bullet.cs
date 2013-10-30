using UnityEngine;

[RequireComponent (typeof(Multicollider))]
[RequireComponent (typeof(Movement))]
public class Bullet : MonoBehaviour
{
	[HideInInspector] Movement m_movement;
	[HideInInspector] Multicollider m_multiCollider;

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

	void Awake()
	{
		m_movement = GetComponent<Movement>();
		m_multiCollider = GetComponent<Multicollider>();

		ZDrive.Instance.Switching += Switching;
		ZDrive.Instance.Switched += Switched;
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.tag != "Barrier")
		{
			// Splash!
		}
		// Assume that all bullets are parented to pools.
		transform.parent.GetComponent<ObjectPool>().Return(gameObject);
	}
}
using UnityEngine;

public class Pawn : MonoBehaviour
{
	[SerializeField] Health m_health;
	[SerializeField] Movement m_movement;
	[HideInInspector] Cannon m_cannon;

	void Died(GameObject dead)
	{
		gameObject.SetActive(false);
	}

	void Switching()
	{
		m_movement.enabled = false;
	}

	void Switched()
	{
		m_movement.enabled = true;
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

	void Start()
	{
		m_health.Died += new Health.DeathEventHandler(Died);

		m_movement = GetComponent<Movement>();

		m_cannon = GetComponentInChildren<Cannon>();
		
		ZDrive.Instance.Switching += new ZDrive.SwitchingEventHandler(Switching);
		ZDrive.Instance.Switched += new ZDrive.SwitchedEventHandler(Switched);
	}
}
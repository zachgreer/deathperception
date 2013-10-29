using UnityEngine;

// Moves and participates in collisions.
public class Prop : MonoBehaviour
{
	[SerializeField] Movement m_movement;

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

	void Start()
	{
		ZDrive.Instance.Switching += new ZDrive.SwitchingEventHandler(Switching);
		ZDrive.Instance.Switched += new ZDrive.SwitchedEventHandler(Switched);
	}
}
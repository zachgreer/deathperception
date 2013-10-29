using UnityEngine;

public class Hitbox : MonoBehaviour
{
	// Fired when the hitbox exits the 'Field' trigger.
	public delegate void LeftFieldEventHandler();
	public event LeftFieldEventHandler LeftField;

	// Fired when this hitbox has hit a bullet's hitbox.
	public delegate void HitBulletEventHandler();
	public event HitBulletEventHandler HitBullet;

	// Fired when this hitbox has hit a solid object.
	public delegate void HitSolidEventHandler();
	public event HitSolidEventHandler HitSolid;

	[SerializeField] BoxCollider m_collider;

	public void ToggleEnable()
	{
		m_collider.enabled = !m_collider.enabled;
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.tag == "Bullet")
		{
			if (HitBullet != null) { HitBullet(); }
		}
		else if (other.tag == "Solid")
		{
			if (HitSolid != null) { HitSolid(); }
		}
	}

	void OnTriggerExit(Collider other)
	{
		if (other.tag == "Field")
		{
			if (LeftField != null) { LeftField(); }
		}
	}
}
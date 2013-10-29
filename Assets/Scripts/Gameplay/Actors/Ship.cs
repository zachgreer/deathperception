using UnityEngine;

public class Ship : MonoBehaviour
{
	[SerializeField] Movement m_movement;
	[SerializeField] Health m_health;
	[SerializeField] Cannon m_cannon;
	[SerializeField] Hitbox m_2dHitbox;
	[SerializeField] Hitbox m_3dHitbox;

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
		m_2dHitbox.ToggleEnable();
		m_3dHitbox.ToggleEnable();
	}

	void HitBullet()
	{
		m_health.Subtract(1);
	}

	void HitSolid()
	{
		m_health.Die();
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
		m_health.Died += new Health.DeathEventHandler(Died);

		m_2dHitbox.HitSolid += new Hitbox.HitSolidEventHandler(HitSolid);
		m_3dHitbox.HitSolid += new Hitbox.HitSolidEventHandler(HitSolid);

		m_2dHitbox.HitBullet += new Hitbox.HitBulletEventHandler(HitBullet);
		m_3dHitbox.HitBullet += new Hitbox.HitBulletEventHandler(HitBullet);

		ZDrive.Instance.Switching += new ZDrive.SwitchingEventHandler(Switching);
		ZDrive.Instance.Switched += new ZDrive.SwitchedEventHandler(Switched);
	}
}
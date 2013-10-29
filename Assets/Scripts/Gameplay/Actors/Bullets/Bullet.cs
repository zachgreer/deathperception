﻿using UnityEngine;

public class Bullet : MonoBehaviour
{
	[SerializeField] Movement m_movement;
	[SerializeField] Hitbox m_2dHitbox;
	[SerializeField] Hitbox m_3dHitbox;

	void ReturnToPool()
	{
		transform.parent.GetComponent<ObjectPool>().Return(gameObject);
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

	void LeftField()
	{
		ReturnToPool();
	}

	void HitSolid()
	{
		// Play animation
		ReturnToPool();
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
		m_2dHitbox.LeftField += new Hitbox.LeftFieldEventHandler(LeftField);
		m_3dHitbox.LeftField += new Hitbox.LeftFieldEventHandler(LeftField);
		m_2dHitbox.HitSolid += new Hitbox.HitSolidEventHandler(HitSolid);
		m_3dHitbox.HitSolid += new Hitbox.HitSolidEventHandler(HitSolid);

		ZDrive.Instance.Switching += Switching; // new ZDrive.SwitchingEventHandler(Switching);
		ZDrive.Instance.Switched += Switched; // new ZDrive.SwitchedEventHandler(Switched);
	}
}
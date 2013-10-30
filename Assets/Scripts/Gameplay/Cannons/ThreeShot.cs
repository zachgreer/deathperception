using UnityEngine;

public class ThreeShot : Cannon
{
	[SerializeField] float m_angle;

	public override void Fire()
	{
		if (Time.time > m_nextFire)
		{
			GameObject obj0 = m_pool.Retrieve();
			GameObject obj1 = m_pool.Retrieve();
			GameObject obj2 = m_pool.Retrieve();
			if (obj0 != null)
			{
				BulletController bullet = obj0.GetComponent<BulletController>();
				bullet.transform.position = m_transform.position;
				bullet.direction = Quaternion.AngleAxis(-m_angle, m_transform.right) * m_transform.forward;
				m_nextFire = Time.time + m_fireRate;
			}
			if (obj1 != null)
			{
				BulletController bullet = obj1.GetComponent<BulletController>();
				bullet.transform.position = m_transform.position;
				bullet.direction = (Quaternion.AngleAxis(m_angle, m_transform.right) * Quaternion.AngleAxis(m_angle, m_transform.up)) * m_transform.forward;
			}
			if (obj2 != null)
			{
				BulletController bullet = obj2.GetComponent<BulletController>();
				bullet.transform.position = m_transform.position;
				bullet.direction = (Quaternion.AngleAxis(m_angle, m_transform.right) * Quaternion.AngleAxis(-m_angle, m_transform.up)) * m_transform.forward;
			}
		}
	}

	protected override void Awake()
	{
		base.Awake();
	}

	void Update()
	{
		m_transform.Rotate(0f, 0f, 90f * Time.deltaTime);
	}
}
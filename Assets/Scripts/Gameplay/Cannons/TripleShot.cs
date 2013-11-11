using UnityEngine;

public class TripleShot : Cannon
{
	[SerializeField]
	private TripleShotConfig m_config;

	[HideInInspector]
	private Transform m_transform;

	[HideInInspector]
	private float m_nextFire;

	public override void Fire()
	{
		if (Time.time > m_nextFire)
		{
			m_nextFire = Time.time + m_config.fireRate;
			BulletController bullet1 = BulletStack.Pop().GetComponent<BulletController>();
			if (bullet1 != null)
			{
				bullet1.transform.position = m_transform.position;
				bullet1.direction = Quaternion.AngleAxis(-m_config.angle, m_transform.right) * m_transform.forward;
			}
			BulletController bullet2 = BulletStack.Pop().GetComponent<BulletController>();
			if (bullet2 != null)
			{
				bullet2.transform.position = m_transform.position;
				bullet2.direction = (Quaternion.AngleAxis(m_config.angle, m_transform.right) * Quaternion.AngleAxis(m_config.angle, m_transform.up)) * m_transform.forward;
			}
			BulletController bullet3 = BulletStack.Pop().GetComponent<BulletController>();
			if (bullet3 != null)
			{
				bullet3.transform.position = m_transform.position;
				bullet3.direction = (Quaternion.AngleAxis(m_config.angle, m_transform.right) * Quaternion.AngleAxis(-m_config.angle, m_transform.up)) * m_transform.forward;
			}
		}
	}

	public override void FireAt(Vector3 targetPosition)
	{
		
	}

	void Awake()
	{
		m_transform = GetComponent<Transform>();

		m_nextFire = 0f;
	}
}
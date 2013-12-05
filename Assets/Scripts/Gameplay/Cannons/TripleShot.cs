using UnityEngine;

public class TripleShot : Cannon
{
	public TripleShotConfig Config;

	[HideInInspector]
	private Transform m_transform;

	[HideInInspector]
	private float m_nextFire;

	public override void Fire()
	{
		if (Time.time > m_nextFire)
		{
			m_nextFire = Time.time + Config.fireRate;
			BulletController bullet1 = BulletStack.Pop().GetComponent<BulletController>();
			if (bullet1 != null)
			{
				bullet1.transform.position = m_transform.position;
				Vector3 direction = Quaternion.AngleAxis(-Config.angle, m_transform.right) * m_transform.forward;
				bullet1.direction = direction;
				bullet1.transform.Find("3D Mesh").forward = direction;
				bullet1.gameObject.SetActive(true);
			}
			BulletController bullet2 = BulletStack.Pop().GetComponent<BulletController>();
			if (bullet2 != null)
			{
				bullet2.transform.position = m_transform.position;
				Vector3 direction = (Quaternion.AngleAxis(Config.angle, m_transform.right) * Quaternion.AngleAxis(Config.angle, m_transform.up)) * m_transform.forward;
				bullet2.direction = direction;
				bullet2.transform.Find("3D Mesh").forward = direction;
				bullet2.gameObject.SetActive(true);
			}
			BulletController bullet3 = BulletStack.Pop().GetComponent<BulletController>();
			if (bullet3 != null)
			{
				bullet3.transform.position = m_transform.position;
				Vector3 direction = (Quaternion.AngleAxis(Config.angle, m_transform.right) * Quaternion.AngleAxis(-Config.angle, m_transform.up)) * m_transform.forward;
				bullet3.direction = direction;
				bullet3.transform.Find("3D Mesh").forward = direction;
				bullet3.gameObject.SetActive(true);
			}
		}
	}

	public override void FireAt(Vector3 targetPosition)
	{
		Vector3 direction = targetPosition - m_transform.position;
		if (Time.time > m_nextFire)
		{
			m_nextFire = Time.time + Config.fireRate;
			BulletController bullet1 = BulletStack.Pop().GetComponent<BulletController>();
			if (bullet1 != null)
			{
				bullet1.transform.position = m_transform.position;
				bullet1.direction = Quaternion.AngleAxis(-Config.angle, m_transform.right) * direction;
				bullet1.gameObject.SetActive(true);
			}
			BulletController bullet2 = BulletStack.Pop().GetComponent<BulletController>();
			if (bullet2 != null)
			{
				bullet2.transform.position = m_transform.position;
				bullet2.direction = (Quaternion.AngleAxis(Config.angle, m_transform.right) * Quaternion.AngleAxis(Config.angle, m_transform.up)) * direction;
				bullet2.gameObject.SetActive(true);
			}
			BulletController bullet3 = BulletStack.Pop().GetComponent<BulletController>();
			if (bullet3 != null)
			{
				bullet3.transform.position = m_transform.position;
				bullet3.direction = direction;
				bullet3.transform.Find("3D Mesh").forward = direction;
				bullet3.gameObject.SetActive(true);
			}
		}
	}

	void Awake()
	{
		m_transform = GetComponent<Transform>();

		m_nextFire = 0f;
	}
}
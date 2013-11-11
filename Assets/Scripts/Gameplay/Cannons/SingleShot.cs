using UnityEngine;

public class SingleShot : Cannon
{
	public CannonConfig Config;

	[HideInInspector]
	private Transform m_transform;

	private float m_nextFire;

	public override void Fire()
	{
		if (Time.time > m_nextFire)
		{
			m_nextFire = Time.time + Config.fireRate;
			BulletController bullet = BulletStack.Pop().GetComponent<BulletController>();
			if (bullet != null)
			{
				bullet.transform.position = m_transform.position;
				bullet.direction = m_transform.forward;
				bullet.gameObject.SetActive(true);
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
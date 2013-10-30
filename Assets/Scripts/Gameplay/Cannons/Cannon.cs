using UnityEngine;

public class Cannon : MonoBehaviour
{
	[SerializeField] protected float m_fireRate;
	[SerializeField] protected ObjectPool m_pool;
	[HideInInspector] protected float m_nextFire;
	[HideInInspector] protected Transform m_transform;

	public virtual void Fire()
	{
		if (Time.time > m_nextFire)
		{
			GameObject obj = m_pool.Retrieve();
			if (obj != null)
			{
				BulletController bullet = obj.GetComponent<BulletController>();
				bullet.transform.position = m_transform.position;
				bullet.direction = m_transform.forward;
				m_nextFire = Time.time + m_fireRate;
			}
		}
	}

	protected virtual void Awake()
	{
		m_nextFire = 0f;
		m_transform = transform;
	}
}
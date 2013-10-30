using UnityEngine;

[RequireComponent (typeof(Bullet))]
public class BulletController : MonoBehaviour
{
	public Vector3 direction;
	[HideInInspector] Bullet m_bullet;

	void Awake()
	{
		m_bullet = GetComponent<Bullet>();
	}

	void Update()
	{
		m_bullet.MoveTowards(direction);
	}
}
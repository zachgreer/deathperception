using UnityEngine;

public class BulletController : MonoBehaviour
{
	[SerializeField] Bullet m_bullet;
	[SerializeField] Transform m_transform;

	void Update()
	{
		m_bullet.MoveTowards(m_transform.forward);
	}
}
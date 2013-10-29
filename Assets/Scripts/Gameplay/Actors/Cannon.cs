using UnityEngine;

public class Cannon : MonoBehaviour {
	[SerializeField] float m_cooldown;
	[SerializeField] ObjectPool m_bulletPool;
	[HideInInspector] bool m_fireThisFrame;
	[HideInInspector] float m_remainingCooldown;

	public void Fire()
	{
		m_fireThisFrame = true;
	}

	void Update()
	{
		if (m_fireThisFrame && m_remainingCooldown <= 0f)
		{
			GameObject bullet = m_bulletPool.Retrieve();
			if (bullet != null)
			{
				bullet.transform.position = transform.position;
				Transform bulletMeshTransform = bullet.GetComponentInChildren<MeshFilter>().transform;
				bulletMeshTransform.rotation = transform.rotation;

				m_remainingCooldown = m_cooldown;
			}
			m_fireThisFrame = false;
		}
		if (m_remainingCooldown > 0f)
		{
			m_remainingCooldown -= Time.deltaTime;
		}
	}
}
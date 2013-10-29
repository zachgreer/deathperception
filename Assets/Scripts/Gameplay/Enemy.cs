using UnityEngine;
using System.Collections;

public class Enemy : MonoBehaviour
{
	[HideInInspector] int m_health;
	static int s_maxHealth = 3;
	static float s_delay = 2;
	static float s_speed = 4;
	[SerializeField] Vector3 m_direction;
	[HideInInspector] Transform m_transform;
	[SerializeField] ObjectPool m_bulletPool;

	IEnumerator Think()
	{
		while (true)
		{
			yield return new WaitForSeconds(s_delay);
			GameObject bullet = m_bulletPool.Retrieve();
			if (bullet != null)
			{
				bullet.transform.position = m_transform.position;
				bullet.GetComponent<NBullet>().direction = (Player.Instance.transform.position - m_transform.position).normalized;
			}
		}
	}

	void Die()
	{
		StopAllCoroutines();
		gameObject.SetActive(false);
	}

	void Awake()
	{
		m_transform = transform;
		m_health = s_maxHealth;
	}

	void Start()
	{
		StartCoroutine(Think());
		Invoke("Die", 7);
	}

	void Update()
	{
		m_transform.Translate(m_direction * s_speed * Time.deltaTime);
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.tag == "Bullet")
		{
			m_health -= 1;
			if (m_health <= 0)
			{
				StopAllCoroutines();
				gameObject.SetActive(false);
			}
		}
		
		if (other.tag == "Solid")
		{
			// Explode
			gameObject.SetActive(false);
			StopAllCoroutines();
		}
	}
}
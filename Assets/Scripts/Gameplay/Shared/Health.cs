using UnityEngine;

public class Health : MonoBehaviour
{
	public delegate void DeathEventHandler();
	public event DeathEventHandler Died;

	[HideInInspector] int m_health;
	[SerializeField] int m_maxHealth;

	void OnDeath()
	{
		if (Died != null)
		{
			Died();
		}
	}
	
	public void Add(int health)
	{
		m_health = Mathf.Clamp(m_health + health, 0, m_maxHealth);
	}

	public void Subtract(int health)
	{
		m_health -= health;
		if (m_health <= 0)
		{
			OnDeath();
		}
	}

	public void Revive()
	{
		m_health = m_maxHealth;
	}

	public void Die()
	{
		m_health = 0;
		OnDeath();
	}

	void Awake()
	{
		Revive();
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.tag == "Enemy")
		{
			Subtract(100);
		}
		
		if(other.tag == "Bullet")
		{
			Subtract(1);
		}
	}
}
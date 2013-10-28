using UnityEngine;

public class Health : MonoBehaviour
{
	public delegate void DeathEventHandler(GameObject dead);
	public event DeathEventHandler Died;

	[HideInInspector] int m_health;
	[SerializeField] HealthParameters m_healthParameters;
	
	public void Add(int health)
	{
		m_health = Mathf.Clamp(m_health + health, 0, m_healthParameters.maxHealth);
	}

	public void Subtract(int health)
	{
		m_health -= health;
		if (m_health <= 0)
		{
			OnDeath();
		}
	}

	void OnDeath()
	{
		if (Died != null)
		{
			Died(gameObject);
		}
	}

	void Start()
	{
		m_health = m_healthParameters.maxHealth;
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.tag != "Field" && other.tag != "Bullet" && other.tag != "Spawner")
		{
			print("trigger!");
			Subtract(m_healthParameters.maxHealth);
		}
	}
}
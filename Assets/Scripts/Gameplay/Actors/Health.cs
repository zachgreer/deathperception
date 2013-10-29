using UnityEngine;

public class Health : MonoBehaviour
{
	public delegate void DeathEventHandler(GameObject dead);
	public event DeathEventHandler Died;

	[HideInInspector] int m_health;
	[SerializeField] HealthParameters m_healthParameters;

	void OnDeath()
	{
		if (Died != null)
		{
			Died(gameObject);
		}
	}
	
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

	public void Revive()
	{
		m_health = m_healthParameters.maxHealth;
	}

	public void Die()
	{
		m_health = 0;
		OnDeath();
	}

	void Start()
	{
		Revive();
	}
}
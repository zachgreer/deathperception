using UnityEngine;

public class Health : MonoBehaviour
{
	public delegate void DeathEventHandler();
	public event DeathEventHandler Died;

	[SerializeField] private HealthConfig m_config;

	[HideInInspector] private int m_health;

	void OnDeath()
	{
		if (Died != null)
		{
			Died();
		}
	}
	
	public void Add(int health)
	{
		m_health = Mathf.Clamp(m_health + health, 0, m_config.maxHealth);
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
		m_health = m_config.maxHealth;
	}

	public void Die()
	{
		m_health = 0;
		OnDeath();
	}

	public int HealthPoints
	{
		get { return m_health; }
	}

	void Awake()
	{
		Revive();
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.tag == "Solid")
		{
			Subtract(100);
		}
		
		if(other.tag == "Bullet")
		{
			Subtract(1);
		}
	}
}
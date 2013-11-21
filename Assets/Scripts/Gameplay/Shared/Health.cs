using UnityEngine;



public class Health : MonoBehaviour
{
	public delegate void DeathEventHandler();
	public event DeathEventHandler Died;
	
	
	[SerializeField] private HealthConfig m_config;
	[HideInInspector] private bool invincFrames = false;
	[HideInInspector] private int m_health;
	[SerializeField] private float m_timer = 2;
	
	void OnDeath()
	{
		if (Died != null)
		{
			invincFrames = true;
			Died();
			
		}
	}
	
	
	
	public void Add(int health)
	{
		m_health = Mathf.Clamp(m_health + health, 0, m_config.maxHealth);
	}

	public void Subtract(int health)
	{
		if(!invincFrames){
			
			m_health -= health;
			if (m_health <= 0)
			{
				OnDeath();
			}
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
	public void Update(){
		
		if(invincFrames && m_timer > 0){
			m_timer -= Time.deltaTime;
			if(m_timer <= 0){
				m_timer = 2;
				invincFrames= false;
			}
			
		}
		
	}

	public int HealthPoints
	{
		get { return m_health; }
	}

	void Awake()
	{
		Revive();
	}
}
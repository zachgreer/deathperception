using UnityEngine;

// Magical panopticon that handles higher-level gameplay.
public class Gameplay : MonoBehaviour
{
	[SerializeField] int m_lives;
	[SerializeField] Texture m_livesIcon;
	[SerializeField] int m_respawnTimer;
	[SerializeField] Transform m_spawnLocation;
	[SerializeField] GameObject m_player;
	[HideInInspector] Health m_playerHealth;

	void Respawn()
	{
		m_player.transform.position = m_spawnLocation.position;
		m_player.GetComponent<Player>().ResetPowerups();
		m_player.SetActive(true);
	}

	void PlayerDied()
	{
		m_lives--;
		if (m_lives <= 0)
		{
			Application.LoadLevel(Application.loadedLevel);
		}
		Invoke("Respawn", m_respawnTimer);
	}

	void Awake()
	{
		m_playerHealth = m_player.GetComponent<Health>();
		m_playerHealth.Died += PlayerDied;
	}
	
	void OnGUI () {
		GUI.Label (new Rect (25, 75, 100, 30), "Lives: ");
		for(int i = 0;i<m_lives;i++){
			
		GUI.DrawTexture (new Rect(60+i*15,80,15,15),m_livesIcon);
			
		}
		
	}
}
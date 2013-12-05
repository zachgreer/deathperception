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
	[HideInInspector] bool m_gameOver = false;
	[HideInInspector] bool isPaused = false;
	
	void Respawn()
	{
		m_player.transform.position = m_spawnLocation.position;
		m_player.GetComponent<Player>().ResetPowerups();
		m_player.SetActive(true);
		StartCoroutine(m_player.GetComponent<Player>().Blink(2.0f));
		
	}

	void PlayerDied()
	{
		m_lives--;
		if (m_lives <= 0)
		{
			Time.timeScale = 0;
			m_gameOver = true;
		}
		Invoke("Respawn", m_respawnTimer);
	}

	void Awake()
	{
		m_playerHealth = m_player.GetComponent<Health>();
		m_playerHealth.Died += PlayerDied;
	}
	
	void Update () {
	
		if(Input.GetKeyDown(KeyCode.Escape) && !m_gameOver){
			
			switchPause();
			
		}
		
	}
	
	private void switchPause(){
	
		isPaused = !isPaused;
			if(isPaused){
			
				Time.timeScale = 0;
					
			}
			else{
				Time.timeScale = 1;
			}
		
	}
	
	void OnGUI () {
		
		if(!m_gameOver){
			GUI.Label (new Rect (25, 75, 100, 30), "Lives: ");
			for(int i = 0;i<m_lives;i++){
				
			GUI.DrawTexture (new Rect(60+i*15,80,15,15),m_livesIcon);
				
			}
			GUI.Label (new Rect (25, 25, 100, 30), "Score: " + Score.getScore ());
			GUI.Label (new Rect (25, 50, 100, 30), "Combo: " + Score.getCombo ());
		}
		
		if(m_gameOver){
			
			
			GUI.Box(new Rect(480,250,140,200), "Game Over");
			GUI.Label(new Rect(500,300,100,25), "Score: "+Score.getScore());
			if (GUI.Button (new Rect (500,350,100,25), "Retry")) {
				Application.LoadLevel (1);
				Time.timeScale = 1;
			}
			if (GUI.Button (new Rect (500,375,100,25), "Main Menu")) {
				Application.LoadLevel (0);
				Time.timeScale = 1;
			}
			
		}
		
		if(isPaused && !m_gameOver){
			GUI.Box(new Rect(480,250,140,90), "Paused");
			if (GUI.Button (new Rect (500,300,100,25), "Resume")) {
				switchPause();
			}
		}
		
	}
}
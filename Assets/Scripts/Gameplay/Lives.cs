using UnityEngine;

public class Lives : MonoBehaviour
{
	[SerializeField] int m_lives;
	[SerializeField] Health m_playerHealth;
	[SerializeField] LivesParameters m_livesParameters;

	void PlayerDied(GameObject dead)
	{
		m_lives--;
		if (m_lives <= 0)
		{
			Application.LoadLevel(Application.loadedLevel);
		}
	}

	void Start()
	{
		m_lives = m_livesParameters.startingLives;
		m_playerHealth.Died += new Health.DeathEventHandler(PlayerDied);
	}
}
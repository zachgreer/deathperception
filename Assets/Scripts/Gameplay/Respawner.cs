using UnityEngine;
using System.Collections;

public class Respawner : MonoBehaviour
{
	[SerializeField] float m_timer;
	[SerializeField] Transform m_spawnPoint;
	[SerializeField] GameObject m_player;

	IEnumerator DoRespawn()
	{
		yield return new WaitForSeconds(m_timer);
		m_player.transform.position = m_spawnPoint.position;
		m_player.SetActive(true);
	}

	void Respawn(GameObject dead)
	{
		StartCoroutine(DoRespawn());
	}

	void Start()
	{
		m_player.GetComponentInChildren<Health>().Died += new Health.DeathEventHandler(Respawn);
	}
}
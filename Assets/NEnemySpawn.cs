using UnityEngine;
using System.Collections.Generic;

public class NEnemySpawn : MonoBehaviour
{
	[SerializeField] List<Enemy> m_enemies;

	void OnTriggerEnter(Collider other)
	{
		for (int i = 0; i < m_enemies.Count; i++)
		{
			m_enemies[i].enabled = true;	
		}
	}
}
using UnityEngine;
using System.Collections.Generic;

public class EnemySpawn : MonoBehaviour
{
	public List<GameObject> enemies;

	void OnTriggerExit(Collider other)
	{
		if (other.tag == "Field")
		{
			for (int i = 0; i < enemies.Count; i++)
			{
				enemies[i].SetActive(true);
			}
		}
	}
}
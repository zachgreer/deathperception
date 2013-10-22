using UnityEngine;
using System.Collections.Generic;

public class EnemySpawn : MonoBehaviour {
	public List<GameObject> enemies;

	// Called when the trigger leaves the 'field' and signals all atached
	// enemies to enter the screen.
	void OnTriggerExit(Collider other) {
		if (other.tag == "Field")
			foreach (GameObject enemy in enemies)
				enemy.GetComponent<Movement>().enabled = true;
	}
}
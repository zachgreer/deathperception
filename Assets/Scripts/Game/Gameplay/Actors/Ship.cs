using UnityEngine;
using System.Collections;

// Registers and unregisters the GameObject that this script is attached to
// with the GameController as a ship.
public class Ship : MonoBehaviour {
	void Start() {
		GameManager.Instance.RegisterShip(gameObject);
	}

	void OnDestroy() {
		if (GameManager.Instance)
			GameManager.Instance.UnregisterShip(gameObject);
	}
}
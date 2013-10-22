using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent (typeof(ZDriveController))]
public class GameManager : SingletonBehaviour<GameManager> {
	public GameObject terrain;

	bool paused;
	GameObject playerShip;
	List<GameObject> ships;
	List<GameObject> bullets;
	ZDriveController zdriveController;

	void TogglePause() {
		paused = !paused;
		foreach (GameObject obj in ships) {
			obj.GetComponent<Movement>().enabled = !paused;
			//obj.GetComponentInChildren<CannonController>().enabled = !paused;
		}
		foreach (GameObject obj in bullets) {
			obj.GetComponent<Movement>().enabled = !paused;
		}
		zdriveController.enabled = !paused;
		terrain.GetComponent<Movement>().enabled = !paused;
	}

	void ToggleControlMode() {
		playerShip.GetComponent<PlayerMovement>().ToggleMode();
	}

	void GameOver() {
		terrain.GetComponent<Movement>().enabled = false;
	}

	public void RegisterShip(GameObject obj) {
		ships.Add(obj);
	}

	public void UnregisterShip(GameObject obj) {
		ships.Remove(obj);
	}

	public void RegisterBullet(GameObject obj) {
		bullets.Add(obj);
	}


	public void UnregisterBullet(GameObject obj) {
		bullets.Remove(obj);
	}

	void Awake() {
		paused = false;
		ships = new List<GameObject>();
		bullets = new List<GameObject>();
	}

	void Start() {
		ZDrive zdrive = GetComponent<ZDrive>();
		zdrive.togglePause = TogglePause;
		zdrive.viewSwitch.togglePause = TogglePause;
		zdrive.viewSwitch.toggleControlMode = ToggleControlMode;
		zdriveController = GetComponent<ZDriveController>();
		playerShip = GameObject.Find("Player");
	}

	void Update() {
		if (Input.GetKeyDown("escape"))
			TogglePause();
	}
}
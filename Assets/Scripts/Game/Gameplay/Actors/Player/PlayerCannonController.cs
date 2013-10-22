// PlayerCannonController.cs
// Author: Zach Greer
using UnityEngine;
using System.Collections;

public class PlayerCannonController : CannonController {
	Cannon cannon;

	void Start() {
		cannon = GetComponentInChildren<Cannon>();
	}

	void Update() {
		if (Input.GetButtonDown("Fire1"))
			cannon.Fire();
	}
}
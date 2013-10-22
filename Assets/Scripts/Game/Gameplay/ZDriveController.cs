using UnityEngine;
using System.Collections;

// Causes the ZDrive to activate when M2 is pressed.
[RequireComponent (typeof(ZDrive))]
public class ZDriveController : MonoBehaviour {
	ZDrive zdrive;

	void Start() {
		zdrive = GetComponent<ZDrive>();
	}

	void Update() {
		if (Input.GetButtonDown("Fire2"))
			zdrive.Switch();
	}
}
// Cannon.cs
// Author: Zach Greer
using UnityEngine;
using System.Collections;

// Instantiates bullets from the attached transform.
// TODO: Spawn bullets from a pool for performance.
public class Cannon : MonoBehaviour {
	public GameObject projectile;

	bool fireThisUpdate;

	// Sets fireThisUpdate to true so that 
	public void Fire() {
		Instantiate(projectile, transform.position, transform.rotation);
	}
}
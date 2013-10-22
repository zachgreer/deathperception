using UnityEngine;
using System.Collections;

[RequireComponent (typeof(PlayerMovement))]
public class PlayerMovementController : MonoBehaviour {
	Vector3 direction;
	PlayerMovement movement;

	void Start() {
		movement = GetComponent<PlayerMovement>();
	}

	void Update() {
		direction.x = Input.GetAxis("Horizontal");
		direction.y = Input.GetAxis("Vertical");
		movement.Move(direction);
	}
}
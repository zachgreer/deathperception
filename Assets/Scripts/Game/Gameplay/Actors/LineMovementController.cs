using UnityEngine;
using System.Collections;

// Maintains a constant velocity in the assigned direction.
[RequireComponent (typeof(Movement))]
public class LineMovementController : MonoBehaviour {
	public Vector3 direction;

	LocalTime localTime;
	Movement movement;

	void Start() {
		movement = GetComponent<Movement>();
	}

	void Update() {
		movement.Move(direction);
	}
}
using UnityEngine;
using System.Collections;

// Abstract base for all movement-type components.
[RequireComponent (typeof(LocalTime))]
abstract public class Movement : MonoBehaviour {
	// Tells the movement component which direction you wish to move in. Actual
	// movement takes place during FixedUpdate.
	public abstract void Move(Vector3 direction);
}
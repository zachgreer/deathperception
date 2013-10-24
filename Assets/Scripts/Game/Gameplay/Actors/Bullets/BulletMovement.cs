using UnityEngine;
using System.Collections;

[RequireComponent (typeof(LocalTime))]
public class BulletMovement : Movement {
	public static float horizontalSpeed = 16;
	public static float verticalSpeed = 16;

	Vector3 translation;
	LocalTime localTime;

	public override void Move(Vector3 direction) {
		translation.x = direction.x * horizontalSpeed;
		translation.y = direction.y * verticalSpeed;
		translation.z = direction.z * horizontalSpeed;
	}

	void Start() {
		localTime = GetComponent<LocalTime>();
	}

	void Update() {
		transform.Translate(translation * localTime.deltaTime);
	}
}
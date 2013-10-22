using UnityEngine;
using System.Collections;

[RequireComponent (typeof(LocalTime))]
public class PlayerMovement : Movement {
	public float horizontalSpeed;
	public float verticalSpeed;

	bool inOrthoMode;
	Vector3 translation;
	LocalTime localTime;

	public override void Move(Vector3 direction) {
		if (inOrthoMode) {
			translation.x = direction.x * horizontalSpeed;
			translation.y = direction.y * verticalSpeed;
			translation.z = 0;
		}
		else {
			translation.z = -direction.x * horizontalSpeed;
			translation.y = direction.y * verticalSpeed;
			translation.x = 0;
		}
	}

	public void ToggleMode() {
		inOrthoMode = !inOrthoMode;
	}

	void Awake() {
		inOrthoMode = true;
	}

	void Start() {
		localTime = GetComponent<LocalTime>();
		rigidbody.freezeRotation = true;
	}

	void Update() {
		transform.Translate(translation * localTime.deltaTime);
	}
}
using UnityEngine;
using System.Collections;

// Allows an object-specific time-scale to be set. Useful for pausing
// and localized slowdown/speedup effects.
public class LocalTime : MonoBehaviour {
	public float timeScale = 1.0f;

	public float deltaTime {
		get { return Time.deltaTime * timeScale; }
	}

	public float fixedDeltaTime {
		get { return Time.fixedDeltaTime * timeScale; }
	}
}
using UnityEngine;
using System.Collections;

// Provides global access to a single instance of a component.
public class SingletonBehaviour<T> : MonoBehaviour where T : MonoBehaviour {
	protected static T instance;

	public static T Instance {
		get {
			if (instance == null)
				instance = FindObjectOfType(typeof(T)) as T;
				if (instance == null)
					Debug.LogError("An instance of " + typeof(T)
						+ " was searched for but not found.");
			return instance;
		}
	}
}
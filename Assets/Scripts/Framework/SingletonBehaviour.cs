using UnityEngine;

// Lazily-instantiated base class for singleton components.
public class SingletonBehaviour<T> : MonoBehaviour where T : MonoBehaviour {
	private static T s_instance;

	public static T Instance
	{
		get
		{
			if (s_instance == null)
			{
				s_instance = FindObjectOfType(typeof(T)) as T;
				if (s_instance == null)
				{
					Debug.LogError("[SingletonBehavior] No instance of " + typeof(T) + "exists.");
				}
			}
			return s_instance;
		}
	}
}
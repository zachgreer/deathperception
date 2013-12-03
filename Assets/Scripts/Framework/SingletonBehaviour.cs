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
			}
			return s_instance;
		}
	}
}
using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

public class MovementConfig : ScriptableObject
{
	public float speed;

	#if UNITY_EDITOR
	[MenuItem ("Assets/Create/Config/Movement")]
	public static void CreateAsset()
	{
		ScriptableObjectUtility.CreateAsset<MovementConfig>();
	}
	#endif
}
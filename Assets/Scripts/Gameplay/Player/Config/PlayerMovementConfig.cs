using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

public class PlayerMovementConfig : ScriptableObject
{
	public float horizontalLimit;
	public float verticalLimit;

	#if UNITY_EDITOR
	[MenuItem ("Assets/Create/Config/PlayerMovement")]
	public static void CreateAsset()
	{
		ScriptableObjectUtility.CreateAsset<PlayerMovementConfig>();
	}
	#endif
}
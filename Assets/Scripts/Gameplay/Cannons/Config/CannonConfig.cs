using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

public class CannonConfig : ScriptableObject
{
	public float fireRate;

	#if UNITY_EDITOR
	[MenuItem ("Assets/Create/Config/Cannon")]
	public static void CreateAsset()
	{
		ScriptableObjectUtility.CreateAsset<CannonConfig>();
	}
	#endif
}
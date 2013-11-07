using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

public class HealthConfig : ScriptableObject
{
	public int maxHealth;

	#if UNITY_EDITOR
	[MenuItem ("Assets/Create/Config/Health")]
	public static void CreateAsset()
	{
		ScriptableObjectUtility.CreateAsset<HealthConfig>();
	}
	#endif
}
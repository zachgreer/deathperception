using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

public class EnemyConfig : ScriptableObject
{
	public int points;
	public float fireRate;

	#if UNITY_EDITOR
	[MenuItem ("Assets/Create/Config/Enemy")]
	public static void CreateAsset()
	{
		ScriptableObjectUtility.CreateAsset<EnemyConfig>();
	}
	#endif
}
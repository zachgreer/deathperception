using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

public class TripleShotConfig : CannonConfig
{
	public float angle;

	#if UNITY_EDITOR
	[MenuItem ("Assets/Create/Config/TripleShot")]
	public static new void CreateAsset()
	{
		ScriptableObjectUtility.CreateAsset<TripleShotConfig>();
	}
	#endif
}
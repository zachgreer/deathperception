using UnityEngine;
using System.Collections;

/// <summary>
/// Destroys a wave when it no longer has any children.
/// </summary>
public class WaveCleanup : MonoBehaviour
{
	private void Awake()
	{
		transform = GetComponent<Transform>();
	}
	
	private void Start()
	{
		StartCoroutine(DestroyIfChildless());
	}
	
	private IEnumerator DestroyIfChildless()
	{
		yield return new WaitForSeconds(checkChildrenInterval);
		while (true)
		{
			if (transform.childCount == 0)
				Destroy(gameObject);
			yield return new WaitForSeconds(checkChildrenInterval);
		}
	}
	
	private const float checkChildrenInterval = 6.0f;
	[HideInInspector] new private Transform transform;
}
using UnityEngine;
using System.Collections;

/// <summary>
/// Attach to a GameObject containing a ParticleSystem to have the object
/// destroyed when there are no more particles to emit. Destruction does not
/// happen during Update but at an adjustable interval.
/// </summary>
[AddComponentMenu ("Particles/ParticleSystemCleanup")]
[RequireComponent (typeof(ParticleSystem))]
public class ParticleSystemCleanup : MonoBehaviour
{
	private void Awake()
	{
		particleSystem = GetComponent<ParticleSystem>();
	}
	
	private void Start()
	{
		StartCoroutine(DestroyIfNotAlive());
	}
	
	private IEnumerator DestroyIfNotAlive()
	{
		// Waiting at the outset will catch short-lived particle-effects
		// during the first iteration.
		yield return new WaitForSeconds(checkAliveInterval);
		while (true)
		{
			if (!particleSystem.IsAlive())
				Destroy(gameObject);
			yield return new WaitForSeconds(checkAliveInterval);
		}
	}
	
	private const float checkAliveInterval = 3.0f;
	[HideInInspector] new ParticleSystem particleSystem;
}
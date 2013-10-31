using UnityEngine;

// Cleans up stray bullets, enemies, and triggers.
public class Deleter : MonoBehaviour
{
	void OnTriggerEnter(Collider other)
	{
		Rigidbody otherRigidbody = other.attachedRigidbody;
		if (otherRigidbody != null)
		{
			Destroy(otherRigidbody.gameObject);
		}
	}
}
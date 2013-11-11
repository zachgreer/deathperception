using UnityEngine;

public abstract class Cannon : MonoBehaviour
{
	[HideInInspector]
	public ObjectStack BulletStack;

	public abstract void Fire();
	public abstract void FireAt(Vector3 targetPosition);
}
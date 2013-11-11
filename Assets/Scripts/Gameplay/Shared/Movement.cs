using UnityEngine;
using System.Collections;

public abstract class Movement : MonoBehaviour
{
	public abstract void MoveTo(Vector3 position);
	public abstract void MoveTowards(Vector3 direction);
}
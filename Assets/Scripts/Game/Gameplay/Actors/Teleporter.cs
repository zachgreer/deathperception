using UnityEngine;
using System.Collections;

public class Teleporter : MonoBehaviour
{
	public Transform target;

	void OnTriggerEnter(Collider other)
	{
		other.transform.position = target.position;
	}
}
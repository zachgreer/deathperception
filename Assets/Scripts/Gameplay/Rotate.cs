using UnityEngine;
using System.Collections;

/// <summary>
/// Rotates an object around its local Y axis.
/// <summary>
public class Rotate : MonoBehaviour
{
	private void Awake()
	{
		transform = GetComponent<Transform>();
	}

	private void Update()
	{
		float rotation = degreesPerSecond * Time.deltaTime;
		transform.Rotate(0f, rotation, 0f);
	}

	[HideInInspector] new private Transform transform;

	[SerializeField] private float degreesPerSecond;
}
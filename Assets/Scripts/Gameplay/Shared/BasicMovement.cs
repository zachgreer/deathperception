using UnityEngine;
using System;
using System.Collections;

[AddComponentMenu ("Shared/BasicMovement")]
public class BasicMovement : Movement
{
	[SerializeField]
	private MovementConfig m_config;

	[HideInInspector]
	private Transform m_transform;

	const float k_moveToTolerance = 0.05f;

	public override void MoveTo(Vector3 position)
	{

	}

	public override void MoveTowards(Vector3 direction)
	{
		m_transform.Translate(Vector3.ClampMagnitude(direction, 1f) * m_config.speed * Time.deltaTime, Space.World);
	}

	void Awake()
	{
		m_transform = GetComponent<Transform>();
	}
}
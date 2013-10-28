using UnityEngine;
using System;
using System.Collections;

public class Movement : MonoBehaviour
{
	[SerializeField] MovementParameters m_parameters;
	[HideInInspector] bool m_movingTo;
	[HideInInspector] protected Vector3 m_direction;
	[HideInInspector] Transform m_transform;

	const float k_moveToTolerance = 0.05f;

	IEnumerator DoMoveTo(Vector3 position)
	{
		m_movingTo = true;
		while (m_movingTo)
		{
			Vector3 direction = position - m_transform.position;
			if (direction.magnitude <= k_moveToTolerance)
			{
				m_movingTo = false;
				yield break;
			}
			m_transform.Translate(direction.normalized * m_parameters.speed * Time.deltaTime);
			yield return null;
		}
	}

	public void MoveTo(Vector3 position)
	{
		StartCoroutine(DoMoveTo(position));
	}

	public virtual void MoveTowards(Vector3 direction)
	{
		m_direction = Vector3.ClampMagnitude(direction, 1f);
	}

	protected virtual void Awake()
	{
		m_movingTo = false;
	}

	protected virtual void Start()
	{
		m_transform = GetComponent<Transform>();
	}

	protected virtual void Update()
	{
		m_transform.Translate(m_direction * m_parameters.speed * Time.deltaTime, Space.World);
		m_direction = Vector3.zero;
	}
}
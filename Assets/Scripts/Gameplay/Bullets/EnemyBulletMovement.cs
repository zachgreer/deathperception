using UnityEngine;
using System;
using System.Collections;

public class EnemyBulletMovement : Movement
{
	[SerializeField] static float m_speed = 5;

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
			m_transform.Translate(direction.normalized * m_speed * Time.deltaTime);
			yield return null;
		}
	}
	
	public static void setSpeed(float sp){
		
		m_speed = sp;
	}
	
	public static float getSpeed(){
		return m_speed;
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
		m_transform.Translate(m_direction * m_speed * Time.deltaTime, Space.World);
		m_direction = Vector3.zero;
	}
}
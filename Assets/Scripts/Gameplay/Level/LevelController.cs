using UnityEngine;

[RequireComponent (typeof(Movement))]
public class LevelController : MonoBehaviour
{
	[HideInInspector] Movement m_movement;

	void Awake()
	{
		m_movement = GetComponent<Movement>();
	}

	void Update()
	{
		m_movement.MoveTowards(-Vector3.right);
	}
}
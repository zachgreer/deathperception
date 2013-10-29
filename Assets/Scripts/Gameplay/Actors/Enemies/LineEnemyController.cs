using UnityEngine;

public class LineEnemyController : MonoBehaviour
{
	[SerializeField] Ship m_ship;
	[SerializeField] Vector3 m_direction;

	void Update()
	{
		m_ship.MoveTowards(m_direction);
		m_ship.Fire();
	}
}
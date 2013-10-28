using UnityEngine;

public class LineEnemyController : Controller
{
	[SerializeField] Vector3 m_direction;

	void Update()
	{
		m_pawn.MoveTowards(m_direction);
	}
}
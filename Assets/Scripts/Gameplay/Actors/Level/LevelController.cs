using UnityEngine;

public class LevelController : Controller
{
	void Update()
	{
		m_pawn.MoveTowards(-transform.right);
	}
}
using UnityEngine;

public class PlayerController : Controller
{
	void Update()
	{
		if (Input.GetButtonDown("Fire1"))
		{
			m_pawn.Fire();
		}
		if (Input.GetButtonDown("Fire2"))
		{
			ZDrive.Instance.Switch();
		}
		m_pawn.MoveTowards(new Vector3(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"), 0f));
	}
}
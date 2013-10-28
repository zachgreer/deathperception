using UnityEngine;

public class BulletController : Controller {
	[HideInInspector] protected Transform m_transform;

	void Start()
	{
		m_transform = transform;
	}

	void Update()
	{
		m_pawn.MoveTowards(m_transform.forward);
	}
}
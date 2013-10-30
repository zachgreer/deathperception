using UnityEngine;

public class PlayerController : MonoBehaviour
{
	[HideInInspector] Pawn m_pawn;

	void Awake()
	{
		m_pawn = GetComponent<Pawn>();
	}

	void Update()
	{
		if (Input.GetButton("Fire1"))
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
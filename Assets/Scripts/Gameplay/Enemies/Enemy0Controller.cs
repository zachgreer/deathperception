using UnityEngine;

[RequireComponent (typeof(Pawn))]
public class Enemy0Controller : MonoBehaviour
{
	[HideInInspector] Pawn m_pawn;

	void Awake()
	{
		m_pawn = GetComponent<Pawn>();
	}

	void Update()
	{
		m_pawn.Fire();
	}
}
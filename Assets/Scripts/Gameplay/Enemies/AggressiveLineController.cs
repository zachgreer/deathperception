using UnityEngine;
using System.Collections;

public class AggressiveLineController : MonoBehaviour
{
	[SerializeField] Vector3 m_direction;
	[HideInInspector] Pawn m_pawn;

	void Awake()
	{
		m_pawn = GetComponent<Pawn>();
	}
	
	void Update ()
	{
		m_pawn.MoveTowards(m_direction);
		m_pawn.Fire();
	}
}
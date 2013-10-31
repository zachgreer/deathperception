using UnityEngine;

// Moves in a straight line and never fires its cannon.
[RequireComponent (typeof(Pawn))]
public class PassiveLineController : MonoBehaviour
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
	}
}
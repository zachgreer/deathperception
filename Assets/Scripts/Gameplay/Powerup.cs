using UnityEngine;

public class Powerup : MonoBehaviour
{
	public enum Types
	{
		RapidFire,
		TripleShot
	}

	[SerializeField]
	private Types m_type;

	public Types Type
	{
		get
		{
			return m_type;
		}
	}
}
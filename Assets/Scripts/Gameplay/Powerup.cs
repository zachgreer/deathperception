using UnityEngine;

[AddComponentMenu ("Powerup/Powerup")]
[RequireComponent (typeof(Multicollider))]
public class Powerup : MonoBehaviour
{
	public enum Types
	{
		RapidFire,
		TripleShot
	}

	[SerializeField] private Types m_type;

	[HideInInspector] private Multicollider m_multicollider;

	public Types Type
	{
		get
		{
			return m_type;
		}
	}

	private void Switched()
	{
		m_multicollider.Toggle();
	}

	void Awake()
	{
		m_multicollider = GetComponent<Multicollider>();
	}

	void Start()
	{
		ZDrive.Instance.Switched += Switched;
	}

	void OnTriggerEnter(Collider other)
	{
		// Emit particles
		// Play sound
		Destroy(gameObject);
	}
}
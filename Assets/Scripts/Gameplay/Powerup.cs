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
	
	[SerializeField] private GameObject pickupEffect;

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
		if(other.tag == "Player"){
			Instantiate(pickupEffect, transform.position, Quaternion.identity);
			// Play sound
			Destroy(gameObject);
		}
	}
	
	void OnDestroy()
	{
		ZDrive zdrive = ZDrive.Instance;	
		if (zdrive != null)
			ZDrive.Instance.Switched -= Switched;
	}
}
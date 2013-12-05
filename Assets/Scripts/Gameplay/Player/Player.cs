using UnityEngine;
using System.Collections;

[AddComponentMenu ("Player/Player")]
[RequireComponent (typeof(Multicollider))]
[RequireComponent (typeof(Health))]
[RequireComponent (typeof(PlayerMovement))]
public class Player : MonoBehaviour
{
	[SerializeField] private CannonConfig m_singleShotConfig;
	[SerializeField] private CannonConfig m_singleShotRapidFireConfig;
	[SerializeField] private TripleShotConfig m_tripleShotConfig;
	[SerializeField] private TripleShotConfig m_tripleShotRapidFireConfig;

	[HideInInspector] private Multicollider m_multicollider;
	[HideInInspector] private Health m_health;
	[HideInInspector] private Movement m_movement;
	[HideInInspector] private SingleShot m_singleShot;
	[HideInInspector] private TripleShot m_tripleShot;
	
	[SerializeField] private GameObject threeDee;

	[HideInInspector] private Cannon m_cannon;
	
	public AudioClip dieSound;
	public float dieVolume = 0.5f;

	private void Died()
	{
		Score.clearCombo();
		SoundDie();
		gameObject.SetActive(false);
		
	}
	
	public IEnumerator Blink(float blinkTime){
	
		float endTime = Time.time + blinkTime;
		while(Time.time < endTime){
			
			threeDee.renderer.enabled=false;
			yield return new WaitForSeconds(.1f);
			threeDee.renderer.enabled = true;
			yield return new WaitForSeconds(.1f);
			
		}
	
	}

	private void Switched()
	{
		m_multicollider.Toggle();
	}

	public void Fire()
	{
		m_cannon.Fire();
	}

	public void MoveTowards(Vector3 direction)
	{
		m_movement.MoveTowards(direction);
	}

	public void ResetPowerups()
	{
		m_singleShot.Config = m_singleShotConfig;
		m_tripleShot.Config = m_tripleShotConfig;
		m_cannon = m_singleShot;
	}

	void Awake()
	{
		m_multicollider = GetComponent<Multicollider>();
		m_health = GetComponent<Health>();
		m_movement = GetComponent<Movement>();
		m_singleShot = GetComponentInChildren<SingleShot>();
		m_tripleShot = GetComponentInChildren<TripleShot>();
		m_cannon = m_singleShot;
	}

	void Start()
	{
		ObjectStack bulletStack = GameObject.Find("PlayerBulletStack").GetComponent<ObjectStack>();
		Cannon[] cannons = GetComponentsInChildren<Cannon>(true);
		int ncannons = cannons.Length;
		for (int i = 0; i < ncannons; i++)
		{
			cannons[i].BulletStack = bulletStack;
		}

		m_health.Died += Died;
		ZDrive.Instance.Switched += Switched;
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.tag == "Powerup")
		{
			Powerup powerup = other.attachedRigidbody.GetComponent<Powerup>();
			switch(powerup.Type)
			{
				case Powerup.Types.RapidFire:
				{
					m_singleShot.Config = m_singleShotRapidFireConfig;
					m_tripleShot.Config = m_tripleShotRapidFireConfig;
					break;
				}
				case Powerup.Types.TripleShot:
				{
					m_cannon = m_tripleShot;
					break;
				}
				default:
					break;
			}
		}
		
		else if(other.tag != "Finish")
		{
			m_health.Subtract(100);
		}
	}
	
	void SoundDie(){
		//audio.PlayOneShot(dieSound[Random.Range(0, (dieSound.Length)-1)], dieVolume);
		Vector3 currentSpot = transform.position;
		//Debug.Log(currentSpot);
		AudioSource.PlayClipAtPoint(dieSound, currentSpot,dieVolume);
}
}
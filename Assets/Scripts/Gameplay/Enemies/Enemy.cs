using UnityEngine;
using System.Collections;

/// <summary>
/// AI component for enemies.
/// </summary>
[AddComponentMenu ("Enemy/Enemy")]
public class Enemy : MonoBehaviour
{
	private void Died()
	{
		Score.addScore(config.points);
		SoundDie();
		Destroy(gameObject);
	}

	private void Switching()
	{
		iTween.Pause(gameObject);
	}

	private void Switched()
	{
		iTween.Resume(gameObject);
		multicollider.Toggle();
	}

	private IEnumerator FireRepeating()
	{
		while (true)
		{
			yield return new WaitForSeconds(config.fireRate);
			if (config.aimAtPlayer)
				cannon.FireAt(player.position);
			else
				cannon.Fire();
			SoundEnemyFire();
		}
	}

	private IEnumerator FadeOut()
	{
		for (float timer = fadeTime; timer > 0f; timer -= Time.deltaTime)
		{
			material.SetFloat("_Alpha", timer);
			yield return null;
		}
	}

	void Awake()
	{
		health = GetComponent<Health>();
		cannon = GetComponentInChildren<Cannon>();
		multicollider = GetComponent<Multicollider>();
		material = GetComponentInChildren<Renderer>().material;
		transform = GetComponent<Transform>();

		health.Died += Died;

		insideBarrier = false;

		if (config.aimAtPlayer)
		{
			player = GameObject.FindWithTag("Player").GetComponent<Transform>();
		}
	}

	void Start()
	{
		ZDrive.Instance.Switching += Switching;
		ZDrive.Instance.Switched += Switched;

		if (ZDrive.Instance.IsOrtho == false)
		{
			multicollider.Toggle();
		}
	}

	void Update()
	{
		flash = Mathf.Clamp(flash - Time.deltaTime / flashDuration, 0f, 1f);
		material.SetFloat("_Whiteness", flash);

		if (config.aimAtPlayer && fireTask != null)
		{
			if (!fireTask.IsPaused && transform.position.x - player.position.x < 0)
				fireTask.Pause();
			if (fireTask.IsPaused && transform.position.x - player.position.x > 0)
				fireTask.Resume();			
		}
	}

	void OnDestroy()
	{
		if (health.HealthPoints > 0)
			Score.clearCombo();

		ZDrive zdrive = ZDrive.Instance;
		if (zdrive != null)
		{
			ZDrive.Instance.Switching -= Switching;
			ZDrive.Instance.Switched -= Switched;
		}

		if (fireTask != null && fireTask.IsRunning)
			fireTask.Stop();
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.tag == "Player")
		{
			health.Subtract(10);
		}
		if (other.tag == "Bullet")
		{
			health.Subtract(1);
			flash = 0.80f;
		}
		if (other.tag == "Barrier" && insideBarrier)
		{
			insideBarrier = false;
			fireTask.Stop();
		}
		if (other.tag == "FadeBox")
		{
			new Task(FadeOut());
		}
	}

	void OnTriggerExit(Collider other)
	{
		if (other.tag == "Barrier" && !insideBarrier)
		{
			insideBarrier = true;
			fireTask = new Task(FireRepeating());
		}
	}
	void SoundDie()
	{
		Vector3 currentSpot = transform.position;
		AudioSource.PlayClipAtPoint(dieSound, currentSpot,dieVolume);
	}
	
	void SoundEnemyFire()
	{
		audio.PlayOneShot(fireSound, fireVolume);
	}

	[SerializeField] private EnemyConfig config;

	[SerializeField] private AudioClip dieSound;
	[SerializeField] private float dieVolume = 0.5f;
	
	[SerializeField] private AudioClip fireSound;
	[SerializeField] private float fireVolume = 0.5f;

	[HideInInspector] private Health health;
	[HideInInspector] private Cannon cannon;
	[HideInInspector] private Multicollider multicollider;
	[HideInInspector] new private Transform transform;
	[HideInInspector] private Transform player;
	[HideInInspector] private Material material;

	[HideInInspector] private Task fireTask;

	[HideInInspector] private bool insideBarrier;

	private const float flashDuration = 0.25f;
	private const float fadeTime = 0.50f;

	private float flash;
}
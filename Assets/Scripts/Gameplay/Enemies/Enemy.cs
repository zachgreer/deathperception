using UnityEngine;
using System.Collections;

[AddComponentMenu ("Enemy/Enemy")]
public class Enemy : MonoBehaviour
{
	[SerializeField]
	private EnemyConfig m_config;

	[HideInInspector]
	private Health m_health;

	[HideInInspector]
	private Cannon m_cannon;

	[HideInInspector]
	private Multicollider m_multicollider;

	[HideInInspector]
	private Transform m_player;

	void Died()
	{
		Score.addScore(m_config.points);
		Destroy(gameObject);
	}

	void Switching()
	{
		iTween.Pause(gameObject);
	}

	void Switched()
	{
		iTween.Resume(gameObject);
		m_multicollider.Toggle();
	}

	private IEnumerator FireRepeating()
	{
		while (true)
		{
			yield return new WaitForSeconds(m_config.fireRate);
			if (m_config.aimAtPlayer)
			{
				m_cannon.FireAt(m_player.position);
			}
			else
			{
				m_cannon.Fire();
			}
		}
	}

	void Awake()
	{
		m_health = GetComponent<Health>();
		m_cannon = GetComponentInChildren<Cannon>();
		m_multicollider = GetComponent<Multicollider>();

		m_health.Died += Died;

		if (m_config.aimAtPlayer)
		{
			m_player = GameObject.FindWithTag("Player").GetComponent<Transform>();
		}
	}

	void Start()
	{
		ZDrive.Instance.Switching += Switching;
		ZDrive.Instance.Switched += Switched;

		if (ZDrive.Instance.IsOrtho == false)
		{
			m_multicollider.Toggle();
		}
	}

	void OnDestroy()
	{
		if (m_health.HealthPoints > 0)
		{
			Score.clearCombo();
		}
		if (ZDrive.Instance != null)
		{
			ZDrive.Instance.Switching -= Switching;
			ZDrive.Instance.Switched -= Switched;
		}
	}

	void OnApplicationQuit()
	{
		ZDrive.Instance.Switching -= Switching;
		ZDrive.Instance.Switched -= Switched;
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.tag == "Player")
		{
			m_health.Subtract(10);
		}
		if (other.tag == "Bullet")
		{
			m_health.Subtract(1);
		}
	}
}
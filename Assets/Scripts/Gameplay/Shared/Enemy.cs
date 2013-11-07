using UnityEngine;
using System.Collections;

public class Enemy : MonoBehaviour
{
	[SerializeField] private EnemyConfig m_config;

	[HideInInspector] private Health m_health;
	[HideInInspector] private Cannon m_cannon;
	[HideInInspector] private Multicollider m_multicollider;

	void Died()
	{
		Score.addScore(m_config.points);

		gameObject.SetActive(false);
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
			m_cannon.Fire();
		}
	}

	void Awake()
	{
		m_health = GetComponent<Health>();
		m_cannon = GetComponentInChildren<Cannon>();
		m_multicollider = GetComponent<Multicollider>();

		m_health.Died += Died;

		ZDrive.Instance.Switching += Switching;
		ZDrive.Instance.Switched += Switched;

		if (ZDrive.Instance.IsOrtho() == false)
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
}
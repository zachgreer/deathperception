﻿using UnityEngine;
using System.Collections;

[AddComponentMenu ("Enemy/Enemy")]
public class Enemy : MonoBehaviour
{
	private void Died()
	{
		Score.addScore(m_config.points);
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
			SoundEnemyFire();
		}
	}

	void Awake()
	{
		m_health = GetComponent<Health>();
		m_cannon = GetComponentInChildren<Cannon>();
		m_multicollider = GetComponent<Multicollider>();
		m_material = GetComponentInChildren<Renderer>().material;

		m_health.Died += Died;

		m_insideBarrier = false;

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

	void Update()
	{
		m_flash = Mathf.Clamp(m_flash - Time.deltaTime / kFlashDuration, 0f, 1f);
		m_material.SetFloat("_Whiteness", m_flash);
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
			m_flash = 0.80f;
		}
		if (other.tag == "Barrier" && m_insideBarrier)
		{
			m_insideBarrier = false;
			StopAllCoroutines();
		}
	}

	void OnTriggerExit(Collider other)
	{
		if (other.tag == "Barrier" && !m_insideBarrier)
		{
			m_insideBarrier = true;
			StartCoroutine(FireRepeating());
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

	[SerializeField] private EnemyConfig m_config;

	[SerializeField] private AudioClip dieSound;
	[SerializeField] private float dieVolume = 0.5f;
	
	[SerializeField] private AudioClip fireSound;
	[SerializeField] private float fireVolume = 0.5f;

	[HideInInspector] private Health m_health;
	[HideInInspector] private Cannon m_cannon;
	[HideInInspector] private Multicollider m_multicollider;
	[HideInInspector] private Transform m_player;
	[HideInInspector] private Material m_material;

	[HideInInspector] private bool m_insideBarrier;

	private const float kFlashDuration = 0.25f;

	private float m_flash;
}
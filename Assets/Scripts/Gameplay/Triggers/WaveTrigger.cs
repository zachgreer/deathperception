using UnityEngine;
using System.Collections.Generic;

// Awakens a wave of sleeping enemies when it collides with the Barrier.
public class WaveTrigger : MonoBehaviour
{
	[SerializeField] GameObject m_wave;

	void Start()
	{
		// Enemies must be active upon scene load or their Awake will not be called.
		m_wave.SetActive(false);
	}

	void OnTriggerEnter()
	{
		m_wave.SetActive(true);
	}
}
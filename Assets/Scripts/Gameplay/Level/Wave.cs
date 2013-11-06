using UnityEngine;
using System;

[Serializable]
public class Wave
{
	[HideInInspector] private float m_time;
	[HideInInspector] private GameObject m_prefab;

	public Wave(float time, GameObject prefab)
	{
		m_time = time;
		m_prefab = prefab;
	}

	public float Time
	{
		get
		{
			return m_time;
		}
	}

	public GameObject Prefab
	{
		get
		{
			return m_prefab;
		}
	}
}
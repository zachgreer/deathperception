using UnityEngine;
using System;

[Serializable]
public class Wave
{
	public Wave(float time, int difficulty, GameObject prefab)
	{
		this.time = time;
		this.difficulty = difficulty;
		this.prefab = prefab;
	}

	public float Time
	{
		get { return time; }
	}

	public int Difficulty
	{
		get { return difficulty; }
	}

	public GameObject Prefab
	{
		get { return prefab; }
	}

	[HideInInspector] private float time;
	[HideInInspector] private int difficulty;
	[HideInInspector] private GameObject prefab;
}
using UnityEngine;
using System;
using System.Collections.Generic;

[Serializable]
public class Level
{
	[HideInInspector] private Queue<Wave> m_waves;

	public Level(Queue<Wave> waves)
	{
		m_waves = waves;
	}

	public int WavesRemaining
	{
		get
		{
			return m_waves.Count;
		}
	}

	public bool HasWavesRemaining
	{
		get
		{
			if (m_waves.Count > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
	}

	public Wave NextWave
	{
		get
		{
			if (m_waves.Count > 0)
			{
				return m_waves.Dequeue();
			}
			else
			{
				return null;
			}
		}
	}
}
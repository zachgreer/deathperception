using UnityEngine;
using System.Collections.Generic;

[AddComponentMenu ("Gameplay/LevelController")]
public class LevelController : MonoBehaviour
{
	[HideInInspector] private List<string> m_levelFileNames;
	[HideInInspector] private Level m_currentLevel;
	[HideInInspector] private Wave m_currentWave;
	[HideInInspector] private float m_time;

	private const string k_levelInfoFileName = "LevelData/Levels";

	void Awake()
	{
		m_levelFileNames = LevelLoader.LoadLevelFileNames(k_levelInfoFileName);
		m_currentLevel = LevelLoader.LoadLevel(m_levelFileNames[0]);
		m_time = 0f;
	}

	void Start()
	{
		if (m_currentLevel.HasWavesRemaining)
		{
			m_currentWave = m_currentLevel.NextWave;
		}
	}

	void Update()
	{
		m_time += Time.deltaTime;
		if (m_currentWave != null && m_time > m_currentWave.Time)
		{
			GameObject.Instantiate(m_currentWave.Prefab);
			m_currentWave = null;
			if (m_currentLevel.HasWavesRemaining)
			{
				m_currentWave = m_currentLevel.NextWave;
			}
		}
	}
}
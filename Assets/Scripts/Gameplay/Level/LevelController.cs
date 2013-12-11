using UnityEngine;
using System.Collections.Generic;

[AddComponentMenu ("Gameplay/LevelController")]
public class LevelController : MonoBehaviour
{
	public int Difficulty
	{
		get { return difficulty; }
		set { difficulty = Mathf.Clamp(value, 1, 3); }
	}

	void Awake()
	{
		levelFileNames = LevelLoader.LoadLevelFileNames(levelInfoFilePath);
		currentLevel = LevelLoader.LoadLevel(levelFileNames[0]);
		time = 0f;
		int diff = PlayerPrefs.GetInt ("Diff");
		if( diff == 0){
		difficulty = 2; // defaults to normal mode
		}else{
		difficulty = diff;
		}
	}

	void Start()
	{
		if (currentLevel.HasWavesRemaining)
		{
			currentWave = currentLevel.NextWave;
		}
	}

	void Update()
	{
		time += Time.deltaTime;
		if (currentWave != null && time > currentWave.Time)
		{
			if (currentWave.Difficulty <= difficulty)
				GameObject.Instantiate(currentWave.Prefab);
			currentWave = null;
			if (currentLevel.HasWavesRemaining)
				currentWave = currentLevel.NextWave;
		}
	}

	[HideInInspector] private List<string> levelFileNames;
	[HideInInspector] private Level currentLevel;
	[HideInInspector] private Wave currentWave;
	[HideInInspector] private float time;
	[HideInInspector] private int difficulty; // Range [1, 3]


	private const string levelInfoFilePath = "LevelData/Levels";
}
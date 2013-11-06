using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using System.IO;

public static class WaveLoader
{
	public static Queue<Wave> LoadWaves(string fileName)
	{
		Queue<Wave> waves = new Queue<Wave>();

		TextAsset levelAsset = Resources.Load("LevelData/" + fileName) as TextAsset;
		if (levelAsset == null)
		{
			Debug.LogError("Level file \"" + fileName + "\" could not be found.");
			Debug.Break();
		}

		XmlDocument doc = new XmlDocument();
		doc.LoadXml(levelAsset.text);
		XmlNodeList waveNodes = doc.GetElementsByTagName("wave");

		foreach (XmlNode waveNode in waveNodes)
		{
			float time = float.Parse(waveNode.Attributes["t"].Value);
			GameObject prefab = Resources.Load("Waves/" + waveNode.Attributes["prefab"].Value) as GameObject;
			waves.Enqueue(new Wave(time, prefab));
		}

		return waves;
	}
}
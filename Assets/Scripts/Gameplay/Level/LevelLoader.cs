using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using System.IO;

public static class LevelLoader
{
	public static List<string> LoadLevelFileNames(string fileName)
	{
		List<string> fileNames = new List<string>();

		TextAsset levelsAsset = Resources.Load(fileName) as TextAsset;
		if (levelsAsset == null)
		{
			Debug.LogError("No levels file was specified!");
			Debug.Break();
		}

		XmlDocument doc = new XmlDocument();
		doc.LoadXml(levelsAsset.text);
		XmlNodeList levelNodes = doc.GetElementsByTagName("level");

		foreach (XmlNode levelNode in levelNodes)
		{
			string levelFileName = levelNode.Attributes["filename"].Value;
			fileNames.Add(levelFileName);
		}

		return fileNames;
	}

	public static Level LoadLevel(string fileName)
	{
		return new Level(WaveLoader.LoadWaves(fileName));
	}
}
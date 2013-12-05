using UnityEngine;
using System.Collections;

public class LevelEnder : MonoBehaviour {
	
	private bool levelOver = false;
	
	
	
	void OnTriggerEnter(Collider other)
	{
		if (other.tag == "Player")
		{
			levelOver = true;
			Time.timeScale = 0;
		}
	
	}
	
	void OnGUI(){
	
		if(levelOver){
			GUI.Box(new Rect(480,250,140,200), "You Win!");
			GUI.Label(new Rect(500,300,100,25), "Score: "+Score.getScore());
			if (GUI.Button (new Rect (500,350,100,25), "Retry")) {
				Application.LoadLevel (1);
				Time.timeScale = 1;
			}
			if (GUI.Button (new Rect (500,375,100,25), "Main Menu")) {
				Application.LoadLevel (0);
				Time.timeScale = 1;
			}
		}
		
	}
}

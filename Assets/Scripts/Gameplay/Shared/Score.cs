using UnityEngine;
using System.Collections;

public class Score : MonoBehaviour {
	
	private static int gameScore;
	private static int combo;
	public static string textScore;
	public static string textCombo;
	
	void Start () {
		
	gameScore = 0;
	combo = 0;
		
	textCombo= ""+combo;
	textScore= ""+gameScore;
	
	}
	
	public static void addScore(int s){
		
	combo++;	
	gameScore += s*combo;
	
	textCombo = ""+combo;
	textScore = ""+gameScore;
	
		
	}
	
	public static void clearCombo(){
	
	combo = 0;
	textCombo = ""+combo;
	
		
	}
	
	void OnGUI () {
		GUI.Label (new Rect (25, 25, 100, 30), "Score: " + textScore);
		GUI.Label (new Rect (25, 50, 100, 30), "Combo: " + textCombo);
	}
	
	
}

using UnityEngine;
using System.Collections;



public class DebugGui : MonoBehaviour {

public bool isOpened = false;
public ZDrive Zscript;
public PlayerMovement moveScript;

	
	
	// Use this for initialization
	void Start () {
	
		
		
	}
	
	// Update is called once per frame
	void Update () {
	
		if(Input.GetKeyDown(KeyCode.BackQuote) && isOpened == false){
	
		isOpened = true;
		Time.timeScale = 0;
		
		//Pause the game
	
		}
		else if(Input.GetKeyDown(KeyCode.BackQuote)){
	
		isOpened = false;
		Time.timeScale = 1;
		//Unpause the game
	
		}
		
	}
	
	void OnGUI(){
		
		if(isOpened){
	
			if(GUI.Button(new Rect(100,100,50,50),"Leave")){
			
			isOpened = false;
			Time.timeScale = 1;
			//Unpause
			
			}
				
			
			//cooldown
				
			GUI.Box(new Rect(150,0,150,25), "Perspective Cooldown");	
			Zscript.setCoolDown(GUI.HorizontalSlider((new Rect(150,25,100,25)),Zscript.getCoolDown(),0,15));
			
			//speed of ship
			
			GUI.Box(new Rect(150,50,150,25), "Ship Speed");	
			moveScript.setSpeed(GUI.HorizontalSlider((new Rect(150,75,100,25)),moveScript.getSpeed(),0,25));
			
			
			
			//Enemy bullet speed
			
			
			GUI.Box(new Rect(150,100,150,25), "Enemy Bullet Speed");	
			EnemyBulletMovement.setSpeed(GUI.HorizontalSlider((new Rect(150,125,100,25)),EnemyBulletMovement.getSpeed(),0,50));
	
			//Player Bullet Speed
			
			GUI.Box(new Rect(150,150,150,25), "Player Bullet Speed");	
			PlayerBulletMovement.setSpeed(GUI.HorizontalSlider((new Rect(150,175,100,25)),PlayerBulletMovement.getSpeed(),0,50));
			
			
	
		}

		
	}
}
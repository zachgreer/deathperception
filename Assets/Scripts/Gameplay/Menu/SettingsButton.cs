using UnityEngine;
using System.Collections;

public class SettingsButton : MonoBehaviour {
	
	public Texture SettingsMenu;
	public GameObject MenuPlane;
	private bool isSettings;
	public GameObject Check1;
	public GameObject Check2;
	public GameObject Check3;
	public GameObject But1;
	public GameObject But2;
	
	void OnMouseDown(){
		
		if(!isSettings){
			
		MenuPlane.renderer.material.SetTexture("_MainTex",SettingsMenu);
		isSettings = true;
		Check1.collider.enabled = true;
		Check2.collider.enabled = true;
		Check3.collider.enabled = true;
		But1.collider.enabled = false;
		But2.collider.enabled = false;
		
		}
		
	}
}

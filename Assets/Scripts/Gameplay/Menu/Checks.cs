using UnityEngine;
using System.Collections;

public class Checks : MonoBehaviour {
	
	public int Diff;
	void OnMouseDown(){
		
		this.gameObject.renderer.enabled = true;
		PlayerPrefs.SetInt("Diff", Diff);
		Application.LoadLevel (1);
		
	}
	
	
	
}

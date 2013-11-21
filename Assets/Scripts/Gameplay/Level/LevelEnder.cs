using UnityEngine;
using System.Collections;

public class LevelEnder : MonoBehaviour {

	void OnTriggerEnter(Collider other)
	{
		if (other.tag == "Player")
		{
			//call level end
		}
	
	}
}

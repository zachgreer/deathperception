using UnityEngine;

public class ResetLevel : MonoBehaviour
{
	void OnTriggerEnter()
	{
		Application.LoadLevel(Application.loadedLevel);
	}
}
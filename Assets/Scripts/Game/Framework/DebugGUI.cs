using UnityEngine;
using System.Collections;

public class DebugGUI : MonoBehaviour {
	bool opened;
	[SerializeField] ZDrive zdrive;
	[SerializeField] PlayerMovement playerMovement;

	void Awake()
	{
		opened = false;
	}

	void Update()
	{
		if (Input.GetKeyDown(KeyCode.BackQuote))
		{
			GameManager.Instance.TogglePause();
			opened = !opened;
		}
	}

	void OnGUI()
	{
		if (opened)
		{
			if (GUI.Button(new Rect(100, 5, 60, 25), "Resume"))
			{
				opened = false;
				GameManager.Instance.TogglePause();
			}

			GUI.Box(new Rect(165, 5, 150, 25), "Switch Cooldown");
			zdrive.coolDown = GUI.HorizontalSlider((new Rect(185, 30, 100, 25)), zdrive.coolDown, 0, 50);
		
			GUI.Box(new Rect(320, 5, 150, 25), "Player Speed");
			playerMovement.horizontalSpeed = GUI.HorizontalSlider((new Rect(350, 30, 100, 25)), playerMovement.horizontalSpeed, 0, 25);
			playerMovement.verticalSpeed = GUI.HorizontalSlider((new Rect(350, 45, 100, 25)), playerMovement.verticalSpeed, 0, 25);

			GUI.Box(new Rect(475, 5, 150, 25), "Bullet Speed");
			BulletMovement.horizontalSpeed = GUI.HorizontalSlider((new Rect(500, 30, 100, 25)), BulletMovement.horizontalSpeed, 0, 50);
			BulletMovement.verticalSpeed = BulletMovement.horizontalSpeed;
		}
	}
}
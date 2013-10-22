using UnityEngine;
using System.Collections;

// Commands the referenced camera to switch views/perspectives.
public class ZDrive : MonoBehaviour {
	public float coolDown;
	public ViewSwitch viewSwitch;

	public delegate void TogglePauseDelegate();
	public TogglePauseDelegate togglePause;

	bool onCooldown;

	IEnumerator DoCooldown() {
		yield return new WaitForSeconds(coolDown);
		onCooldown = false;
	}

	public void Switch() {
		if (!onCooldown) {
			togglePause();
			onCooldown = true;
			StartCoroutine(DoCooldown());
			viewSwitch.Switch();
		}
	}

	void Awake() {
		onCooldown = false;
	}
}
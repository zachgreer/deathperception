using UnityEngine;
using System.Collections;

public class Bullet : MonoBehaviour {
	void Start() {
		GameManager.Instance.RegisterBullet(gameObject);
	}

	void OnDestroy() {
		GameManager.Instance.UnregisterBullet(gameObject);
	}

	void OnTriggerExit(Collider other) {
		Destroy(gameObject);
	}
}
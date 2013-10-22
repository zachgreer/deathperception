using UnityEngine;
using System.Collections;

public class Health : MonoBehaviour {
	[SerializeField]
	public float health;

	public void TakeDamage(float damage) {
		health -= damage;
	}
}
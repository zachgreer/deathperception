using UnityEngine;

public class Bullet : MonoBehaviour
{
	void ReturnToPool()
	{
		transform.parent.GetComponent<ObjectPool>().Return(gameObject);
	}

	void Died(GameObject dead)
	{
		ReturnToPool();
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.tag != "Field")
		{
			Health otherHealth = other.GetComponent<Health>();
			if (otherHealth != null)
			{
				otherHealth.Subtract(1);
			}
			Died(null);
		}
	}

	void OnTriggerExit(Collider other)
	{
		if (other.tag == "Field")
		{
			Died(null);
		}
	}
}
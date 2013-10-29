using UnityEngine;

public class NBullet : MonoBehaviour
{
	[HideInInspector] Transform m_transform;
	static int s_speed = 16;
	public Vector3 direction;

	void Switching()
	{
		enabled = false;
	}

	void Switched()
	{
		enabled = true;

	}

	void Awake()
	{
		m_transform = transform;
		ZDrive.Instance.Switching += Switching;
		ZDrive.Instance.Switched += Switched;
	}

	void Update()
	{
		m_transform.Translate(direction * s_speed * Time.deltaTime);
	}

	void OnTriggerEnter()
	{
		m_transform.parent.GetComponent<ObjectPool>().Return(gameObject);
	}
}
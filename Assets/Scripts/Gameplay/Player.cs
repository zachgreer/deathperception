using UnityEngine;

public class Player : SingletonBehaviour<Player>
{
	[HideInInspector] Transform m_transform;
	[SerializeField] float m_speed;
	[SerializeField] int m_lives;
	[SerializeField] float m_horizontalLimit;
	[SerializeField] float m_verticalLimit;
	[SerializeField] float m_fireRate;
	[HideInInspector] float m_nextFire;
	[HideInInspector] bool m_2dMode;
	[SerializeField] ObjectPool m_bulletPool;
	[SerializeField] Transform m_cannonTransform;
	[SerializeField] Transform m_crosshairTransform;
	[SerializeField] float m_horizontalCrosshairLimit;
	[SerializeField] float m_verticalCrosshairLimit;

	void Switching()
	{
		enabled = false;
	}

	void Switched()
	{
		enabled = true;
		m_2dMode = !m_2dMode;
	}

	void Awake()
	{
		m_transform = transform;
		m_2dMode = true;
		ZDrive.Instance.Switching += Switching;
		ZDrive.Instance.Switched += Switched;
	}

	void Update()
	{
		// Movement
		float horizontalMove = Input.GetAxis("Horizontal") * m_speed * Time.deltaTime;
		float verticalMove = Input.GetAxis("Vertical") * m_speed * Time.deltaTime;
		Vector3 move;
		if (m_2dMode)
		{
			move = new Vector3(horizontalMove, verticalMove, 0);
		}
		else
		{
			move = new Vector3(0, verticalMove, -horizontalMove);
		}
		move = Vector3.ClampMagnitude(move, m_speed * Time.deltaTime);
		m_transform.Translate(move);

		// Restrict her movement to the screen
		m_transform.position = new Vector3(Mathf.Clamp(m_transform.position.x, -m_horizontalLimit, m_horizontalLimit), Mathf.Clamp(m_transform.position.y, -m_verticalLimit, m_verticalLimit), Mathf.Clamp(m_transform.position.z, -m_horizontalLimit, m_horizontalLimit));

		// Rotation
		Vector3 crossHairLocalPos = m_crosshairTransform.localPosition;
		if (!m_2dMode)
		{
			crossHairLocalPos.z = -Input.GetAxis("Horizontal") * m_horizontalCrosshairLimit;
			crossHairLocalPos.y = Input.GetAxis("Vertical") * m_verticalCrosshairLimit;
		}
		else
		{
			crossHairLocalPos.z = 0;
			crossHairLocalPos.y = 0;
		}
		m_crosshairTransform.localPosition = crossHairLocalPos;
		m_cannonTransform.LookAt(m_crosshairTransform);

		if (Input.GetButton("Fire1") && Time.time > m_nextFire)
		{
			m_nextFire = Time.time + m_fireRate;
			GameObject bullet = m_bulletPool.Retrieve();
			if (bullet != null)
			{
				bullet.transform.position = m_cannonTransform.position;
				bullet.GetComponent<NBullet>().direction = m_cannonTransform.forward;
			}

		}
		if (Input.GetButton("Fire2"))
		{
			ZDrive.Instance.Switch();
		}
	}

	void OnTriggerEnter()
	{
		// No matter what we hit, we die.
		gameObject.SetActive(false);
		m_lives--;
	}
}
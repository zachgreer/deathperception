using UnityEngine;

public class PlayerMovement : Movement
{
	[SerializeField]
	private PlayerMovementConfig m_config;

	[HideInInspector]
	private Transform m_transform;

	[HideInInspector]
	private bool m_in3dMode;

	void Switched()
	{
		m_in3dMode = !m_in3dMode;
	}

	public override void MoveTo(Vector3 position)
	{

	}

	public override void MoveTowards(Vector3 direction)
	{
		Vector3 fixedDirection = Vector3.ClampMagnitude(direction, 1f);
		if (m_in3dMode)
		{
			fixedDirection.z = -fixedDirection.x;
			if(m_transform.position.x > -6){
				
				fixedDirection.x = -2f;
				
			}
			else{
				
				fixedDirection.x = 0f;
				
			}
		}
		m_transform.Translate(fixedDirection * m_config.speed * Time.deltaTime, Space.World);
		m_transform.position = new Vector3(Mathf.Clamp(m_transform.position.x, -m_config.horizontalLimit, m_config.horizontalLimit), Mathf.Clamp(m_transform.position.y, -m_config.verticalLimit, m_config.verticalLimit), Mathf.Clamp(m_transform.position.z, -m_config.horizontalLimit, m_config.horizontalLimit));
	}

	void Awake()
	{
		m_transform = GetComponent<Transform>();
		m_in3dMode = false;
	}

	void Start()
	{
		ZDrive.Instance.Switched += new ZDrive.SwitchedEventHandler(Switched);
	}
}
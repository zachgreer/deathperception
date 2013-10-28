using UnityEngine;

public class PlayerMovement : Movement
{
	[HideInInspector] bool m_in3dMode;

	void Switched()
	{
		m_in3dMode = !m_in3dMode;
	}

	public override void MoveTowards(Vector3 direction)
	{
		m_direction = Vector3.ClampMagnitude(direction, 1f);
		if (m_in3dMode)
		{
			m_direction.z = -m_direction.x;
			m_direction.x = 0f;
		}
	}

	protected override void Awake()
	{
		base.Awake();
		m_in3dMode = false;
	}

	protected override void Start()
	{
		base.Start();
		ZDrive.Instance.Switched += new ZDrive.SwitchedEventHandler(Switched);
	}

	protected override void Update()
	{
		base.Update();
	}
}
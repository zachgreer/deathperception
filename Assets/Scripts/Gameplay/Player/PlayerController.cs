using UnityEngine;

[AddComponentMenu ("Player/PlayerController")]
[RequireComponent (typeof(Player))]
public class PlayerController : MonoBehaviour
{
	[HideInInspector] private Player m_player;

	[HideInInspector] private bool m_frozen;

	private void Switching()
	{
		enabled = false;
	}

	private void Switched()
	{
		enabled = true;
	}

	void Awake()
	{
		m_player = GetComponent<Player>();
	}

	void Start()
	{
		ZDrive.Instance.Switching += Switching;
		ZDrive.Instance.Switched += Switched;
	}

	void Update()
	{
		if (Input.GetButton("Fire1"))
		{
			m_player.Fire();
		}
		if (Input.GetButtonDown("Fire2"))
		{
			ZDrive.Instance.Switch();
		}
		m_player.MoveTowards(new Vector3(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"), 0f));
	}
}
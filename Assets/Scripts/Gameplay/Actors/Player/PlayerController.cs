using UnityEngine;

public class PlayerController : MonoBehaviour
{
	[SerializeField] Ship m_ship;

	void Update()
	{
		if (Input.GetButton("Fire1"))
		{
			m_ship.Fire();
		}
		if (Input.GetButtonDown("Fire2"))
		{
			ZDrive.Instance.Switch();
		}
		m_ship.MoveTowards(new Vector3(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"), 0f));
	}
}
using UnityEngine;
using System.Collections;

[RequireComponent (typeof(ViewSwitch))]
public class ZDrive : SingletonBehaviour<ZDrive>
{
	public delegate void SwitchingEventHandler();
	public event SwitchingEventHandler Switching;
	public delegate void SwitchedEventHandler();
	public event SwitchedEventHandler Switched;

	[SerializeField] float m_coolDown;
	[HideInInspector] ViewSwitch m_viewSwitch;
	[HideInInspector] bool m_onCooldown;

	IEnumerator DoCooldown()
	{
		m_onCooldown = true;
		yield return new WaitForSeconds(m_coolDown);
		m_onCooldown = false;
	}
	
	//setter/getter for debug
	
	public void setCoolDown(float cd){
		
		m_coolDown = cd;
	}
	public float getCoolDown(){
		return m_coolDown;
	}

	void OnSwitching()
	{
		if (Switching != null)
		{
			Switching();
		}
	}

	void OnSwitched()
	{
		if (Switched != null)
		{
			Switched();
		}
	}

	public void Switch()
	{
		if (!m_onCooldown)
		{
			OnSwitching();
			StartCoroutine(DoCooldown());
			m_viewSwitch.Switch();
		}
	}

	void Awake()
	{
		m_onCooldown = false;
	}

	void Start()
	{
		m_viewSwitch = GetComponent<ViewSwitch>();
		m_viewSwitch.Switched += new ViewSwitch.SwitchedEventHandler(OnSwitched);
	}
}
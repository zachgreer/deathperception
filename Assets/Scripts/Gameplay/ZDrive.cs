﻿using UnityEngine;
using System.Collections;

[AddComponentMenu ("Camera/ZDrive")]
[RequireComponent (typeof(ViewSwitch))]
public class ZDrive : SingletonBehaviour<ZDrive>
{
	public delegate void SwitchingEventHandler();
	public event SwitchingEventHandler Switching;
	public delegate void SwitchedEventHandler();
	public event SwitchedEventHandler Switched;

	[SerializeField] private float m_coolDown;
	[HideInInspector] private ViewSwitch m_viewSwitch;
	[HideInInspector] private bool m_onCooldown;
	[HideInInspector] private bool m_isOrtho;

	IEnumerator DoCooldown()
	{
		m_onCooldown = true;
		yield return new WaitForSeconds(m_coolDown);
		m_onCooldown = false;
	}

	public bool IsOrtho
	{
		get
		{
			return m_isOrtho;
		}
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
			m_isOrtho = !m_isOrtho;
		}
	}

	void Awake()
	{
		m_onCooldown = false;
		m_isOrtho = true;
	}

	void Start()
	{
		m_viewSwitch = GetComponent<ViewSwitch>();
		m_viewSwitch.Switched += new ViewSwitch.SwitchedEventHandler(OnSwitched);
	}
}
using UnityEngine;
using System.Collections;

public class ObjectStack: MonoBehaviour
{
	[SerializeField]
	private GameObject m_prefab;

	[SerializeField]
	private int m_size;

	[HideInInspector]
	private GameObject[] m_objects;

	[HideInInspector]
	private int m_head;

	public void Push(GameObject obj)
	{
		if (m_head > 0)
		{
			m_head--;
			m_objects[m_head] = obj;
		}
	}

	public GameObject Pop()
	{
		if (m_head < m_size)
		{
			GameObject tmp = m_objects[m_head];
			m_head++;
			return tmp;
		}
		else
		{
			return null;
		}
	}

	void Awake()
	{
		m_objects = new GameObject[m_size];
		for (int i = 0; i < m_size; i++)
		{
			m_objects[i] = Instantiate(m_prefab) as GameObject;
			m_objects[i].transform.parent = transform;
			m_objects[i].SetActive(false);
		}
		m_head = 0;
	}
}
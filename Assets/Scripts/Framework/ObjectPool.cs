using UnityEngine;
using System;

public class ObjectPool : MonoBehaviour
{
	[SerializeField] GameObject m_prefab;
	[SerializeField] int m_size;
	[HideInInspector] Element[] m_pool;
	[HideInInspector] int m_freeHead;

	[Serializable]
	public struct Element
	{
		public int nextFree;
		public GameObject gameObject;
	}

	void Start()
	{
		m_pool = new Element[m_size];
		m_freeHead = 0;
		for (int i = 0; i < m_size; i++)
		{
			m_pool[i] = new Element();
			m_pool[i].nextFree = i + 1;
			m_pool[i].gameObject = Instantiate(m_prefab) as GameObject;
			m_pool[i].gameObject.transform.parent = transform;
			m_pool[i].gameObject.AddComponent<PoolMember>();
			m_pool[i].gameObject.GetComponent<PoolMember>().index = i;
			m_pool[i].gameObject.SetActive(true);
			m_pool[i].gameObject.SetActive(false);
		}
		m_pool[m_size - 1].nextFree = -1;
	}

	public GameObject Retrieve()
	{
		if (m_freeHead != -1)
		{
			GameObject temp = m_pool[m_freeHead].gameObject;
			m_freeHead = m_pool[m_freeHead].nextFree;
			temp.SetActive(true);
			return temp;
		}
		else
		{
			return null; // Monadic 'maybe' type would be ideal.
		}
	}

	public void Return(GameObject gameObject)
	{
		gameObject.SetActive(false);
		int temp = m_freeHead;
		m_freeHead = gameObject.GetComponent<PoolMember>().index;
		m_pool[m_freeHead].nextFree = temp;
	}
}
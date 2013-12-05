using UnityEngine;

[AddComponentMenu ("Enemy/EnemyFactory")]
public class EnemyFactory : SingletonBehaviour<EnemyFactory>
{
	[SerializeField]
	private ObjectStack m_bulletStack;

	public GameObject Create(GameObject prefab)
	{
		GameObject obj = Instantiate(prefab) as GameObject;
		if (obj.tag != "Powerup" && obj.tag != "Solid")
		{
			obj.GetComponentInChildren<Cannon>().BulletStack = m_bulletStack;
		}
		return obj;
	}

	void Awake()
	{
		m_bulletStack = GameObject.Find("EnemyBulletStack").GetComponent<ObjectStack>();
	}
}
using UnityEngine;

[AddComponentMenu ("Enemy/EnemySpawner")]
public class EnemySpawner : MonoBehaviour
{
	[SerializeField]
	private GameObject m_prefab;

	void Awake()
	{
		GameObject enemy = EnemyFactory.Instance.Create(m_prefab);
		enemy.transform.position = transform.position;
		enemy.transform.parent = transform;
	}
}
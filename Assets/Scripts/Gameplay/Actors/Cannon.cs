using UnityEngine;

public class Cannon : MonoBehaviour {
	[SerializeField] ObjectPool m_bulletPool;
	[HideInInspector] bool m_fireThisFrame;

	public void Fire()
	{
		m_fireThisFrame = true;
	}

	void Update()
	{
		if (m_fireThisFrame)
		{
			GameObject bullet = m_bulletPool.Retrieve();
			if (bullet != null)
			{
				bullet.transform.position = transform.position;
				Transform bulletMeshTransform = bullet.GetComponentInChildren<MeshFilter>().transform;
				bulletMeshTransform.rotation = transform.rotation;
			}
			m_fireThisFrame = false;
		}
	}
}
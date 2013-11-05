using UnityEngine;

[AddComponentMenu ("Enemies/FollowPath")]
[RequireComponent (typeof(iTweenPath))]
public class FollowPath : MonoBehaviour
{
	[HideInInspector] private iTweenPath m_path;

	[SerializeField] private float m_time;
	[SerializeField] private bool m_orientToPath;
	
	private void DeleteSelf()
	{
		Destroy(gameObject);
	}

	void Awake()
	{
		m_path = GetComponent<iTweenPath>();
		if (m_time == 0f)
		{
			Debug.LogWarning(name + " has an assigned path time of 0 seconds.");
		}
	}

	void Start()
	{
		iTween.MoveTo(gameObject, iTween.Hash("path", m_path.nodes.ToArray(),
			"time", m_time,
			"easeType", iTween.EaseType.linear,
			"movetopath", false,
			"orienttopath", m_orientToPath,
			"oncomplete", "DeleteSelf"));
	}
}
using UnityEngine;

[AddComponentMenu ("Enemy/SplineController")]
[RequireComponent (typeof(iTweenPath))]
public class SplineController : MonoBehaviour
{
	[SerializeField]
	private float m_time;

	[SerializeField]
	private bool m_orientToPath;

	[HideInInspector]
	private iTweenPath m_path;
	
	private void DeleteSelf()
	{
		Destroy(gameObject);
	}

	void Awake()
	{
		m_path = GetComponent<iTweenPath>();
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
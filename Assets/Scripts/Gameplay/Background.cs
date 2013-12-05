using UnityEngine;
using System.Collections;

/// <summary>
/// Attach to the animating background to stop it from rotating while in third
/// person mode.
/// </summary>
[AddComponentMenu ("Background/Background")]
[RequireComponent (typeof(Animation))]
public class Background : MonoBehaviour
{
	private void Awake()
	{
		animation = GetComponent<Animation>();
	}

	private void Start()
	{
		ZDrive.Instance.Switching += TogglePause;
	}

	private void TogglePause()
	{
		animation.enabled = !animation.enabled;
	}

	private void OnDestroy()
	{
		ZDrive zdrive = ZDrive.Instance;
		if (zdrive != null)
			zdrive.Switching -= TogglePause;
	}

	[HideInInspector] new private Animation animation;
}
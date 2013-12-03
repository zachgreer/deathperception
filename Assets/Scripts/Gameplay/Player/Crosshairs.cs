using UnityEngine;
using ConditionalAttribute = System.Diagnostics.ConditionalAttribute;

/// <summary>
/// Controls the two crosshairs that are visible in 3D mode.
/// </summary>
[AddComponentMenu ("Player/Tilt")]
public class Crosshairs : MonoBehaviour
{
	private void Toggle()
	{
		doTilt = !doTilt;
	}

	[ConditionalAttribute("DEBUG")]
	private void CheckReferences()
	{
		if (primaryCrosshair == null)
			Debug.LogError("Primary crosshair could not be found!");
		if (secondaryCrosshair == null)
			Debug.LogError("Secondary crosshair could not be found!");
	}

	void Awake()
	{
		transform = GetComponent<Transform>();

		GameObject primaryCrosshairObj = GameObject.FindWithTag("Crosshairs");
		primaryCrosshair = primaryCrosshairObj.GetComponent<Transform>();
		// Assuming that the primary crosshair has a single child:
		secondaryCrosshair = primaryCrosshair.GetChild(0);
		CheckReferences();

		doTilt = false;
		aimOrigin = new Vector3(shortDistance, 0f, 0f);
		aimDir = aimOrigin;
	}

	void Start()
	{
		ZDrive.Instance.Switched += Toggle;
	}

	void OnDestroy()
	{
		ZDrive zdrive = ZDrive.Instance;
		if (zdrive != null)
			zdrive.Switched -= Toggle;
	}

	void Update()
	{
		if (doTilt)
		{
			float stickX = Input.GetAxis("Horizontal");
			float stickY = Input.GetAxis("Vertical");
			Vector3 stickPos = new Vector3(0f, stickY, -stickX);
			Vector3 stickDir = Vector3.ClampMagnitude(stickPos, 1f);

			Vector3 targetAimDir = stickDir * aimRadius;
			targetAimDir.x = shortDistance;

			float aimStep = aimSpeed * Time.deltaTime;
			aimDir = Vector3.Lerp(aimDir, targetAimDir, aimStep);

			Vector3 normalized = aimDir.normalized;
			primaryCrosshair.localPosition = normalized * shortDistance;

			// Necessary because of the obtuse transform heirarchy.
			Vector3 secondaryPos = normalized * longDistance;
			float tmpX = secondaryPos.x;
			secondaryPos.x = secondaryPos.y;
			secondaryPos.y = -tmpX;
			secondaryCrosshair.localPosition = secondaryPos;
		}

		float resetStep = resetSpeed * Time.deltaTime;
		aimDir = Vector3.Lerp(aimDir, aimOrigin, resetStep);
		
		transform.LookAt(primaryCrosshair);
	}

	// Inspector variables
	[SerializeField] private float aimSpeed;
	[SerializeField] private float resetSpeed;
	[SerializeField] private float aimRadius;
	[SerializeField] private float shortDistance;
	[SerializeField] private float longDistance;

	// External references
	[HideInInspector] private Transform primaryCrosshair;
	[HideInInspector] private Transform secondaryCrosshair;

	// Internal references
	[HideInInspector] new private Transform transform;

	// Persistent state
	[HideInInspector] private bool doTilt;
	[HideInInspector] private Vector3 aimDir;
	[HideInInspector] private Vector3 aimOrigin;
}
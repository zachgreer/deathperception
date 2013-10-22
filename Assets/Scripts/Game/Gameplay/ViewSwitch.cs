// ViewSwitch.cs
// Author: Zach Greer
using UnityEngine;
using System.Collections;

// Interpolates the attached camera's transform and projection matrix.
[RequireComponent (typeof(Camera))]
public class ViewSwitch : MonoBehaviour {
	public float duration;
	public float fov;
	public float near;
	public float far;
	public float orthoSize;
	public Transform orthoTransform;
	public Transform perspTransform;

	public delegate void TogglePauseDelegate();
	public delegate void ToggleControlModeDelegate();
	public TogglePauseDelegate togglePause;
	public ToggleControlModeDelegate toggleControlMode;

	bool isOrtho;
	float aspectRatio;
	Matrix4x4 orthoProjection;
	Matrix4x4 perspProjection;

	Matrix4x4 MatrixLerp(Matrix4x4 from, Matrix4x4 to, float weight) {
		Matrix4x4 ret = new Matrix4x4();
		for (int i = 0; i < 16; i++)
			ret[i] = Mathf.Lerp(from[i], to[i], weight);
		return ret;
	}

	IEnumerator DoSwitch(Matrix4x4 targetProjection, Transform targetTransform) {
		float startTime = Time.time;
		float dt;
		while (Time.time - startTime < duration) {
			dt = Time.time - startTime;
			camera.projectionMatrix = MatrixLerp(camera.projectionMatrix, targetProjection, dt / duration);
			transform.position = Vector3.Slerp(transform.position, targetTransform.position, dt / duration);
			transform.rotation = Quaternion.Slerp(transform.rotation, targetTransform.rotation, dt / duration);
			yield return null;
		}
		camera.projectionMatrix = targetProjection;
		isOrtho = !isOrtho;
		toggleControlMode();
		togglePause();
	}

	public void Switch() {
		if (camera.projectionMatrix == orthoProjection)
			StartCoroutine(DoSwitch(perspProjection, perspTransform));
		else
			StartCoroutine(DoSwitch(orthoProjection, orthoTransform));
	}

	void Awake() {
		aspectRatio = (float) Screen.width / Screen.height;
		orthoProjection = Matrix4x4.Ortho(-orthoSize * aspectRatio, orthoSize * aspectRatio, -orthoSize, orthoSize, near, far);
		perspProjection = Matrix4x4.Perspective(fov, aspectRatio, near, far);
		camera.projectionMatrix = orthoProjection;
		isOrtho = true;
	}
}
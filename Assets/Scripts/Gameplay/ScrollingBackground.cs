using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ScrollingBackground : MonoBehaviour
{
	private void Start()
	{
		foreach (Transform child in transform)
			StartCoroutine(Scroll(child));
	}

	private IEnumerator Scroll(Transform transform)
	{
		while (true)
		{
			yield return StartCoroutine(MoveTo(transform, end.position));
			TeleportTo(transform, begin.position);
		}
	}

	private IEnumerator MoveTo(Transform transform, Vector3 position)
	{
		while (transform.position.x - position.x > 0f)
		{
			transform.Translate(-Vector3.right * speed * Time.deltaTime);
			yield return null;
		}
	}

	private void TeleportTo(Transform transform, Vector3 position)
	{
		transform.position = position;
	}

	[SerializeField] private float speed;
	[SerializeField] private Transform begin;
	[SerializeField] private Transform end;
}
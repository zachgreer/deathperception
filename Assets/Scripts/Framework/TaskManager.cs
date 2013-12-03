using UnityEngine;
using System.Collections;

public class TaskManager : MonoBehaviour
{
	public class TaskState
	{
		public TaskState(IEnumerator coroutine)
		{
			this.coroutine = coroutine;
		}

		public void Start()
		{
			isRunning = true;
			instance.StartCoroutine(CoroutineWrapper());
		}

		public void Stop()
		{
			isRunning = false;
		}

		public void Pause()
		{
			isPaused = true;
		}

		public void Resume()
		{
			isPaused = false;
		}

		public bool IsRunning
		{
			get { return isRunning; }
		}

		public bool IsPaused
		{
			get { return isPaused; }
		}

		public delegate void FinishedEventHandler();
		public event FinishedEventHandler Finished;

		private IEnumerator CoroutineWrapper()
		{
			yield return null;
			while (isRunning)
			{
				if (isPaused)
					yield return null;
				else
				{
					if (coroutine != null && coroutine.MoveNext())
						yield return coroutine.Current;
					else
						isRunning = false;
				}
			}

			if (Finished != null)
				Finished();
		}

		private IEnumerator coroutine;
		private bool isRunning;
		private bool isPaused;
	}

	private static TaskManager instance;

	public static TaskState CreateTask(IEnumerator coroutine)
	{
		if (instance == null)
		{
			GameObject go = new GameObject("TaskManager");
			instance = go.AddComponent<TaskManager>();
		}
		return new TaskState(coroutine);
	}
}
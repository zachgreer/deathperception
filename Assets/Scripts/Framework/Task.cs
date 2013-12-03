using System.Collections;

/// <summary>
/// Improved coroutine type that provides pause, resume, and stop semantics.
/// </summary>
public class Task
{
	/// <summary>
	/// Creates a new Task object for a coroutine.
	/// </summary>
	/// <param name="coroutine">
	/// Coroutine for the Task object.
	/// </param>
	/// <param name="autoStart">
	/// If autoStart is true (default) the task begins immediately upon
	/// construction.
	/// </param>
	public Task(IEnumerator coroutine, bool autoStart = true)
	{
		task = TaskManager.CreateTask(coroutine);
		task.Finished += TaskFinished;
		if (autoStart)
			Start();
	}
	
	public void Start()
	{
		task.Start();
	}

	public void Stop()
	{
		task.Stop();
	}

	public void Pause()
	{
		task.Pause();
	}

	public void Resume()
	{
		task.Resume();
	}

	public bool IsRunning
	{
		get { return task.IsRunning; }
	}

	public bool IsPaused
	{
		get { return task.IsPaused; }
	}

	/// <summary>
	/// Delegate for the subscribers to the Finished event.
	/// </summary>
	public delegate void FinishedEventHandler();

	/// <summary>
	/// Fired when a coroutine either completes execution or is manually
	/// stopped.
	/// </summary>
	public event FinishedEventHandler Finished;

	private void TaskFinished()
	{
		if (Finished != null)
			Finished();
	}

	private TaskManager.TaskState task;
}
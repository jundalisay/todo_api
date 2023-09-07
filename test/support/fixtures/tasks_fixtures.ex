defmodule Todoapi.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Todoapi.Tasks` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        content: "some content",
        position: 42
      })
      |> Todoapi.Tasks.create_task()

    task
  end
end

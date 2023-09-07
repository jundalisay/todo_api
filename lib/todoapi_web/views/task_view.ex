defmodule TodoapiWeb.TaskView do
  use TodoapiWeb, :view
  alias TodoapiWeb.TaskView

  def render("index.json", %{tasks: tasks}) do
    %{data: render_many(tasks, TaskView, "task.json")}
  end

  def render("show.json", %{task: task}) do
    %{data: render_one(task, TaskView, "task.json")}
  end

  def render("task.json", %{task: task}) do
    %{
      account_id: task.account_id,
      id: task.id,
      position: task.position,
      content: task.content
    }
  end
end

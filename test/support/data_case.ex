defmodule Todoapi.Support.DataCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias Ecto.Changeset
      import Todoapi.Support.DataCase
      alias Todoapi.{Support.Factory, Repo}
    end
  end

  setup _ do
    Ecto.Adapters.SQL.Sandbox.mode(Todoapi.Repo, :manual)
  end
end

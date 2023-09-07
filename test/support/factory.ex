defmodule Todoapi.Support.Factory do
  use ExMachina.Ecto, repo: Todoapi.Repo
  alias Todoapi.Accounts.Account

  def account_factory do
    %Account{
      email: Faker.Internet.email(),
      hash_password: Faker.Internet.slug()
    }
  end
end

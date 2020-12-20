defmodule Workbench.SmokeTest do
  use ExUnit.Case, async: true
  use Wallaby.Feature

  feature "users have names", %{session: session} do
    session
    |> visit("/")
    # |> find(Query.css(".user", count: 3))
    # |> List.first()
    # |> assert_has(Query.css(".user-name", text: "Chris"))
    |> assert_has(Query.css(".btn", text: "Login"))
  end
end

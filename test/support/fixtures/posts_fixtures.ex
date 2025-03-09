defmodule Hello.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Hello.Posts` context.
  """

  @doc """
  Generate a micropost.
  """
  def micropost_fixture(attrs \\ %{}) do
    {:ok, micropost} =
      attrs
      |> Enum.into(%{
        content: "some content",
        user_id: 42
      })
      |> Hello.Posts.create_micropost()

    micropost
  end
end

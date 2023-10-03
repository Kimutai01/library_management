defmodule LibraryManagement.ReviewsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `LibraryManagement.Reviews` context.
  """

  @doc """
  Generate a review.
  """
  def review_fixture(attrs \\ %{}) do
    {:ok, review} =
      attrs
      |> Enum.into(%{
        name: "some name",
        content: "some content"
      })
      |> LibraryManagement.Reviews.create_review()

    review
  end
end

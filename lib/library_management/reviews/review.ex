defmodule LibraryManagement.Reviews.Review do
  use Ecto.Schema
  import Ecto.Changeset

  schema "reviews" do
    field :name, :string
    field :content, :string
    belongs_to(:book, LibraryManagement.Books.Book)

    timestamps()
  end

  @doc false
  def changeset(review, attrs) do
    review
    |> cast(attrs, [:name, :content])
    |> validate_required([:name, :content])
  end
end

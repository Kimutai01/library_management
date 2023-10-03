defmodule LibraryManagement.Books.Book do
  
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :title, :string
    field :isbn, :integer
    field :publication_date, :date

    has_many(:reviews, LibraryManagement.Books.Review)

    timestamps()
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :isbn, :publication_date])
    |> validate_required([:title, :isbn, :publication_date])
  end

  def add_review(book_id, review_params) do
    review_params
    |> Map.put("book_id", book_id)
    |> Reviews.create_review()
 end
end

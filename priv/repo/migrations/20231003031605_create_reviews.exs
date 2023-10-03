defmodule LibraryManagement.Repo.Migrations.CreateReviews do
  use Ecto.Migration

  def change do
    create table(:reviews) do
      add :name, :string
      add :content, :string
      add :book_id, references(:books, on_delete: :nothing)

      timestamps()
    end

    create index(:reviews, [:book_id])
  end
end

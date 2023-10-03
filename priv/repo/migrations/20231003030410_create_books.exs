defmodule LibraryManagement.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :isbn, :integer
      add :publication_date, :date

      timestamps()
    end
  end
end

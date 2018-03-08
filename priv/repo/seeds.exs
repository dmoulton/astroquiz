# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Astroquiz.Repo.insert!(%Astroquiz.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Astroquiz.Repo
alias Astroquiz.Quizzes.Star

Repo.insert!(%Star{popular_name: "Choo", formal_name: "Alpha Arae", description: "", constellation: "Ara"})
Repo.insert!(%Star{popular_name: "Arcturus", formal_name: "Alpha Boötis", description: "", constellation: "Bootes"})
Repo.insert!(%Star{popular_name: "Izar", formal_name: "Epsilon Boötis", description: "", constellation: "Bootes"})
Repo.insert!(%Star{popular_name: "Muphrid", formal_name: "Eta Boötis", description: "", constellation: "Bootes"})
Repo.insert!(%Star{popular_name: "Nekkar", formal_name: "Beta Boötis", description: "", constellation: "Bootes"})
Repo.insert!(%Star{popular_name: "", formal_name: "", description: "", constellation: ""})
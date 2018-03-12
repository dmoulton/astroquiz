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

Repo.insert!(%Star{popular_name: "Alperatz", formal_name: "Alpha Andromedae", description: "Magnitude 2.0", constellation: "Andromeda"})
Repo.insert!(%Star{popular_name: "Arcturus", formal_name: "Alpha Boötis", description: "Magnitude -0.5", constellation: "Bootes"})
Repo.insert!(%Star{popular_name: "Caph", formal_name: "Beta Cassiopeiae", description: "Magnitude 2.2", constellation: "Cassiopeia"})
Repo.insert!(%Star{popular_name: "Algenib", formal_name: "Gamma Pegasi", description: "Magnitude 2.8", constellation: "Pegasus"})
Repo.insert!(%Star{popular_name: "Navi", formal_name: "Gamma Cassiopeiae", description: "Magnitude 1.6", constellation: "Cassiopeia"})
Repo.insert!(%Star{popular_name: "Mirach", formal_name: "Beta Andromedae", description: "Magnitude 2.0", constellation: "Andromeda"})
Repo.insert!(%Star{popular_name: "Achernar", formal_name: "Alpha Eridani", description: "Magnitude 0.4", constellation: "Eriandus"})
Repo.insert!(%Star{popular_name: "Hamal", formal_name: "Alpha Arietis", description: "Magnitude 2.0", constellation: "Ares"})
Repo.insert!(%Star{popular_name: "Polaris", formal_name: "Alpha Ursae Minoris", description: "Magnitude 2.0", constellation: "Ursa Minor"})
Repo.insert!(%Star{popular_name: "Mirfak", formal_name: "Alpha Persei", description: "Magnitude 1.8", constellation: "Perseus"})
Repo.insert!(%Star{popular_name: "Alphecca", formal_name: "Alpha Coronae Borealis", description: "Magnitude 2.3", constellation: "Corona Borealis"})
Repo.insert!(%Star{popular_name: "Aldebaran", formal_name: "Alpha Tauri", description: "Magnitude 1.1", constellation: "Taurus"})
Repo.insert!(%Star{popular_name: "Rigel", formal_name: "Beta Orionis", description: "Magnitude 0.3", constellation: "Orion"})
Repo.insert!(%Star{popular_name: "Capella", formal_name: "Alpha Aurigae", description: "Magnitude 0.2", constellation: "Auriga"})
Repo.insert!(%Star{popular_name: "Betelgeuse", formal_name: "Alpha Orionis", description: "Magnitude 0.6", constellation: "Orion"})
Repo.insert!(%Star{popular_name: "Canopus", formal_name: "Alpha Carinae", description: "Magnitude -0.9", constellation: "Carina"})
Repo.insert!(%Star{popular_name: "Sirius", formal_name: "Alpha Canis Majoris", description: "Magnitude -1.6", constellation: "Canis Major"})
Repo.insert!(%Star{popular_name: "Castor", formal_name: "Alpha Geminorum", description: "Magnitude 1.6", constellation: "Gemini"})
Repo.insert!(%Star{popular_name: "Procyon", formal_name: "Alpha Canis Minoris", description: "Magnitude 0.5", constellation: "Canis Minor"})
Repo.insert!(%Star{popular_name: "Pollux", formal_name: "Beta Geminorum", description: "Magnitude 1.2", constellation: "Gemini"})
Repo.insert!(%Star{popular_name: "Suhail", formal_name: "Lambda Velorum", description: "Magnitude 2.2", constellation: "Vela"})
Repo.insert!(%Star{popular_name: "Alphard", formal_name: "Alpha Hydrae", description: "Magnitude 2.0", constellation: "Hydra"})
Repo.insert!(%Star{popular_name: "Regulus", formal_name: "Alpha Leonis", description: "Magnitude 1.3", constellation: "Leo"})
Repo.insert!(%Star{popular_name: "Denebola", formal_name: "Beta Leonis", description: "Magnitude 2.2", constellation: "Leo"})
Repo.insert!(%Star{popular_name: "Dubhe", formal_name: "Alpha Ursae Majoris", description: "Magnitude 2.0", constellation: "Ursa Major"})
Repo.insert!(%Star{popular_name: "Acrux", formal_name: "Alpha Crucis", description: "Magnitude 1.6", constellation: "Crux"})
Repo.insert!(%Star{popular_name: "Mimosa", formal_name: "Beta Crucis", description: "Magnitude 1.3", constellation: "Crux"})
Repo.insert!(%Star{popular_name: "Mizar", formal_name: "Zeta Ursa Majoris", description: "Magnitude 2.0", constellation: "Ursa Major"})
Repo.insert!(%Star{popular_name: "Spica", formal_name: "Alpha Virginis", description: "Magnitude 1.0", constellation: "Virgo"})
Repo.insert!(%Star{popular_name: "Hadar", formal_name: "Beta Centauri", description: "Magnitude 0.6", constellation: "Centaurus"})
Repo.insert!(%Star{popular_name: "Alpha Centauri", formal_name: "Alpha Centauri", description: "Magnitude 0.1", constellation: "Centaurus"})
Repo.insert!(%Star{popular_name: "Antares", formal_name: "Alpha Scorpii", description: "Magnitude 1.1", constellation: "Scorpius"})
Repo.insert!(%Star{popular_name: "Rasalhague", formal_name: "Alpha Ophiuchi", description: "Magnitude 2.0", constellation: "Ophiuchus"})
Repo.insert!(%Star{popular_name: "Vega", formal_name: "Alpha Lyrae", description: "Magnitude 0.1", constellation: "Lyra"})
Repo.insert!(%Star{popular_name: "Albireo", formal_name: "Beta Cygni", description: "Magnitude 3.2", constellation: "Cygnus"})
Repo.insert!(%Star{popular_name: "Altair", formal_name: "Alpha Aquilae", description: "Magnitude 0.9", constellation: "Aquila"})
Repo.insert!(%Star{popular_name: "Peacock", formal_name: "Alpha Pavonis", description: "Magnitude 1.9", constellation: "Pavo"})
Repo.insert!(%Star{popular_name: "Deneb", formal_name: "Alpha Cygni", description: "Magnitude 1.3", constellation: "Cygnus"})
Repo.insert!(%Star{popular_name: "Fomalhaut", formal_name: "Alpha Piscis Austrini", description: "Magnitude 1.2", constellation: "Piscis Austrinus"})
Repo.insert!(%Star{popular_name: "Scheat", formal_name: "Beta Pegasi", description: "Magnitude 2.6", constellation: "Pegasus"})

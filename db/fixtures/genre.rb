names = [
  "指定なし",
  "トップス",
  "ボトムス",
  "スカート",
  "水着"
]
names.each.with_index(1) do |name, idx|
  Genre.seed do |s|
    s.id = idx
    s.name = name
  end
end
names = [
  "指定なし",
]
names.each.with_index(1) do |name, idx|
  SleeveType.seed do |s|
    s.id = idx
    s.name = name
  end
end
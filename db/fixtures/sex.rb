names = [
  "指定なし",
]
names.each.with_index(1) do |name, idx|
  Sex.seed do |s|
    s.id = idx
    s.name = name
  end
end
names = [
  'ストレート・カフス',
]
names.each.with_index(1) do |name, idx|
  CuffType.seed do |s|
    s.id = idx
    s.name = name
  end
end
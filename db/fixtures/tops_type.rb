names = [
]
names.each.with_index(1) do |name, idx|
  TopsType.seed do |s|
    s.id = idx
    s.name = name
  end
end
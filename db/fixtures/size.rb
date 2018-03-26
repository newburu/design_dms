names = [
]
names.each.with_index(1) do |name, idx|
  Size.seed do |s|
    s.id = idx
    s.name = name
  end
end
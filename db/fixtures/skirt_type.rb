names = [
  'ペプラム・スカート',
]
names.each.with_index(1) do |name, idx|
  SkirtType.seed do |s|
    s.id = idx
    s.name = name
  end
end
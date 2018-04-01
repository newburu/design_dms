names = [
  '大人(男)',
  '大人(女)',
  '子供(男)',
  '子供(女)',
  'フリー',
]
names.each.with_index(1) do |name, idx|
  Sex.seed do |s|
    s.id = idx
    s.name = name
  end
end
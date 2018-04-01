names = [
  'S',
  'M',
  'L',
  'LL',
  '3L',
  '4L',
  '5L',
  '6L以上',
  'フリー',
]
names.each.with_index(1) do |name, idx|
  Size.seed do |s|
    s.id = idx
    s.name = name
  end
end
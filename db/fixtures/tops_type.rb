names = [
  'サファリ・シャツ',
  'アイビー・シャツ',
  'ネル・シャツ',
  'ランバージャック・シャツ',
  'クレリック・シャツ',
  'ラガー・シャツ',
  'ボウリング・シャツ',
  'アロハ・シャツ',
  'かりゆし',
  'バーバー・シャツ',
  'ウェスタン・シャツ',
  'オーバー・シャツ',
  'キャバルリー・シャツ',
  'ペプラム・トップス',
  'カシュクール',
  'サッシュ・ブラウス',
  'ペプラム・ブラウス',
  'スモック・ブラウス',
  'ルバシカ',
  'チョリ・ブラウス',
  'ビクトリア・ブラウス',
  'ペザント・ブラウス',
  'パイレーツ・ブラウス',
  'キャバリア・ブラウス',
  'バルカン・ブラウス',
  'カミサ',
  'クバヤ',
  'ハビット・シャツ',
  'グアヤベラ・シャツ',
  'バスク・シャツ',
  'パーカー',
  'フーディー',
  'ピステ',
  'クルタ・シャツ',
  'ガウチョ・シャツ',
  'アーミー・セーター',
  'カウチン・セーター',
  'フィッシャーマンズ・セーター',
  'チルデン・セーター',
  'チルデン・カーディガン',
  'シェットランド・セーター',
  'バルキー・ニット',
  'シェーカー・セーター',
  'ボレロ',
  'ビスチェトップス',
  'ベアトップ',
  'チューブトップ',
  'タンクトップ',
  'キャミソール',
  'スキッパー',
  'ビブ・ヨーク',
  'ケープ・ショルダー',
  '袖ロゴ',
  'チョゴリ',
]
names.each.with_index(1) do |name, idx|
  TopsType.seed do |s|
    s.id = idx
    s.name = name
  end
end
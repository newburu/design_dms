names = [
  'セットイン・スリーブ',
  'シャツ・スリーブ',
  'ワイド・スリーブ',
  'ラグラン・スリーブ',
  'セミ・ラグラン・スリーブ',
  'スプリット・ラグラン・スリーブ',
  'サドル・ショルダー・スリーブ',
  'エポーレット・スリーブ',
  'ヨーク・スリーブ',
  'ウェッジ・スリーブ',
  'ディープ・スリーブ',
  'ドロップド・ショルダー・スリーブ',
  'デタッチド・スリーブ',
  'オープン・ショルダー',
  'カットアウェイ・ショルダー',
  'カフ・スリーブ',
  'パフ・スリーブ',
  'フレア・スリーブ',
  'ケープ・スリーブ',
  'ランタン・スリーブ',
  'バンド・スリーブ',
  'キャップ・スリーブ',
  'アームレット',
  'フレンチ・スリーブ',
  'ペタル・スリーブ',
  'エンジェル・スリーブ',
  'ティアード・スリーブ',
  'バルーン・スリーブ',
  'ブッファン・スリーブ',
  'ハンカチーフ・スリーブ',
  'ドルマン・スリーブ',
  'バットウィング・スリーブ',
  'バタフライ・スリーブ',
  'バッグ・スリーブ',
  'ポンチョ・スリーブ',
  'ビショップ・スリーブ',
  'ペザント・スリーブ',
  'ベル・スリーブ',
  'トランペット・スリーブ',
  'コルネット・スリーブ',
  'マンダリン・スリーブ',
  'パゴダ・スリーブ',
  'アンブレラ・スリーブ',
  'ポインテッド・スリーブ',
  'ジュリエット・スリーブ',
  'チキンレッグ・スリーブ',
  'レッグオブマトン・スリーブ',
  'エレファント・スリーブ',
  'スラッシュド・スリーブ',
  'アーム・スリット',
  'ハンギング・スリーブ',
  'マムルーク・スリーブ',
  'ムスクテール・スリーブ',
  'アメリカン・スリーブ',
]
names.each.with_index(1) do |name, idx|
  SleeveType.seed do |s|
    s.id = idx
    s.name = name
  end
end
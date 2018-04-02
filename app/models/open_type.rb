class OpenType < ActiveHash::Base
  self.data = [
    {id: 0, name: "自分のみ"},
    {id: 1, name: "フォロワーのみ"},
    {id: 2, name: "全体公開"}
  ]
end

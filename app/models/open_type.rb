class OpenType < ActiveHash::Base
  include ActiveHash::Enum
  self.data = [
    {id: 0, name: "自分のみ",      code: :MY_ONLY},
    {id: 1, name: "フォロワーのみ", code: :FOLLOWER_ONLY},
    {id: 2, name: "全体公開",      code: :ALL}
  ]
  
  enum_accessor :code
end

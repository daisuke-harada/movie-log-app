FactoryBot.define do
  factory :movie do
    id { "1" }
    title { "アベンジャーズ" }
    summary { "地球侵略へのカウントダウンが開始された時、７０億人もの人類の未来は、最強の力を持つヒーローたちに託された。彼らの名は、アベンジャーズ。だが、意思に反して集結させられた彼らはそれぞれの心の傷に囚われ、ひとつのチームとして戦うことを拒み続ける。次第に明らかにされるアベンジャーズの知られざる過去と苦悩…。人類史上最大の敵を前に、果たして彼らは地球を救うことができるのか？ それとも…？" }
    movie_image_id { "" }
    a_movie_released { "2012年8月14日" }
    show_time { "120分" }
    created_at { "2020-07-03 15:04:16" }
    updated_at { "2020-07-03 15:04:16" }
  end

  factory :user do
    id { "1" }
    name { "daisuke" }
    email { "test1@icloud.com" }
    password { "04030403" }
  end

  factory :review do
    id { "1" }
    movie_id { "1" }
    user_id { "1" }
    rate { "4.0" }
    content { "test1" }
    is_spoil { "false" }
    created_at { "2020-07-02 15:04:16" }
    updated_at { "2020-07-02 15:04:16" }
  end

  factory :genre do
    id { "1" }
    name { "アクション" }
    created_at { "2020-07-02 15:04:16" }
    updated_at { "2020-07-02 15:04:16" }
  end

  factory :movie_genres do
    id { "1" }
    movie_id { "1" }
    genre_id { "1" }
    created_at { "2020-07-02 15:04:16" }
    updated_at { "2020-07-02 15:04:16" }
  end
end

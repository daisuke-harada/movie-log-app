FactoryBot.define do
  factory :movie do
    id { "1" }
    title { "test1" }
    summary { "test1" }
    movie_image_id { "" }
    a_movie_released { "test1" }
    show_time { "test1" }
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
end

Review.seed do |s|
  s.movie_id = 1
  s.user_id = 2
  s.rate = 4.5
  s.content = "今までのMCU映画の集大成でした。\r\n最後にアイアンマンが死んでしまうところは泣いてしまいました。\r..."
  s.is_spoil = true
end

Review.seed do |s|
  s.movie_id = 2
  s.user_id = 2
  s.rate = 5
  s.content = "今まで見た映画の中で一番好きです。\r\n生きる希望がもらえますし、元気が出ます。何かで悩んでいる方にぜひ見て欲しいです。"
  s.is_spoil = false
end

Review.seed do |s|
  s.movie_id = 3
  s.user_id = 2
  s.rate = 4.5
  s.content = "私にとって恋愛映画の中では一番感動した映画です。\r\nこれから生きていく上で絶対に見た方がいいとお勧めできます。"
  s.is_spoil = false
end

Review.seed do |s|
  s.movie_id = 8
  s.user_id = 2
  s.rate = 4.5
  s.content = "MCU映画の中では一番ストーリーが面白かったです。\r\nヒーローの中で一番スパイダーマンが好きということもありますが、それを差し引いても、終盤のミステリオが裏切るシーンは見ものです。"
  s.is_spoil = true
end

Review.seed do |s|
  s.movie_id = 1
  s.user_id = 3
  s.rate = 4
  s.content = "今までのMCU映画の集大成でした。これまでMCUの映画を追いかけてきた人には見て欲しいです。卒業アルバムのような映画でした。"
  s.is_spoil = false
end

Review.seed do |s|
  s.movie_id = 4
  s.user_id = 3
  s.rate = 4
  s.content = "アクション映画の中では一番好きです。古い映画ですが、今の映画にも通用する映画だと思います。これがブルースウィリスの出世作だというのも感慨深いです。"
  s.is_spoil = false
end
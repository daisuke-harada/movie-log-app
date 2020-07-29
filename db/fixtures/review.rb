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
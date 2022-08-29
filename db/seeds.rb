# User.create!(name: "joe", email: "joe@test.com", password: "password")
# User.create!(name: "Fern", email: "fern@example.com", password: "password")
# User.create!(name: "Alex", email: "alex@example.com", password: "password")

# Playlist.create!(name: "Late night drive", description: "Songs to listen to while taking long drives at nighttime")
# Playlist.create!(name: "Angela and Dwight's Wedding", description: "Songs to play on the wedding of the year")
# Playlist.create!(name: "Dance Party", description: "Woohoo!!! Everyone dance!!!")

# Song.create!(title: "Billie Jean", artist: "Michael Jackson", album: "Thriller", genre: "Pop", url: "https://www.youtube.com/watch?v=Zi_XLOBDo_Y&ab_channel=michaeljacksonVEVO", playlist_id: Playlist.first.id)
# Song.create!(title: "Sweet Child o' Mine", artist: "Guns N' Roses", album: "Appetite for Destruction", genre: "Rock", url: "https://www.youtube.com/watch?v=1w7OgIMMRc4", playlist_id: Playlist.first.id)
# Song.create!(title: "Y.M.C.A.", artist: "Village People", album: "Cruisin'", genre: "Disco", url: "https://www.youtube.com/watch?v=CS9OO0S5w2k", playlist_id: Playlist.first.id)
# Song.create!(title: "Just Dance", artist: "Lady Gaga", album: "The Fame", genre: "Pop", url: "https://www.youtube.com/watch?v=2Abk1jAONjw", playlist_id: Playlist.first.id)
# Song.create!(title: "Electric Love", artist: "Børns", album: "Dopamine", genre: "Alternative", url: "https://www.youtube.com/watch?v=VUCuoxOUD6U", playlist_id: Playlist.first.id)
# Song.create!(title: "Down", artist: "Marian Hill", album: "ACT ONE", genre: "Alternative", url: "https://www.youtube.com/watch?v=DpMfP6qUSBo", playlist_id: Playlist.first.id)

# Song.create!(title: "Y.M.C.A.", artist: "Village People", album: "Cruisin'", genre: "Disco", url: "https://www.youtube.com/watch?v=CS9OO0S5w2k", playlist_id: Playlist.third.id)
# Song.create!(title: "Just Dance", artist: "Lady Gaga", album: "The Fame", genre: "Pop", url: "https://www.youtube.com/watch?v=2Abk1jAONjw", playlist_id: Playlist.third.id)
# Song.create!(title: "Electric Love", artist: "Børns", album: "Dopamine", genre: "Alternative", url: "https://www.youtube.com/watch?v=VUCuoxOUD6U", playlist_id: Playlist.third.id)

# UserPlaylist.create!(user_id: User.first.id, playlist_id: Playlist.first.id)
# UserPlaylist.create!(user_id: User.first.id, playlist_id: Playlist.second.id)
# UserPlaylist.create!(user_id: User.first.id, playlist_id: Playlist.third.id)

# UserPlaylist.create!(user_id: User.second.id, playlist_id: Playlist.first.id)
# UserPlaylist.create!(user_id: User.second.id, playlist_id: Playlist.second.id)

# UserPlaylist.create!(user_id: User.third.id, playlist_id: Playlist.second.id)
# UserPlaylist.create!(user_id: User.third.id, playlist_id: Playlist.third.id)

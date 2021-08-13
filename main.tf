resource "spotify_playlist" "playlist" {
  name        = "playlist-as-code"
  description = "Created by Terraform - https://github.com/joshroepke/spotify-playlists"
  public      = true

  tracks = [
    data.spotify_search_track.artist_1.tracks[0].id,
    data.spotify_search_track.artist_1.tracks[1].id,
    data.spotify_search_track.artist_1.tracks[2].id,
    data.spotify_search_track.artist_1.tracks[3].id,
    data.spotify_search_track.artist_2.tracks[1].id,
    data.spotify_search_track.artist_2.tracks[2].id,
    data.spotify_search_track.artist_2.tracks[3].id,
    data.spotify_search_track.artist_2.tracks[7].id,
    data.spotify_search_track.artist_3.tracks[0].id,
    data.spotify_search_track.artist_3.tracks[2].id,
    data.spotify_search_track.artist_3.tracks[4].id,
    data.spotify_search_track.artist_3.tracks[7].id,
    data.spotify_search_track.artist_4.tracks[1].id,
    data.spotify_search_track.artist_4.tracks[3].id,
    data.spotify_search_track.artist_4.tracks[8].id,
    data.spotify_search_track.artist_4.tracks[0].id,
  ]
}

data "spotify_search_track" "artist_1" {
  artists = ["Bad Brains"]
  album  = "Bad Brains"
}

data "spotify_search_track" "artist_2" {
  artists = ["Minor Threat"]
  album  = "First Two Seven Inches"
}

data "spotify_search_track" "artist_3" {
  artists = ["Black Flag"]
  album  = "Damaged"
}

data "spotify_search_track" "artist_4" {
  artists = ["Misfits"]
  album  = "Collection 2"
}
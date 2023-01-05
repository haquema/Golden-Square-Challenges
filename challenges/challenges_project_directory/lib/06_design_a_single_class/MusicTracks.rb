class MusicTracks
  def initialize
    @playlist = []
  end

  def add_track(track)
    fail "cannot add an empty string to tracklist" if track == ""
    fail "trackname must be a string" unless track.is_a? String
    @playlist << track
  end

  def display_tracks
    fail "No tracks to display" if @playlist.empty?
    @playlist.join(", ")
  end

end

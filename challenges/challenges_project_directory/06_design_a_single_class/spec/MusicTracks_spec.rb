require 'MusicTracks'

RSpec.describe MusicTracks do

  context "When a track is added to the list and the display method is called" do
    it "returns that track" do
      playlist = MusicTracks.new
      playlist.add_track("Jupiter")
      expect(playlist.display_tracks).to eq "Jupiter"
    end
  end

  context "When two tracks are added to the list and the display method is called" do
    it "returns those two tracks in a list (separated by a comma)" do
      playlist = MusicTracks.new
      playlist.add_track("Jupiter")
      playlist.add_track("Hello")
      expect(playlist.display_tracks).to eq "Jupiter, Hello"
    end
  end

  context "When attempting to add an empty string to the list" do
    it "fails" do
      playlist = MusicTracks.new
      expect { playlist.add_track("") }.to raise_error "cannot add an empty string to tracklist"
    end
  end

  context "When attempting to add a non string to the list" do
    it "fails" do
      playlist = MusicTracks.new
      expect { playlist.add_track(23) }.to raise_error "trackname must be a string"
    end
  end

  context "When attempting to display tracks but no tracks have been added" do
    it "fails" do
      playlist = MusicTracks.new
      expect { playlist.display_tracks }.to raise_error "No tracks to display"
    end
  end

end

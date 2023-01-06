# {{MusicTracks}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface
_Include the initializer and public methods with all parameters and return values._

```ruby
class MusicTracks 
  
  def initialize
  # no return value
  end

  def add_track(trackname) # trackname is a string containing the name of the track to be added
  # no return value
  end

  def display_tracks
  # return a string of the tracks that have been added, separated by commas"
  end

end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby

#1
playlist = MusicTracks.new
playlist.add_track("Jupiter")
playlist.display_tracks # => "Jupiter"

#2
playlist = MusicTracks.new
playlist.add_track("Jupiter")
playlist.add_track("Hello")
playlist.display_tracks # => "Jupiter, Hello"

#3
playlist = MusicTracks.new
playlist.add_track("") # fail "cannot add an empty string to tracklist"

#4
playlist = MusicTracks.new
playlist.add_track(1234) # fail "trackname must be a string"

#5
playlist = MusicTracks.new
playlist.display_tracks # fail "No tracks to display"



```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

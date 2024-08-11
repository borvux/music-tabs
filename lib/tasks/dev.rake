desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  # to use the simple_format method
  include ActionView::Helpers::TextHelper

  p "Creating sample data"

  tab_one = <<-SONG
  Capo 2

  [Intro]
  Am   E7   G   D   F   C   Dm   E7   x2

  [Verse]
  Am                         E7
    On a dark desert highway, cool wind in my hair
  G                      D
    Warm smell of colitas rising up through the air
  F                          C
    Up ahead in the distance, I saw a shimmering light
  Dm
    My head grew heavy and my sight grew dim
  E7
    I had to stop for the night

  Am                               E7
    There she stood in the doorway; I heard the mission bell
  G
    And I was thinking to myself
                D
  This could be heaven or this could be hell
  F                          C
    Then she lit up a candle, and she showed me the way
  Dm
    There were voices down the corridor,
  E7
    I thought I heard them say...

  [Chorus]
  F                          C
    Welcome to the Hotel California.
        E7                                         Am
  Such a lovely place (such a lovely place), such a lovely face
  F                               C
  Plenty of room at the Hotel California
      Dm                                       E7
  Any time of year (any time of year), you can find it here

  [Verse]
  Am                            E7
  Her mind is Tiffany-twisted, she got the Mercedes bends
  G                                    D
  She got a lot of pretty pretty boys   she calls friends
  F                                   C
    How they danced in the courtyard, sweet summer sweat
  Dm                       E7
    Some dance to remember, some dance to forget

  Am                           E7
    So I called up the captain; Please bring me my wine (he said)
  G                                     D
  We haven't had that spirit here since 1969
  F                                         C
    and still those voices are calling from far away
  Dm
    Wake you up in the middle of the night
  E7
    Just to hear them say...

  [Chorus]
  F                         C
  Welcome to the Hotel California.
        E7                                         Am
  Such a lovely place (such a lovely place), such a lovely face
          F                             C
  They're livin' it up at the Hotel California
        Dm                                               E7
  What a nice surprise (what a nice surprise), bring your alibis

  [Verse]
  Am                        E7
    Mirrors on the ceiling; the pink champagne on ice (and she said)
  G                                D
    We are all just prisoners here, of our own device
  F                              C
    and in the master's chambers, they gathered for the feast
  Dm
  They stab it with their steely knives but they
  E7
  just can't kill the beast

  Am                             E7
    Last thing I remember, I was running for the door
  G                                       D
    I had to find the passage back to the place I was before
  F                                   C
    \"Relax\" said the night man; we are programmed to receive
  Dm
    You can check out any time you like
  E7
  But you can never leave...

  [Outro Solo]
  Am   E7   G   D   F   C   Dm   E7   x3

  [Harmonies]
  Am   E7   G   D   F   C   Dm   E7   x2
  (fade out)
  SONG

  tab_two = <<-SONG
    [Verse 1]

  G             Em             D                         C         G
  Almost Heaven; West Virginia, Blue Ridge Mountains, Shenandoah River.
  G                   Em                     D
  Life is old there, older than the trees, younger than the mountains,
    C              G
  Growin' like a breeze.

  [Chorus]

          G              D            Em         C
  Country Roads, take me home, to the place, I belong,
          G               D             C             G
  West Virginia, mountain mama, take me home, country roads.

  [Verse 2]

  G               Em                 D                 C              G
  All my memories gather 'round her, miner's lady, stranger to blue water.
  G                 Em                  D
  Dark and dusty, painted on the sky, misty taste of moonshine,
    C            G
  Teardrop in my eye.

  [Chorus]

          G              D            Em         C
  Country Roads, take me home, to the place, I belong,
          G               D             C             G
  West Virginia, mountain mama, take me home, country roads.

  [Bridge]

  Em             D            G
    I hear her voice in the morning hour she calls me,
      C        G             D
  The radio reminds me of my home far away.
      Em                F            C
  And driving down the road I get a feeling
        G                     D                 D7
  That I should have been home yesterday, yesterday.

  [Chorus]

  N.C.     G              D            Em         C
  Country Roads, take me home, to the place, I belong,
          G               D             C             G
  West Virginia, mountain mama, take me home, country roads.
          G              D            Em         C
  Country Roads, take me home, to the place, I belong,
          G               D             C             G
  West Virginia, mountain mama, take me home, country roads.
          D                  G              D                  G
  Take me home, down country roads; take me home, down country roads
  SONG

  tab_three = <<-SONG
  [Intro]
  C   D   G   Em   x2
  
  [Verse 1]
            C        D
  I used to rule the world
             G                    Em
  Seas would rise when I gave the word
                       C      D
  Now in the morning I sleep alone
            G                 Em
  Sweep the streets I used to own
  
  [Interlude]
  C   D   G   Em   x2
  
  [Verse 2]
            C        D
  I used to roll the dice
           G                  Em
  Feel the fear in my enemy's eyes
                C           D
  Listen as the crowd would sing:
           G                      Em
  "Now the old king is dead! Long live the king!"
               C        D
  One minute I held the key
           G                    Em
  Next the walls were closed on me
                           C       D
  And I discovered that my castles stand
       G                       Em
  Upon pillars of salt and pillars of sand
  
  [Chorus]
    C              D
  I hear Jerusalem bells are ringing
  G             Em
  Roman Cavalry choirs are singing
  C                D
  Be my mirror, my sword, and shield
     G                 Em
  My missionaries in a foreign field
  C                 D
  For some reason I can't explain
  G                         Em              C      D
  Once you'd gone there was never, never an honest word
           Bm               Em
  That was when I ruled the world
  
  [Interlude]
  C   D   G   Em   x2
  
  [Verse 3]
                        C    D
  It was the wicked and wild wind
                G               Em
  Blew down the doors to let me in
                            C        D
  Shattered windows and the sound of drums
         G                     Em
  People couldn't believe what I'd become
           C      D
  Revolutionaries wait
         G                Em
  For my head on a silver plate
                     C      D
  Just a puppet on a lonely string
      G                         Em
  Oh, who would ever want to be king?
  
  [Chorus]
    C              D
  I hear Jerusalem bells are ringing
  G             Em
  Roman Cavalry choirs are singing
  C                D
  Be my mirror, my sword, and shield
     G                 Em
  My missionaries in a foreign field
  C                 D
  For some reason I can't explain
    G                      Em
  I know Saint Peter won't call my name
           C      D
  Never an honest word
               Bm               Em
  But that was when I ruled the world
  
  [Interlude]
  C   Em   x3
  D   D
  
    C   D    G   Em
  Ohhhhhh  Ohhhhhhh
    C   D    G   Em
  Ohhhhhh  Ohhhhhhh
  
  [Chorus]
    C              D
  I hear Jerusalem bells are ringing
  G             Em
  Roman Cavalry choirs are singing
  C                D
  Be my mirror, my sword, and shield
     G                 Em
  My missionaries in a foreign field
  C                 D
  For some reason I can't explain
    G                      Em
  I know Saint Peter won't call my name
           C      D
  Never an honest word
               Bm               Em
  But that was when I ruled the world
  
  [Outro]
  C    D  Bm   Em
  Oooooh  Ooooooh
  C    D  Bm   Em
  Oooooh  Ooooooh
  SONG
  
  sample_tabs = [tab_one, tab_two, tab_three]

  # destory all the db before creating sample_data
  if Rails.env.development?
    User.destroy_all
    Tab.destroy_all
  end

  # default user
  User.create(email: "alice@example.com", password: "password", admin: true)

  # create 4 more random users 
  4.times do
    name = Faker::Name.first_name.downcase
    User.create(
      email: "#{name}@example.com",
      password: "password",
    )
  end

  100.times do
    Tab.create(
      title: Faker::Music::GratefulDead.song,
      user_id: User.pluck(:id).sample,
      # using sample_format to get the newline and breaks 
      content: simple_format(sample_tabs.sample),
    )
  end

  p "There are now #{User.count} users."
  p "There are now #{Tab.count} tabs."
end

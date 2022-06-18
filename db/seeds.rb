# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create!([
                {
                  title: 'Avengers: Endgame',
                  description:
                  %{
      After the devastating events of Avengers: Infinity War, the universe
      is in ruins. With the help of remaining allies, the Avengers assemble
      once more in order to undo Thanos' actions and restore order to the universe.
    }.squish,
                  released_on: '2019-04-26',
                  rating: 'PG-13',
                  total_gross: 223_641_414,
                  director: 'Anthony Russo',
                  duration: '181 min',
                  youtube_embed_url: 'https://www.youtube.com/embed/AMSITikqKiM?rel=0'
                },
  {
    title: 'Captain Marvel',
    description:
    %{
      Carol Danvers becomes one of the universe's most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.
    }.squish,
    released_on: '2019-03-08',
    rating: 'PG-13',
    total_gross: 101_662_849,
    director: 'Anna Boden',
    duration: '124 min',
    youtube_embed_url: 'https://www.youtube.com/embed/0LHxvxdRnYc?rel=0'
  },
  {
    title: 'Black Panther',
    description:
    %{
      T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.
    }.squish,
    released_on: '2018-02-16',
    rating: 'PG-13',
    total_gross: 224_913_161,
    director: 'Ryan Coogler',
    duration: '134 min',
    youtube_embed_url: 'https://www.youtube.com/watch?v=xjDjIWPwcPU'
  },
  {
    title: 'Avengers: Infinity War',
    description:
    %{
      The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.
    }.squish,
    released_on: '2018-04-27',
    rating: 'PG-13',
    total_gross: 2_048_359_754,
    director: 'Anthony Russo',
    duration: '149 min',
    youtube_embed_url: 'https://www.youtube.com/watch?v=hYW8dPjSfZ8'
  },
  {
    title: 'Green Lantern',
    description:
    %{
      Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts him into an intergalactic police force, the Green Lantern Corps.
    }.squish,
    released_on: '2011-06-17',
    rating: 'PG-13',
    total_gross: 219_851_172,
    director: 'Martin Campbell',
    duration: '114 min',
    youtube_embed_url: 'https://www.youtube.com/watch?v=Aa8BaQxB7sI'
  },
  {
    title: 'Fantastic Four',
    description:
    %{
      Four young outsiders teleport to an alternate and dangerous universe which alters their physical form in shocking ways. The four must learn to harness their new abilities and work together to save Earth from a former friend turned enemy.
    }.squish,
    released_on: '2015-08-07',
    rating: 'PG-13',
    total_gross: 168_257_860,
    director: 'Josh Trank',
    duration: '100 min',
    youtube_embed_url: 'https://www.youtube.com/watch?v=fpjw6QZ4H7I'
  },
  {
    title: 'Iron Man',
    description:
    %{
      When wealthy industrialist Tony Stark is forced to build an
      armored suit after a life-threatening incident, he ultimately
      decides to use its technology to fight against evil.
    }.squish,
    released_on: '2008-05-02',
    rating: 'PG-13',
    total_gross: 585_366_247,
    director: 'Jon Favreau',
    duration: '126 min',
    youtube_embed_url: 'https://www.youtube.com/watch?v=8ugaeA-nMTc'
  },
  {
    title: 'Superman',
    description:
    %{
      An alien orphan is sent from his dying planet to Earth, where
      he grows up to become his adoptive home's first and greatest
      super-hero.
    }.squish,
    released_on: '1978-12-15',
    rating: 'PG',
    total_gross: 300_451_603,
    director: 'Richard Donner',
    duration: '143 min',
    youtube_embed_url: 'https://www.youtube.com/watch?v=grO4OcJ6cgY'
  },
  {
    title: 'Spider-Man',
    description:
    %{
      When bitten by a genetically modified spider, a nerdy, shy, and
      awkward high school student gains spider-like abilities that he
      eventually must use to fight evil as a superhero after tragedy
      befalls his family.
    }.squish,
    released_on: '2002-05-03',
    rating: 'PG-13',
    total_gross: 825_025_036,
    director: 'Sam Raimi',
    duration: '121 min',
    youtube_embed_url: 'https://www.youtube.com/watch?v=TYMMOjBUPMM'
  },
  {
    title: 'Batman',
    description:
    %{
      The Dark Knight of Gotham City begins his war on crime with his
      first major enemy being the clownishly homicidal Joker.
    }.squish,
    released_on: '2030-06-23',
    rating: 'PG-13',
    total_gross: 411_348_924,
    director: 'Tim Burton',
    duration: '126 min',
    youtube_embed_url: 'https://www.youtube.com/watch?v=u34gHaRiBIU'
  },
  {
    title: 'Catwoman',
    description:
    %{
      Patience Philips seems destined to spend her life apologizing for taking up space. Despite her artistic ability she has a more than respectable career as a graphic designer.
    }.squish,
    released_on: '2026-07-23',
    rating: 'PG-13',
    total_gross: 82_102_379,
    director: "Jean-Christophe 'Pitof' Comar",
    duration: '101 min',
    youtube_embed_url: 'https://www.youtube.com/watch?v=d6pJbjbRnAA'
  },
  {
    title: 'Wonder Woman',
    description:
    %{
      When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.
    }.squish,
    released_on: '2025-06-02',
    rating: 'PG-13',
    total_gross: 821_847_012,
    director: 'Patty Jenkins',
    duration: '141 min',
    youtube_embed_url: 'https://www.youtube.com/watch?v=1Q8fG0TtVAY'
  }
              ])

# Create Users
seed_user_password = Rails.application.credentials.dig(:seed_users, :password)
User.create!([
               {
                 name: 'Guest User',
                 username: 'guest',
                 email: 'guest@example.com',
                 password: seed_user_password,
                 password_confirmation: seed_user_password
               },
  {
    name: 'Andrii Mokii',
    username: 'andriimokii',
    email: 'andriimokii@gmail.com',
    password: seed_user_password,
    password_confirmation: seed_user_password,
    admin: true
  }
             ])

# Create reviews and fans for Movies
Movie.find_each do |movie|
  movie.reviews.create!([
                          {
                            stars: rand(1..5),
                            comment: 'Good movie!',
                            user: User.all.sample
                          }
                        ])
  movie.fans << User.all.sample
end

# Create Genres
# [
#   "Action", "Comedy", "Drama", "Romance", "Thriller",
#   "Fantasy", "Documentary", "Adventure", "Animation", "Sci-Fi"
# ].each do |genre|
#   Genre.create!(name: genre)
# end

Genre.create!([
                {
                  name: 'Action',
                  description:
                  %{
      Action film is a film genre in which the protagonist is thrust into a series of events that typically involve violence and physical feats.
      The genre tends to feature a mostly resourceful hero struggling against incredible odds, which include life-threatening situations, a dangerous villain, or a pursuit which usually concludes in victory for the hero. Advancements in computer-generated imagery (CGI) have made it cheaper and easier to create action sequences and other visual effects that required the efforts of professional stunt crews in the past. However, reactions to action films containing significant amounts of CGI have been mixed, as some films use CGI to create unrealistic, highly unbelievable events.[1] While action has long been a recurring component in films, the "action film" genre began to develop in the 1970s along with the increase of stunts and special effects.
    }.squish
                },
  {
    name: 'Comedy',
    description:
    %{
      A comedy film is a category of film which emphasizes humor. These films are designed to make the audience laugh through amusement.[1] Films in this style traditionally have a happy ending (black comedy being an exception). One of the oldest genres in film—and derived from the classical comedy in theatre—some of the earliest silent films were comedies, as slapstick comedy often relies on visual depictions, without requiring sound. When sound films became more prevalent during the 1920s, comedy films took another swing, as laughter could result from burlesque situations but also dialogue.
    }.squish
  },
  {
    name: 'Drama',
    description:
    %{
      In film and television, drama is a category or genre of narrative fiction (or semi-fiction) intended to be more serious than humorous in tone.[1] Drama of this kind is usually qualified with additional terms that specify its particular super-genre, macro-genre, or micro-genre,[2] such as soap opera, police crime drama, political drama, legal drama, historical drama, domestic drama, teen drama, and comedy-drama (dramedy). These terms tend to indicate a particular setting or subject-matter, or else they qualify the otherwise serious tone of a drama with elements that encourage a broader range of moods. To these ends, a primary element in a drama is the occurrence of conflict—emotional, social, or otherwise—and its resolution in the course of the storyline.
    }.squish
  },
  {
    name: 'Romance',
    description:
    %{
      Romance films or movies involve romantic love stories recorded in visual media for broadcast in theatres or on television that focus on passion, emotion, and the affectionate romantic involvement of the main characters. Typically their journey through dating, courtship or marriage is featured. These films make the search for romantic love the main plot focus. Occasionally, romance lovers face obstacles such as finances, physical illness, various forms of discrimination, psychological restraints or family resistance. As in all quite strong, deep and close romantic relationships, the tensions of day-to-day life, temptations (of infidelity), and differences in compatibility enter into the plots of romantic films.[1]
    }.squish
  },
  {
    name: 'Thriller',
    description:
    %{
      Thriller film, also known as suspense film or suspense thriller, is a broad film genre that evokes excitement and suspense in the audience.[1] The suspense element found in most films' plots is particularly exploited by the filmmaker in this genre. Tension is created by delaying what the audience sees as inevitable, and is built through situations that are menacing or where escape seems impossible.[2]
    }.squish
  },
  {
    name: 'Fantasy',
    description:
    %{
      Fantasy films are films that belong to the fantasy genre with fantastic themes, usually magic, supernatural events, mythology, folklore, or exotic fantasy worlds. The genre is considered a form of speculative fiction alongside science fiction films and horror films, although the genres do overlap.[1] Fantasy films often have an element of magic, myth, wonder, escapism, and the extraordinary.[2] Prevalent elements include fairies, angels, mermaids, witches, monsters, wizards, unicorns, dragons, talking animals, ogres, elves, trolls, white magic, gnomes, vampires, werewolves, ghosts, demons, dwarves, giants, goblins, anthropomorphic or magical objects, familiars, curses and other enchantments, worlds involving magic, and the Middle Ages.
    }.squish
  },
  {
    name: 'Documentary',
    description:
    %{
      A documentary film or documentary is a non-fictional motion-picture intended to "document reality, primarily for the purposes of instruction, education or maintaining a historical record".[1] Bill Nichols has characterized the documentary in terms of "a filmmaking practice, a cinematic tradition, and mode of audience reception [that remains] a practice without clear boundaries".[2]
    }.squish
  },
  {
    name: 'Adventure',
    description:
    %{
      An adventure film is form of adventure fiction, and is a genre of film. Subgenres of adventure films include swashbuckler films, pirate films, and survival films. Adventure films may also be combined with other film genres such as action, animation, comedy, drama, fantasy, science fiction, family, horror, or war.[1]
    }.squish
  },
  {
    name: 'Animation',
    description:
    %{
      An animated cartoon is an animated film, usually a short film, featuring an exaggerated visual style. The style takes inspiration from comic strips, often featuring anthropomorphic animals, superheroes, or the adventures of human protagonists (either children or adults). Especially with animals that form a natural predator/prey relationship (e.g. cats and mice, coyotes and birds), the action often centers around violent pratfalls such as falls, collisions, and explosions that would be lethal in real life.
    }.squish
  },
  {
    name: 'Sci-Fi',
    description:
    %{
      Science fiction (sometimes shortened to sci-fi or SF) is a genre of speculative fiction which typically deals with imaginative and futuristic concepts such as advanced science and technology, space exploration, time travel, parallel universes, and extraterrestrial life. It has been called the "literature of ideas", and it often explores the potential consequences of scientific, social, and technological innovations.[1][2]
    }.squish
  }
              ])

# Assign each Genre to Movie
Movie.find_each do |movie|
  movie.genres << Genre.all.sample
end

# Active Storage for Movies
[
  ['Avengers: Endgame', 'avengers-end-game.png'],
  ['Captain Marvel', 'captain-marvel.png'],
  ['Black Panther', 'black-panther.png'],
  ['Avengers: Infinity War', 'avengers-infinity-war.png'],
  ['Green Lantern', 'green-lantern.png'],
  ['Fantastic Four', 'fantastic-four.png'],
  ['Iron Man', 'ironman.png'],
  ['Superman', 'superman.png'],
  ['Spider-Man', 'spiderman.png'],
  ['Batman', 'batman.png'],
  ['Catwoman', 'catwoman.png'],
  ['Wonder Woman', 'wonder-woman.png']
].each do |movie_title, file_name|
  movie = Movie.find_by!(title: movie_title)
  file = File.open(Rails.root.join("app/assets/images/#{file_name}"))
  movie.main_image.attach(io: file, filename: file_name,
                          content_type: 'image/png')
end

# Active Storage for Genres
[
  ['Action', 'action.jpg'],
  ['Comedy', 'comedy.jpg'],
  ['Drama', 'drama.jpg'],
  ['Romance', 'romance.jpg'],
  ['Thriller', 'thriller.jpeg'],
  ['Fantasy', 'fantasy.jpg'],
  ['Documentary', 'documentary.jpg'],
  ['Adventure', 'adventure.jpg'],
  ['Animation', 'animation.jpeg'],
  ['Sci-Fi', 'sci-fi.jpg']
].each do |genre_name, file_name|
  genre = Genre.find_by!(name: genre_name)
  file = File.open(Rails.root.join("app/assets/images/#{file_name}"))
  genre.main_image.attach(io: file, filename: file_name,
                          content_type: 'image/jpeg')
end

# Active Admin
AdminUser.create!(
  email: 'admin@example.com',
  password: seed_user_password,
  password_confirmation: seed_user_password
)

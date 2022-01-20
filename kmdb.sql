-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
DROP TABLE IF EXISTS movies
DROP TABLE IF EXISTS cast_crew
DROP TABLE IF EXISTS awards

-- Create new tables, according to your domain model
CREATE TABLE movies(
    id int,
    title varchar(255),
    year int,
    rating varchar(255),
    director varchar(255)
)

CREATE TABLE cast_crew(
    id int,
    movie_title varchar(255),
    movie_role varchar(255),
    name varchar(255)
)

CREATE TABLE awards(
    id int,
    movie_title varchar(255),
    cast_crew_name varchar(255),
    award varchar(255)
)

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
INSERT INTO movies VALUES(1, "Batman Begins", "2005", "PG-13", "Christopher Nolan")
INSERT INTO movies VALUES(2, "The Dark Knight", "2008", "PG-13", "Christopher Nolan")
INSERT INTO movies VALUES(3, "The Dark Knight Rises", "2012", "PG-13", "Christopher Nolan")

INSERT INTO cast_crew VALUES(1, "Batman Begins", "Composer", "Hans Zimmer")
INSERT INTO cast_crew VALUES(2, "Batman Begins", "Bruce Wayne", "Christian Bale")
INSERT INTO cast_crew VALUES(3, "Batman Begins", "Alfred", "Michael Caine")
INSERT INTO cast_crew VALUES(4, "Batman Begins", "Story Writer", "David Goyer")
INSERT INTO cast_crew VALUES(13, "Batman Begins", "Cinematographer", "Wally Pfister")
INSERT INTO cast_crew VALUES(5, "The Dark Knight", "Composer", "Hans Zimmer")
INSERT INTO cast_crew VALUES(6, "The Dark Knight", "Bruce Wayne", "Christian Bale")
INSERT INTO cast_crew VALUES(14, "The Dark Knight", "The Joker", "Heath Ledger")
INSERT INTO cast_crew VALUES(15, "The Dark Knight", "Sound Editor", "Richard King")
INSERT INTO cast_crew VALUES(7, "The Dark Knight", "Alfred", "Michael Caine")
INSERT INTO cast_crew VALUES(8, "The Dark Knight", "Story Writer", "David Goyer")
INSERT INTO cast_crew VALUES(9, "The Dark Knight Rises", "Composer", "Hans Zimmer")
INSERT INTO cast_crew VALUES(10, "Batman Begins Rises", "Bruce Wayne", "Christian Bale")
INSERT INTO cast_crew VALUES(11, "Batman Begins Rises", "Alfred", "Michael Caine")
INSERT INTO cast_crew VALUES(12, "Batman Begins Rises", "Story Writer", "David Goyer")

INSERT INTO awards VALUES(1, "Batman Begins", "Wally Pfister", "Best Cinematography")
INSERT INTO awards VALUES(2, "The Dark Knight", "Heath Ledger", "Best Supporting Actor")
INSERT INTO awards VALUES(3, "The Dark Knight", "Richard King", "Sound Mixing")

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!
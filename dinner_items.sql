DROP DATABASE IF EXISTS dinner_items;
CREATE DATABASE dinner_items;

\c dinner_items;

--Make table to hold the player information
CREATE TABLE food_list(
    food_id SERIAL PRIMARY KEY,
    food_name TEXT,
    category TEXT,
    flavor TEXT
    );
--View that holds the overall standings including name, id, wins, matches in order of most wins
CREATE VIEW milk_options AS (
    SELECT food_id, food_name, category
    FROM food_list
    WHERE flavor = 'milk'
    );
--View containing only the information that will be needed to determine the next pairings
CREATE VIEW meat_options AS (
    SELECT food_id, food_name, category
    FROM food_list
    WHERE flavor = 'meat'
    );

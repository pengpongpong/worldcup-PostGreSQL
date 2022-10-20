#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do 
#insert teams
if [[ $WINNER != "winner" ]]
  then
    WINNERTEAM=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    if [[ -z $WINNERTEAM ]]
      then 
        INSERT_TEAMS_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
        if [[ $INSERT_TEAMS_WINNER == "INSERT 0 1" ]]
          then 
            echo Inserted winners, $WINNER
        fi  
    fi
    OPPONENTTEAM=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    if [[ -z $OPPONENTTEAM ]]
      then
        INSERT_TEAMS_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
        if [[ $INSERT_TEAMS_OPPONENT == "INSERT 0 1" ]]
          then
            echo Inserted opponent, $OPPONENT
        fi
    fi
fi
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
#get winner_id
WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
#get oppenent_id
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
#insert year, round, winner_id, opponent_id, winner_goals, opponent_goals
if [[ $YEAR != year ]]
  then 
    INSERT_GAME_DATA=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_GAME_DATA == "INSERT 0 1" ]]
      then
        echo Inserted data, $YEAR, $ROUND, $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS
    fi
fi
done

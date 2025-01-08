#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
else

  # Check if the input is a number (atomic_number) or a string (symbol or name)
  if [[ $1 =~ ^[0-9]+$ ]]; then
    # Input is a number, query by atomic number
    CONDITION="e.atomic_number = $1"
  else
    # Input is a string, query by symbol or name
    CONDITION="e.symbol = '$1' OR e.name = '$1'"
  fi


  RESULT=$($PSQL "SELECT 
      e.atomic_number, 
      e.name, 
      e.symbol, 
      p.atomic_mass, 
      t.type, 
      p.melting_point_celsius, 
      p.boiling_point_celsius
  FROM 
      elements e
  JOIN 
      properties p ON e.atomic_number = p.atomic_number
  JOIN 
      types t ON p.type_id = t.type_id
  WHERE 
      $CONDITION
  LIMIT 1;")

  # Check if a result was found
  if [[ -z $RESULT ]]; then
    echo "I could not find that element in the database."
    exit
  fi

  # Parse the result
  IFS="|" read -r ATOMIC_NUMBER NAME SYMBOL ATOMIC_MASS TYPE MELTING_POINT BOILING_POINT <<< "$RESULT"

  # Output the information
  echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
fi
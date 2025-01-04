#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=salon -t -c"

MAIN_MENU() {
 if [[ ! -z $1 ]]
 then
    echo -e "$1\n"
 fi

LIST_OF_SERVICES=$($PSQL "SELECT * FROM services;")
echo "$LIST_OF_SERVICES" | while IFS=' ' read SERVICE_ID BAR SERVICE_NAME
do
  echo "$SERVICE_ID) $SERVICE_NAME"
done

read SERVICE_ID_SELECTED

#check if service exist
SERVICE_EXIST=$($PSQL "SELECT * from services where service_id=$SERVICE_ID_SELECTED")

if [[ -z $SERVICE_EXIST ]]
then
# if does not exit 
  #send to main menu
  MAIN_MENU "\nI could not find that service. What would you like today?"
else
# if exist
  echo -e "\nWhat's your phone number?"
  #ask for phone number
  read CUSTOMER_PHONE
  # check if customer exist
  NAME=$($PSQL "SELECT name from customers where phone='$CUSTOMER_PHONE';")
  
  CUSTOMER_NAME=$(echo $NAME | sed 's/ //g')
  if [[ -z $CUSTOMER_NAME ]]
  then
    # if do not exit 
      # ask for name
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      # insert new customer
      INSERT_CUSOMTER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE');")
  fi   

  GET_SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  SERVICE_NAME=$(echo $GET_SERVICE_NAME| sed 's/ //g')
  CUSTOMER_ID=$($PSQL "SELECT customer_id from customers where phone='$CUSTOMER_PHONE';")
  

  echo -e "\nWhat time would you like your cut, $CUSTOMER_NAME?"
  # ask for time
  read SERVICE_TIME
  # add appointment
  INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME' );" )
  echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."

fi

}

echo -e "\n~~~~~ MY SALON ~~~~~\n"
MAIN_MENU "Welcome to My Salon, how can I help you?"


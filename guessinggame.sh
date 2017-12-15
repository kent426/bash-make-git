function promptandcal {
  read numoffile
  if [[ ! $numoffile =~ ^(-)?[0-9]+$ ]]
  then
    echo -e "ERROR:please enter an integer.\n"
    return -1
  fi
  answer=$(ls -al | grep "^-" | wc -l)
  if [[ $numoffile -eq $answer ]]
  then
    return 0
  elif [[ $numoffile -lt $answer ]]
  then
    echo -e "HINT:less than the #.\n"
    return 1
  else
    echo -e "HINT:more than the #.\n"
    return 2
  fi
}

echo "enter the # of files in this directory:"
promptandcal
while  [[ $? -ne 0 ]]
do
  echo "enter the # of files in this directory:"
  promptandcal
done

echo "congratulation. You won."

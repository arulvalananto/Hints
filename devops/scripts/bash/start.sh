
echo "Setup and configure user permissions"

file_name=config.yaml

if [ -d "config" ]
then
  echo "reading config directory contents"
  config_files=$(ls config)
#elif [ -d "remote" ]
#then
  #echo "no remote directory found"
  #mkdir remote
else 
  echo "No config directory found. Creating one"
  mkdir config
fi

echo "using file $file_name to configure something"
echo "there are the config files: $config_files"


# positional parameters

user_group=$1 # first argument passed to the script
echo "first argument $user_group"

# read user input

echo "Reading user input"

read -p "Please enter your password: " user_pwd

echo "password is: $user_pwd"

# read all passing parameters

echo "all params $*"
echo "number of params $#"

# for loop
for param in $*
 do
  echo "param: $param"
 done

#while loop

while [ -d "config" ]
 do
  echo "hello world"
  rm -rf config
 done

# functions

function score_sum {
 sum=0
 while true
  do
    read -p "enter a score: " score
   
    if [ "$score" == "q" ]
    then
      break
    fi
  
    sum=$(($sum+$score))
    echo "total score: $sum"
  done    
}

score_sum

# functions with params or arguments

function create_file() {
  file_name=$1
  touch $file_name
}

create_file test.txt


















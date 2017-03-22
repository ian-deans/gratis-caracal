printf "\e[36m Running scripts for first set of exercises....\e[39m\n\n"

for EXERCISE in exercise{2,4,5,6,7,8,9,10,11,13,14,15,16,17}.sh; do
  printf "\n\e[32m Do you want to run ${EXERCISE}? (y/n)\e[39m\n"
  read yn
  case $yn in
    [Yy]* ) . "$EXERCISE"; continue;;
    [Nn]* ) continue;;
    * ) echo "Please answer yes or no.";;
  esac
done

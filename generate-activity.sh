touch changes.txt

while getopts c: flag
do
    case "${flag}" in
        c) commits=${OPTARG};;
    esac
done

for value in $(seq 1 $commits);
do

  echo "Change at $value" >> changes.txt
  git commmit -am "Activity $(date)"
done

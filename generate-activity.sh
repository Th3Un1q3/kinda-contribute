touch changes.txt

while getopts c: flag
do
    case "${flag}" in
        c) commits=${OPTARG};;
    esac
done

for value in $(seq 1 $commits)
do
  echo "Change at $value" >> changes.txt
  git add changes.txt
  git commit -m "Activity $(date) $value"
done

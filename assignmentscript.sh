#usage: bash assignmentscript.sh

#for task 1: sort wages.csv by gender and yearsExperience and print unique combos to new file

echo "Task 1:"

cat wages.csv | cut -d , -f 1,2 | sed 's/,/ /g' | sort -k1,1d -k2,2n | uniq > gender-yearsExperience.csv | echo "File created with gender and yearsExperience combinations"



#for task 2: print highest and lowest earner and number of females in top ten earners to stdout

echo "Task 2:"

#prints highest earner
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | sort -k3,3n | echo "Highest Earner: $(tail -n 1)"

#prints lowest earner
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | sort -k3,3n | grep -v "gender" | echo "Lowest Earner: $(head -n 1)"

#prints number of females in top ten earners
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | sort -k3,3n | tail -n 10 | grep -n "female" | echo "$(wc -l) females in top ten earners"


#for task 3: 

echo "Task 3:"

cat wages.csv | cut -d , -f 3,4 


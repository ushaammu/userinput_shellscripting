# userinput_shellscripting
USER INPUT VALIDATION
📌 Script Explanation – user_input.sh

This script takes name and age from the user and performs proper validations before printing the final message.


---

1️⃣ Reading User Input

read -p "enter ur name:" name  
read -p "enter ur age:" age

✔ read -p shows a prompt and stores user input in variables name and age.


---

2️⃣ Check if Name is Empty

if [[ -z "$name" ]]; then
    echo "name cannot be empty"
    exit 1
fi

✔ -z checks if the string is empty
✔ If name is empty → show error → exit script


---

3️⃣ Validate Name Format

if [[ ! "$name" =~ ^[A-Za-z ]+$ ]]; then
    echo "invalid value .....enter the proper name"
    exit 1
fi

✔ Uses regex to allow only letters and spaces
✔ If anything else (numbers, symbols) → show error → exit


---

4️⃣ Validate Age

if [[ ! "$age" =~ ^[0-9]+$ ]] || (( age < 1 || age > 100 )); then
    echo "invalid age"
    exit 1
fi

This line performs two checks:

A. Age should contain only digits

^[0-9]+$ → only numbers allowed

B. Age must be between 1 and 100

(( age < 1 || age > 100 )) → numeric comparison

If any condition fails → show error → exit


---

5️⃣ Final Output

echo "hello $name your are $age years old"

✔ If all validations pass → display greeting message

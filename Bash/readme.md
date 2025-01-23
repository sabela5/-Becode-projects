
Exercise
Friend Bot - Your Friendly Bash Script Companion
A friendly shell script that can perform various tasks, including telling jokes, displaying the current time, performing simple calculations, and fetching the weather. Using both both an **interactive** and **non-interactive** interface.
### **Usage** 
- Interactive: Allows continuous commands until you exit.
		`./friend.sh --interactive`
		 `>joke`
		 
- Non-Interactive: Executes a single command directly.
		`./friend.sh joke # Tells a random joke 
		`./friend.sh time # Displays the current date and time`

### **Files** 

- friend.sh
- jokes.txt

- ## **Setup**

### **1. Prerequisites**

Ensure the following tools are installed on your system:

- `curl` (for fetching weather updates)
- `bc` (for math calculations)
- `shuf` (for random joke selection)

### 2. Make the Script Executable

			`chmod +X friend.sh`

### 3. Adding  to my PATH
##### **For Zsh:**
Add this line to `~/.zshrc`:
		`export PATH=$PATH:/path/to/my/script`
**Reload my shell configuration:**
		`source ~/.zshrc # For Zsh`

## **File Structure**

			`.`
`├── friend.sh     # Main script`
`├── jokes.txt     # List of jokes`
`└── README.md     # Project documentation`

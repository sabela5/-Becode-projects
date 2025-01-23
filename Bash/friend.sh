			#!/bin/bash

# Function to print usage
usage() {
    echo "Usage: $0 [--interactive] <command>"
    echo "Commands:"
    echo "  joke           - Tell a random joke."
    echo "  time           - Display the current date and time."
    echo "  calc <expr>    - Calculate a simple equation."
    echo "  weather        - Get current weather info."
}

# Interactive mode
interactive_mode() {
    echo "Hello! I'm your friend. Type 'exit' to quit."
    File
    while true; do
        echo -n "> "
        read input
        case "$input" in
            "joke") tell_joke ;;
            "time") tell_time ;;
            "weather") get_weather ;;
            "exit") echo "Goodbye!"; break ;;
            "calc"*) calculate "${input#calc }" ;;
            *) echo "Unknown command: $input";;
        esac
    done
}

# Command functions
tell_joke() {
    shuf -n 1 jokes.txt
}

tell_time() {
    date
}

calculate() {
    echo "$1" | bc -l
}

get_weather() {
    curl -s "https://wttr.in/?format=3"
}

# Main script logic
if [[ "$1" == "--interactive" ]]; then
    interactive_mode
elif [[ "$#" -gt 0 ]]; then
    case "$1" in
        "joke") tell_joke ;;
        "time") tell_time ;;
        "calc") calculate "$2" ;;
        "weather") get_weather ;;
        *) usage ;;
    esac
else
    usage
fi

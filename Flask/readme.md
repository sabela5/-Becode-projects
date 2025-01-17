# Flask Contact Form Application

## Overview
This project demonstrates the implementation of a **Contact Form** using the Flask framework. The application handles form submissions securely and provides feedback to users. Key features include sanitization, validation, and the honeypot anti-spam technique. The form is processed entirely on the server side without using JavaScript or CSS.

---

## Features
- **Form Fields**:
  - First Name & Last Name (Text)
  - Email (Text)
  - Country (Dropdown)
  - Gender (Radio buttons)
  - Message (Text area)
  - Subject (Checkboxes)
- **Backend Processing**:
  - Sanitization to neutralize harmful inputs (e.g., `<script>`).
  - Validation for mandatory fields and valid email format.
  - Honeypot anti-spam technique.
- **Feedback**:
  - Displays error messages near invalid fields.
  - Preserves valid input when errors occur.
  - Summarizes user-submitted data on success.
- **Security**:
  - Protects against XSS (Cross-Site Scripting).
  - Prevents SSTI (Server-Side Template Injection).

---

## Project Architecture
This project follows a **server/client architecture**:
- **Client (Browser)**:
  - Displays the form for user input.
  - Sends requests to the server via HTTP (GET/POST).
  - Receives responses to display errors or feedback.
- **Server (Flask Application)**:
  - Processes user input (sanitization, validation).
  - Implements anti-spam and security features.
  - Returns appropriate responses (error messages or success feedback).

---

## Prerequisites
- Python 3.x
- Flask
- Gunicorn (for deployment)

---


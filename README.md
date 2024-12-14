# Chatbot Interface

This project implements a chatbot interface with a user-friendly front-end and server-side API communication. Users can interact with the chatbot by typing their queries into an input box and receiving real-time responses.

## Features

- Interactive web-based chatbot interface.
- Input validation to ensure meaningful user interaction.
- Asynchronous communication with the backend API.
- Auto-scrolling chat box for optimal user experience.

---

## How It Works

1. **User Interaction**: Users input their questions into the text box and click the "Send" button.
2. **Input Validation**: The `send-btn` event listener verifies if the input is valid (not empty).
3. **Server Communication**: The input query is sent to the `/chatbot` endpoint via a `POST` request, encoded as JSON.
4. **Response Handling**:
   - The server sends back a JSON response.
   - The response is displayed dynamically in the chat interface.
   - Auto-scroll ensures the latest messages are always visible.

---

## Core Code Explanation

The following JavaScript handles the input validation, API interaction, and chat updates:

```javascript
document.getElementById('send-btn').addEventListener('click', async () => {
    const userInput = document.getElementById('user-input').value;
    if (!userInput.trim()) {
        alert('Please enter a question!');
        return;
    }
    const response = await fetch('/chatbot', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ query: userInput })
    });
    const data = await response.json();
    const messages = document.getElementById('messages');
    messages.innerHTML += `<p><b>User:</b> ${userInput}</p>`;
    messages.innerHTML += `<p><b>T-Rex(Chatbot):</b> ${data.response}</p>`;
    document.getElementById('user-input').value = '';
    messages.scrollTop = messages.scrollHeight; // Auto-scroll to the bottom
});
```

---

## Getting Started

### Prerequisites

- A modern browser (e.g., Chrome, Firefox, Edge).
- A backend server with an endpoint `/chatbot` that accepts `POST` requests and returns JSON responses.

### Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/your-repo/chatbot-interface.git
   ```

2. Navigate to the project directory:

   ```bash
   cd chatbot-interface
   ```

3. Open `index.html` in your browser.

4. Ensure the backend server is running and listening at `/chatbot`.

---

## Usage

1. Open the chatbot interface in your browser.
2. Enter a question or message in the input field.
3. Click the "Send" button to submit your query.
4. View the chatbot's response within the chat window.

---

## API Endpoint

- **POST** `/chatbot`
  - **Request Body**:
    ```json
    {
        "query": "Your question here"
    }
    ```
  - **Response**:
    ```json
    {
        "response": "Chatbot's reply"
    }
    ```

---

## Future Improvements

- Add natural language processing for enhanced chatbot intelligence.
- Store chat history locally or on the server.
- Enhance UI/UX with animations and themes.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Acknowledgments

- Thanks to all contributors and open-source libraries that made this project possible.
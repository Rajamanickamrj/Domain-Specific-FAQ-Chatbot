document.getElementById('send-btn').addEventListener('click', async () => {
    const userInput = document.getElementById('user-input').value;
    if (!userInput.trim()) {
        alert('Please enter a question!');
        return;
    }
    const response = await fetch('/chatbot', {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({query: userInput})
    });
    const data = await response.json();
    const messages = document.getElementById('messages');
    messages.innerHTML += `<p><b>User:</b> ${userInput}</p>`;
    messages.innerHTML += `<p><b>T-Rex(Chatbot):</b> ${data.response}</p>`;
    document.getElementById('user-input').value = '';
    messages.scrollTop = messages.scrollHeight; // Auto-scroll to the bottom
});

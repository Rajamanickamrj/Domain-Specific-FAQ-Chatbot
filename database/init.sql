CREATE DATABASE chatbot;

USE chatbot;

CREATE TABLE faqs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL
);

-- Add initial FAQ data
INSERT INTO faqs (question, answer) VALUES
('What are the visiting hours?', 'Visiting hours are from 8 AM to 8 PM.'),
('How can I book an appointment?', 'You can book an appointment through our website or by calling us.'),
('What are the available departments?', 'We have Cardiology, Neurology, Pediatrics, and more.'),
('Is parking available?', 'Yes, we have free parking for all visitors.');

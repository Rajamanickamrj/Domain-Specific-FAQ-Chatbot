import pickle
import mysql.connector
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.linear_model import LogisticRegression
from sklearn.pipeline import Pipeline

# File paths
MODEL_PATH = 'app/model.pkl'

# MySQL connection configuration
MYSQL_CONFIG = {
    'host': 'localhost',
    'user': 'change',
    'password': 'Change',
    'database': 'chatbot'
}

def fetch_data():
    """
    Fetches data (questions and answers) from the MySQL database.
    Returns:
        list: A list of tuples containing questions and answers.
    """
    conn = mysql.connector.connect(**MYSQL_CONFIG)
    cursor = conn.cursor()
    cursor.execute("SELECT question, answer FROM faqs")
    data = cursor.fetchall()
    conn.close()
    return data

def train_model():
    """
    Trains the machine learning model using data from the database.
    Saves the trained model to a pickle file.
    """
    # Fetch data from the database
    data = fetch_data()
    if not data:
        raise ValueError("No data found in the database for training!")

    # Separate data into questions and answers
    questions = [item[0] for item in data]
    answers = [item[1] for item in data]

    # Create an NLP pipeline with TF-IDF and Logistic Regression
    pipeline = Pipeline([
        ('tfidf', TfidfVectorizer(stop_words='english')),
        ('clf', LogisticRegression())
    ])

    pipeline.fit(questions, answers)

    # Save the model to a file
    with open(MODEL_PATH, 'wb') as file:
        pickle.dump(pipeline, file)
    print("Model trained and saved successfully!")

def load_model():
    """
    Loads the trained model from the pickle file.
    Returns:
        Pipeline: The trained model.
    """
    with open(MODEL_PATH, 'rb') as file:
        model = pickle.load(file)
    return model

def predict_answer(query):
    """
    Predicts the answer for a given query using the trained model.
    Args:
        query (str): The user's input question.
    Returns:
        str: The predicted answer.
    """
    model = load_model()
    prediction = model.predict([query])[0]
    return prediction

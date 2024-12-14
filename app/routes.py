from flask import Blueprint, render_template, request, jsonify
from .ml_model import predict_answer
from .preprocess import clean_text

main = Blueprint('main', __name__)

@main.route('/')
def home():
    return render_template('index.html')

@main.route('/chatbot', methods=['POST'])
def chatbot():
    user_query = request.json.get('query')
    cleaned_query = clean_text(user_query)
    response = predict_answer(cleaned_query)
    return jsonify({"response": response})

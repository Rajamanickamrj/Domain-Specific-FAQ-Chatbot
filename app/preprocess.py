import re

def clean_text(text):
    """Clean text by removing special characters and converting to lowercase."""
    text = re.sub(r'[^\w\s]', '', text)
    text = text.lower().strip()
    return text

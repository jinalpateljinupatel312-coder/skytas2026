import re 
class InvalidEmailError(Exception):
    pass

def validate_email(email):
    """
    Validates the email format.
    Raises InvalidEmailError if the format is incorrect.
    """

    pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
    
    if not re.match(pattern, email):
        raise InvalidEmailError(f"Invalid email format: {email}")
    return True


emails_to_test = ["john.doe@example.com", "invalid-email@", "user@domain"]

for email in emails_to_test:
    try:
        validate_email(email)
        print(f"Valid email: {email}")
    except InvalidEmailError as e:
        print(f"Error: {e}")  

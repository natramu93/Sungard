# import base64
#
# def Encode_Password(a):
#     return base64.b64encode(a)
#
# def Decode_password(a):
#     return base64.b16decode(a)
from cryptography.fernet import Fernet

def encrypt(input):
    key = Fernet.generate_key()
    cipher_suite = Fernet(key)
    cipher_text = cipher_suite.encrypt(bytes(input))
    return cipher_text , key

def decrypt(crypt, key):
    cipher_suite = Fernet(key)
    plain_text = cipher_suite.decrypt(crypt)
    return plain_text

print(decrypt("gAAAAABbpddKrGPF8sGKb6CjKzQY2ZgyqLDM1oBOgmZKU_UJNXwUIF9968w8OiR1VoU9kKIbYuCR4wcwbsiPaPdStJmTlXCXaA==","5tXtyWKnKHD5Q_0nVtqB21BpKReftPi9IPNfKIHr1B8="))

import os
import sys
from cryptography.hazmat.primitives import hashes, padding
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes


ALGORITHMS = [ "AES-128", "ChaCha20" ]

class Data_cipher:
    def __init__(self, data, cipher,cipher_key):
        self.data = data
        self.cipher = cipher
        self.cipher_key = cipher_key

###############################################

def encrypt_function(data,cipher_key):
    salt = os.urandom(32)
    iv = os.urandom(16)
    
    if cipher_key == "AES-128":
        cipher = Cipher(algorithms.AES(salt), modes.CBC(iv))
    elif cipher_key == "ChaCha20":
        cipher = Cipher(algorithms.ChaCha20(salt,iv),mode=None)
    
    encryptor = cipher.encryptor()
    
    # padding
    if cipher_key == "AES-128":
        padder = padding.PKCS7(128).padder()
        padded_data = padder.update(data) + padder.finalize()
        encrypted_data = encryptor.update(padded_data) + encryptor.finalize()
    elif cipher_key == "ChaCha20":
        encrypted_data = encryptor.update(data) + encryptor.finalize()
    
    
    return Data_cipher(encrypted_data,cipher,cipher_key)



def decrypt_function(object_ct):
    data = object_ct.data
    cipher = object_ct.cipher
    cipher_key = object_ct.cipher_key
    
    
    decrypted_data = cipher.decryptor()
    return decrypted_data.update(data)
    

 ###############################################   

def main():
    # check argv < 3
    if not len(sys.argv) < 4:
        print("Usage: python3 cipher-funtion.py <input_file> <key_gen_name> (mode)")
        exit(1)
        
    # read argv
    filename = sys.argv[1]
    cipher_key = sys.argv[2]
    
    if cipher_key not in ALGORITHMS:
        print("Error - Invalid algorithm specified")        
        exit(1)
    
    # check if files exists
    if not os.path.exists(sys.argv[1]):
        exit(1)
    
    # read file
    file = open(filename,'rb')
    plaintext = file.read()
    
    # encrypt the context of the file
    object_ct = encrypt_function(plaintext,cipher_key)
    
    print("\nKEY "+str(object_ct.cipher_key)+":\n"+str(object_ct.data))
    
    input()
    
    decrypted_data = decrypt_function(object_ct)
    
    
    
    
    
if __name__ == "__main__":
    main()

import os
import sys
from cryptography.hazmat.primitives import hashes, padding
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes


ALGORITHMS = [ "AES128", "ChaCha20" ]

class Data_cipher:
    def __init__(self, data, cipher,cipher_key):
        self.data = data
        self.cipher = cipher
        self.cipher_key = cipher_key

###############################################

def encrypt_function(data,cipher_key):
    key = os.urandom(32)
    iv = os.urandom(16)
    
    if cipher_key == "AES128":
        cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
    elif cipher_key == "ChaCha20":
        cipher = Cipher(algorithms.ChaCha20(key,iv),mode=None)
    
    encryptor = cipher.encryptor()
    
    # padding
    if cipher_key == "AES128":
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
    
    if cipher_key == "AES128":
        unpadder = padding.PKCS7(128).unpadder()
        unpadded_data = unpadder.update(data) + unpadder.finalize()
        decrypted_data = cipher.decryptor()
        return decrypted_data.update(unpadded_data) + decrypted_data.finalize()
    
    elif cipher_key == "ChaCha20":
        decrypted_data = cipher.decryptor()
        return decrypted_data.update(data)
    

 ###############################################   

def main():
    # check argv < 4
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
    
    print("\nKEY "+str(object_ct.cipher_key)+": (encrypt)\n"+str(object_ct.data))
    
    input()
    
    decrypted_data = decrypt_function(object_ct)
    
    # Since decrypted data starts with b' ... (means it will be in binary), i need to decode it in utf-8 again,so i use an auxiliar file to write and reading and after that it it will be deleted
    with open("aux.txt", 'wb') as output_file:
        output_file.write(decrypted_data)
        output_file.close()
        
        data_utf8 = str(open("aux.txt",'r').read())
        print("\nKEY "+str(object_ct.cipher_key)+": (decrypt)\n"+str(data_utf8))
        
        # delete aux.txt file
        os.popen("rm aux.txt")
    
    
    
    
    
    
if __name__ == "__main__":
    main()

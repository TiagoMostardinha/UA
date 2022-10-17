import os
import sys
from cryptography.hazmat.primitives import hashes, padding
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes


ALGORITHMS = [ "AES-128", "ChaCha20" ]
ALG_TYPES= ["CBC", "ECB", "OFB","CFB"]

class Data_cipher:
    def __init__(self, data, cipher,cipher_key,mode):
        self.data = data
        self.cipher = cipher
        self.cipher_key = cipher_key
        self.mode = mode

###############################################

def encrypt_function(object_ct):
    key = os.urandom(32)
    iv = os.urandom(16)
    
    if object_ct.cipher_key == "AES-128":
        if object_ct.mode == "CBC":
            object_ct.cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
        if object_ct.mode == "ECB":
            object_ct.cipher = Cipher(algorithms.AES(key), modes.ECB())
        if object_ct.mode == "OFB":
            object_ct.cipher = Cipher(algorithms.AES(key), modes.OFB(iv))
        if object_ct.mode == "CFB":
            object_ct.cipher = Cipher(algorithms.AES(key), modes.CFB(iv))
    elif object_ct.cipher_key == "ChaCha20":
        object_ct.cipher = Cipher(algorithms.ChaCha20(key,iv),mode=None)
    
    encryptor = object_ct.cipher.encryptor()
    
    # padding
    if object_ct.cipher_key == "AES-128":
        padder = padding.PKCS7(128).padder()
        padded_data = padder.update(object_ct.data) + padder.finalize()
        encrypted_data = encryptor.update(padded_data) + encryptor.finalize()
    elif object_ct.cipher_key == "ChaCha20":
        encrypted_data = encryptor.update(object_ct.data) + encryptor.finalize()
    
    
    return Data_cipher(encrypted_data,object_ct.cipher,object_ct.cipher_key,object_ct.mode)



def decrypt_function(object_ct):
    data = object_ct.data
    cipher = object_ct.cipher
    cipher_key = object_ct.cipher_key
    
    if cipher_key == "AES-128":
        unpadder = padding.PKCS7(128).unpadder()
        unpadded_data = unpadder.update(data)
        decrypted_data = cipher.decryptor()
        return decrypted_data.update(unpadded_data) + decrypted_data.finalize()
    
    elif cipher_key == "ChaCha20":
        decrypted_data = cipher.decryptor()
        return decrypted_data.update(data)
    

def to_file(data,name):
    with open(name, 'wb') as output_file:
        output_file.write(data)
        output_file.close()

 ###############################################   

def main():
    # check argv < 5
    if not len(sys.argv) < 5 and len(sys.argv) > 2:
        print("Usage: python3 cipher-funtion.py <input_file> <key_gen_name> <mode>")
        exit(1)
        
    # read argv
    filename = sys.argv[1]
    cipher_key = sys.argv[2]
    
    if len(sys.argv) == 3:
        mode = "CBC"
    else:
        mode = sys.argv[3]
    
    if cipher_key not in ALGORITHMS:
        print("Error - Invalid algorithm specified")        
        exit(1)
    
    if mode not in ALG_TYPES:
        print("Error - Invalid mode specified")        
        exit(1)
    
    # check if files exists
    if not os.path.exists(sys.argv[1]):
        exit(1)
    
    # read file
    file = open(filename,'rb')
    plaintext = file.read()
    
    # encrypt the context of the file
    object_ct = encrypt_function(Data_cipher(plaintext,None,cipher_key,mode))
    
    print("\nKEY "+str(object_ct.cipher_key)+": (encrypt)\n"+str(object_ct.data))
    
    to_file(object_ct.data,"p_enc.bmp")
    
    input()
    
    decrypted_data = decrypt_function(object_ct)
    
    to_file(decrypted_data,"dec.bmp")
    
    
    
    
    
    
    
    
if __name__ == "__main__":
    main()

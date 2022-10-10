import os
import sys
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes


def encrypt_function(plaintext):
    key = os.urandom(32)
    iv = os.urandom(16)
    
    cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
    encryptor = cipher.encryptor()
    # the buffer needs to be at least len(data) + n - 1 where n is cipher/mode block size in bytes
    buf = bytearray(len(plaintext))
    len_encrypted = encryptor.update_into(plaintext, buf)
    # get the ciphertext from the buffer reading only the bytes written to it (len_encrypted)
    return bytes(buf[:len_encrypted]) + encryptor.finalize()
    

def main():
    # check argv < 3
    if not len(sys.argv) < 3:
        exit(1)
        
    # read argv
    filename = sys.argv[1]
    # cypher_key = sys.argv[2]
    
    # check if files exists
    if not os.path.exists(sys.argv[1]):
        exit(1)
    
    # read file
    file = open(filename,'rb')
    plaintext = file.read()
    
    # encrypt the context of the file
    ct = encrypt_function(plaintext)
    
    print(ct)
    
    
    
    
    
    
    
    
    
    
main()

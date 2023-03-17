from cryptography import x509
import re,os,sys
from datetime import datetime


# valid_cert_interval checks if the certificate is valid
def valid_cert_interval(cert):
    return datetime.now() < cert.not_valid_after and datetime.now() > cert.not_valid_before
    
    
# load_certificates_with_regex loads certificates from a string
def load_certificates_with_regex(data)    :
    s_delim =  '-----BEGIN CERTIFICATE-----'
    e_delim = '-----END CERTIFICATE-----'
    return re.findall(f'(' + s_delim + '.*?' + e_delim + ')', data, re.DOTALL) # give me all the certs


# system_certs loads the system certificates
def system_certs(filename):
    system_certs = None
    with open(filename, 'r') as f:
        system_certs = f.read()
        
    pem_certs = load_certificates_with_regex(system_certs)
    
    certs = {}
    for pem_cert in pem_certs:
        b_cert = bytes(pem_cert, 'utf-8')
        k = x509.load_pem_x509_certificate(b_cert)
        certs[k.subject] = k
    
    return certs


# load_cert loads a certificate from a file
def load_cert(filename):
    with open(filename, 'rb') as f:
        return x509.load_pem_x509_certificate(f.read())
    


def main(certfile):
    if not os.path.exists(certfile):
        print('File not found')
        exit(1)
        
    cert = load_cert(certfile)
    
    
    if valid_cert_interval(cert):
        print('cert is valid')
    
    print(cert)
    


if __name__ == '__main__':
    main(sys.argv[1])
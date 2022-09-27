import socket
import threading
import sys
import signal

def signal_handler(sig, frame):
    print('\nServer Down!')
    sys.exit(0)

def new_clt(client,address):
    while True:
        
        string=client.recv(1024)
        string=string.decode("utf-8")
        print(f"|| Ip Addr: {address[0]} | Port: {address[1]} | "+string+f"% ||")
        client.send(bytes("Next Message","utf-8"))
        

if __name__ == "__main__":
    ip="127.0.0.1"
    port=5005

    signal.signal(signal.SIGINT, signal_handler)
    print("Press Ctrl+C to exit...")
    print("Ready to answer the clients")
    server = socket.socket(socket.AF_INET,socket.SOCK_STREAM)#designate the the type of address the socket can communicate with ||the two parties can communicate freely
    server.bind((ip,port))
    server.listen(5)

    while True:
        client, address = server.accept()
        print(f"Connection established - {address[0]}:{address[1]}")
        client_handler = threading.Thread(target=new_clt,args=(client,address),daemon=True)
        client_handler.start()
    



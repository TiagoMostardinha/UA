import socket
import psutil

ip_addr = "127.0.0.1"   
tcp_port = 5005

i = 0

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

sock.connect((ip_addr, tcp_port))

while True:
    message="| RAM usage : "+ str(psutil.virtual_memory()[2])+"% | CPU usage : "+ str(psutil.cpu_percent(2))
    sock.send(bytes(message,"utf-8"))
    resposta=sock.recv(1024)
    i += 1
    resposta=resposta.decode("utf-8")
    print(f"{i} - "+resposta)

# CSCI4273-PA3

To compile, type make and create the webproxy executable. Type ./webproxy <port number> <timeout> to run. The proxy server is now running. 

Outline of main logic:

Command line arguments are extracted and stored. First the port number is used to create a socket that will handle communication between the client and proxy server. The client socket is then created and a connection is established bewteen the two. At this point, multithreading is also implemented in the case that the client makes multiple requests. host_name_f is used to format the request into a host string that is able to be processed. There is also a separate error handling fucntion (which also looks to see if there is a 403 forbidden error - it references blacklist.txt to make this determination). The cache is maintained as a linked list and will be itereated through in order to determine wheter a request to the server is necessary. get_server_response is responsible for handling the response from the web server and relaying back to the client. 

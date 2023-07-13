# Minitalk - 42

## Description

Minitalk is a simple data exchange program using UNIX signals implemented as part of the 42 curriculum. It consists of two programs:
- A server, which displays the messages
- A client, which sends the messages

This project aims to get students comfortable with the basics of data transmission and signal handling in C.

## Compilation

A Makefile is provided for compiling the programs. Run the following commands for respective outcomes:

```bash
make         # to compile both the server and the client programs
make server  # to compile just the server
make client  # to compile just the client
make clean   # to remove all object files
make fclean  # to remove all object files and the programs
make re      # to re-compile both programs
```

After running `make`, two executable files `server` and `client` should be created.

## Usage

First, start the server by running:

```bash
./server
```

It will display its PID (process ID). This PID will be used by the client to send messages to the server.

Next, to send a message from the client to the server, use:

```bash
./client <server_PID> <message>
```

Replace `<server_PID>` with the PID displayed by the server program and `<message>` with the message you want to send.

The server will display the message received from the client and keep running, waiting for new messages.

## Notes

The code adheres to The Norm (the 42 School's coding standard). Therefore, it follows a specific format and only includes specific C Standard Library functions.

## Authors and acknowledgment

This project is carried out by 42 students. We extend our thanks to the pedagogical team for providing a conducive learning environment.

## License

This project is licensed under the 42 School Norm. Feel free to use and adapt it while respecting the license.
```

Please adjust the README based on your project's specific needs and functions. This is a general structure that should cover most of the requirements.

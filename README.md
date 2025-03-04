Function for printing debug messages.

Matlab R2021b.

------------

- If global "debug_mgs_status" is eual to "enable":
DEBUG_MSG prints a message in Matlab console

- If global "debug_mgs_status" is not eual to "enable":
no effect

Global flag could be changed by call of DEBUG_MSG_ENABLE(status) with 
status equal to "enable" or "disable".

Debug messages could be colored in black, orange and red.
(default color is black).
Debug message always starts with "debug_msg: ".
Debug messages could be decorated for call in class constructor or
destructor. By default messages are plain text (style = "common").

------------


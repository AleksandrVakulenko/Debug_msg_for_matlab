
clc
text = 'test msg';

% enable
DEBUG_MSG_ENABLE("enable")

disp('1) default arguments:')
DEBUG_MSG(text)
DEBUG_MSG(text, 'black')
disp(' ')

disp('2) common msg (plain text):')
DEBUG_MSG(text, 'black', 'common')
DEBUG_MSG(text, 'orange', 'common')
DEBUG_MSG(text, 'red', 'common')
disp(' ')


disp('3) for usage in constructors:')
DEBUG_MSG(text, 'black', 'ctor')
DEBUG_MSG(text, 'orange', 'ctor')
DEBUG_MSG(text, 'red', 'ctor')
disp(' ')


disp('4) for usage in desstructors:')
DEBUG_MSG(text, 'black', 'dtor')
DEBUG_MSG(text, 'orange', 'dtor')
DEBUG_MSG(text, 'red', 'dtor')
disp(' ')


% disable
DEBUG_MSG_ENABLE("disable")

disp('\/ empty \/')

DEBUG_MSG(text, 'black', 'common')
DEBUG_MSG(text, 'orange', 'common')
DEBUG_MSG(text, 'red', 'common')

disp('/\ empty /\')


function DEBUG_MSG(msg, color, style)
arguments
    msg
    color {mustBeMember(color, ["black", "red", "orange"])} = "black"
    style {mustBeMember(style, ["common", "ctor", "dtor"])} = "common"
end

try
    msg = char(string(msg));
catch
    warning('problem in debug_msg')
    return;
end

if is_debug_msg_active()

    fprintf(1, ['debug_msg: '])
    switch style
        case "common"
            Pref = '';
        case "ctor"
            Pref = '  (C)>>';
        case "dtor"
            Pref = '<<(D)  ';
    end

    msg = [Pref ' ' msg];

    switch color
        case "black"
            fprintf(1, [msg '\n'])

        case "red"
            fprintf(2, [msg '\n'])

        case "orange"
            msg = make_orange(msg);
            fprintf(1, [msg '\n'])
    end


end
end


function str = make_orange(str)
Part1 = ['[' 8];
Part2 = [']' 8];
str = [Part1 str Part2];
end


function status = is_debug_msg_active()
global debug_mgs_status
status = ~isempty(debug_mgs_status) && debug_mgs_status == "enable";
end



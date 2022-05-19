function id = sdg1032x_Identify(host):
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    writeline(netClient, "*IDN")
    id = readline(netClient)
    clear netClient

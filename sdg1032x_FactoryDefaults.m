function sdg1032x_FactoryDefaults(host)
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    writeline(netClient, "*RST")
    clear netClient

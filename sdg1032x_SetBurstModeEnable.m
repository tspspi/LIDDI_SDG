function sdg1032x_SetBurstModeEnable(host, channel)
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    if channel == 1
        writeline(netClient, "C1:BTWV STATE,ON")
    else
        writeline(netClient, "C2:BTWV STATE,ON")
    end
    clear netClient

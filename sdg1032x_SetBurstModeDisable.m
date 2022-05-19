function sdg1032x_SetBurstModeDisable(host, channel)
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    if channel == 1
        writeline(netClient, "C1:BTWV STATE,OFF")
    else
        writeline(netClient, "C2:BTWV STATE,OFF")
    end
    clear netClient

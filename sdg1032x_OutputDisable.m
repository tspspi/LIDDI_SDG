function sdg1032x_OutputDisable(host, channel)
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    if channel == 1
        writeline(netClient, "C1:OUTP OFF")
    else
        writeline(netClient, "C2:OUTP OFF")
    end
    clear netClient

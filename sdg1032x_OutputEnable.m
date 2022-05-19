function sdg1032x_OutputEnable(host, channel)
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    if channel == 1
        writeline(netClient, "C1:OUTP ON,LOAD,HZ,PLTR,NOR")
    else
        writeline(netClient, "C2:OUTP ON,LOAD,HZ,PLTR,NOR")
    end
    clear netClient

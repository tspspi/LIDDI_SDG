function sdg1032x_SetBurstDelay(host, channel, dly)
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    if channel == 1
        writeline(netClient, strcat("C1:BTWV DLAY,", num2str(dly)))
    else
        writeline(netClient, strcat("C2:BTWV DLAY,", num2str(dly)))
    end
    clear netClient

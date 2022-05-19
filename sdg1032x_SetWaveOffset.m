function sdg1032x_SetWaveOffset(host, channel, frq)
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    if channel == 1
        writeline(netClient, strcat("C1:BSWV OFST,", num2str(frq)))
    else
        writeline(netClient, strcat("C2:BSWV OFST,", num2str(frq)))
    end
    clear netClient

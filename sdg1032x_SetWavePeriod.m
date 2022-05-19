function sdg1032x_SetWavePeriod(host, channel, frq):
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    if channel == 1
        writeline(netClient, [ "C1:BSWV PERI," num2str(frq) ])
    else
        writeline(netClient, [ "C2:BSWV PERI," num2str(frq) ])
    clear netClient

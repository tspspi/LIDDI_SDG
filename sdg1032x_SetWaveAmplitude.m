function sdg1032x_SetWaveAmplitude(host, channel, frq):
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    if channel == 1
        writeline(netClient, [ "C1:BSWV AMP," num2str(frq) ])
    else
        writeline(netClient, [ "C2:BSWV AMP," num2str(frq) ])
    clear netClient

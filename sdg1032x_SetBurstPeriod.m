function sdg1032x_SetBurstPeriod(host, channel, period):
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    if channel == 1
        writeline(netClient, [ "C1:BTWV PRD," num2str(period) ])
    else
        writeline(netClient, [ "C2:BTWV PRD," num2str(period) ])
    clear netClient

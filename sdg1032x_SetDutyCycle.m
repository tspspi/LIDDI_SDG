function sdg1032x_SetDutyCycle(host, channel, dutycycle):
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    if channel == 1
        writeline(netClient, ["C1:BSWV DUTY," num2str(dutycycle)])
    else
        writeline(netClient, ["C2:BSWV DUTY," num2str(dutycycle)])
    clear netClient

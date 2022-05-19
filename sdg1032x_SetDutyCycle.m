function sdg1032x_SetDutyCycle(host, channel, dutycycle)
    netClient = tcpclient(host, 5024);
    configureTerminator(netClient,"LF");
    if channel == 1
        writeline(netClient, strcat("C1:BSWV DUTY,", num2str(dutycycle)))
    else
        writeline(netClient, strcat("C2:BSWV DUTY,", num2str(dutycycle)))
    end
    clear netClient

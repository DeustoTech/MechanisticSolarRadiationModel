function LT = Date2Sunset(DateTime,Latitud,Longitud,DGMT)


    delta = Day2Declination(DateTime); 
    delta = pi*delta/180;
    psi = pi*Latitud/180;
    
    frac = -(sin(psi)*sin(delta))/(cos(psi)*cos(delta));
    ac = acos(frac);
    ac = 180*ac/pi;
    LST = 12 + (1/15)*ac;
    
    %%
    
    LSTM = 15*DGMT;        % Mardrid GMT+2

    %%
    d = DayOfYear(DateTime);
    B = (360/365)*(d-81)*(pi/180);
    EoT = 9.88*sin(2*B) - 7.53*cos(B) - 1.5*sin(B);
    %%
    TC = 4*(Longitud - LSTM) + EoT;
    %%
    LT = LST - TC/60;
end


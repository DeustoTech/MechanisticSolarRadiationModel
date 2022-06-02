function theta = DateTime2Zenith(LocalTime,Longitud,Latitud,DGMT)  
    %
    angle = DateTime2Elevation(LocalTime,Longitud,Latitud,DGMT);

    theta = (angle>0).*(90 - angle)  + (angle<=0).*(90 + abs(angle));
        
    
end


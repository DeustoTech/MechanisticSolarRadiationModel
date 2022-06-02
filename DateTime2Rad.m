function rad = DateTime2Rad(LocalTimes,Longitud,Latitud,DGMT)


theta = DateTime2Zenith(LocalTimes,Longitud,Latitud,DGMT) ;
    
rad =   (theta <= 90).*(1e3*1.353*0.68.^((1./cos(theta*(pi/180))).^1.5));


end
%%


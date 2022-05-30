function rad = DateTime2Rad(LocalTimes,Longitud,Latitud,DGMT)


iter = 0;
rad = zeros(size(LocalTimes));
for iLT = LocalTimes
    iter = iter + 1;
    rad(iter) = DateTime2RadIter(iLT,Longitud,Latitud,DGMT);
end


end
%%
function rad = DateTime2RadIter(DateTime,Longitud,Latitud,DGMT)


    theta = DateTime2Zenith(DateTime,Longitud,Latitud,DGMT) ;
    
    if theta > 90
        rad = 0;
    else
        AM = 1/cos(theta*(pi/180));
        %rad = 1e3*1.353*0.7^(AM^2.1);
        %rad = 1e3*1.353*0.70^(AM^0.678);
        rad = 1e3*1.353*0.68^(AM^1.5);

    end

end

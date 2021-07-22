clear 
load('data/example.mat')
%%
ind = 1.75e5:20:3.6e5;
LocalTimes = ds.DateTime(ind)';
RadMeasure = ds.RadExt(ind);
% Meñaka

Latitud  = 43.349024834327; 
Longitud = -2.797651290893;
%%

rad =[];
HRA = [];
DGMT = 2; % Madrid
iter = 0;
for iLT = LocalTimes
    iter = iter + 1;
    rad(iter) = DateTime2Rad(iLT,Longitud,Latitud,DGMT);
end
%
clf
subplot(3,1,1)

hold on
plot(LocalTimes,rad,'.-')
plot(LocalTimes,RadMeasure,'.-')
grid on
ylim([0 1000])

xlim([LocalTimes(1) LocalTimes(end)])
legend('Mechanistic','Measurement')
%
subplot(3,1,2)
plot(LocalTimes,abs(RadMeasure-rad'),'.-')
ylim([0 1000])
grid on
xlim([LocalTimes(1) LocalTimes(end)])

%%
ind = 1.75e5:20:1.79e5;
LocalTimes = ds.DateTime(ind)';
Latitud  = 43.349024834327; 
Longitud = -2.797651290893;
DGMT = 2; % madrid
 
iter  = 0;

sunset = zeros(1,length(LocalTimes));
for iLT = LocalTimes
    iter = iter + 1;
    sunset(iter) = Date2Sunset(iLT,Latitud,Longitud,DGMT);
end


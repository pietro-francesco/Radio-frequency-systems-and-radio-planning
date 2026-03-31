clc
clear
close all

LinkBandwidthE=72;    %GHz
Rb=150;           %Mbps
Distance=1000;    %m
alpha=0.2;
bps=6;
fec=2/3;

% Calculation of how much bandwidth we need
disp('Calculation of bandwidth ')
Bandwidth=(Rb/(bps*fec))*(1+alpha)
disp('')

% Calculation of path losses
c=3e8;
f=LinkBandwidthE*10^9;
disp('Lambda')
lambda=c/f
disp('Path loss')
Lpath=((lambda)/(4*pi*Distance))^2
Lpathdb=10*log10(Lpath)
disp('')

% Reception and transmission gain
disp('Reception and transmission gain')
Antennadiameter=0.388; %m
A=pi*(Antennadiameter/2)^2;
eta=0.5;
Gr=((4*pi*A)/(lambda)^2)*eta
GrdB=10*log10(Gr)
GtdB=GrdB;
disp('')

% Calculation of Tsys and GR/Tsys
disp('Calculation of Tsys')
To=290;
F=8.17;
Tsys=To*(F-1)
Tsysdb=10*log10(Tsys)
disp('')

disp('Calculation of GR/Tsys')
GrTsysdB=(GrdB-Tsysdb)
disp('')


disp('Boltzmann constant in dB')
k=1.380*10^(-23);
kdB=10*log10(k)
disp('')

disp('Signal-to-noise ratio')
%abbiamo la figura di rumore F=8.17
%Considerando per una 64QAM un rapporto Eb/No di 17
EbNo=17;
EbNoPowerGain=63.1
SNR=EbNoPowerGain*((Rb*10^6)/(Bandwidth*10^6))
SNRdb=10*log10(SNR)+4
disp('')

disp('Power calculation')
PtdB=-(GrTsysdB)-GrdB-Lpathdb+SNRdb+kdB+10*log10(Bandwidth*10^6)
PtW=10^((PtdB-10)/10)
PtWnumber=0.00000033888;
disp('')

disp('Receiver sensitivity')
%Ni=KToB
NidB=kdB+10*log10(To)+10*log10(Bandwidth)
%Si=Ni*F*SNRo
SidB=NidB+F+SNRdb
SiW=10^((SidB-10)/10)
SiWnumber=0.000000000000000062431;




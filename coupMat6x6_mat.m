function [coupMat,Aout,cte1,cte2,cte3,cte4,cte5,cte6,rt1,rt2,rt3,rt4,rt5,rt6] = coupMat6x6_mat(dB12, dB13, dB14, dB15, dB16, dB23, dB24, dB25, dB26, dB34, dB35, dB36, dB45, dB46, dB56, k12, k13, k14, k15, k16, k23, k24, k25, k26, k34, k35, k36, k45, k46, k56)
% REVISION
% created by Filipe Ferreira @ 2022

nModes = 6;
varC   = 1;
zMax   = 100*rand(1,1e4);

[rt1,rt2,rt3,rt4,rt5,rt6,cte1,cte2,cte3,cte4,cte5,cte6] = equations6x6_doubleIOrand_cpp(...
    (dB12), (dB13), (dB14), (dB15), (dB16), ...
    (dB23), (dB24), (dB25), (dB26), ...
    (dB34), (dB35), (dB36), ...
    (dB45), (dB46), ...
    (dB56), ...
    (k12), (k13), (k14), (k15), (k16), ...
    (k23), (k24), (k25), (k26), ...
    (k34), (k35), (k36),...
    (k45), (k46),...
    (k56));

if sum(sum(isnan(cte1))) > 0 || sum(sum(isnan(cte2))) > 0 || sum(sum(isnan(cte3))) > 0 || sum(sum(isnan(cte4))) > 0 || sum(sum(isnan(cte5))) > 0 || sum(sum(isnan(cte6))) > 06
    [rt1,rt2,rt3,rt4,rt5,rt6,cte1,cte2,cte3,cte4,cte5,cte6] = equations6x6_doubleIO_cpp(...
        (dB12), (dB13), (dB14), (dB15), (dB16), ...
        (dB23), (dB24), (dB25), (dB26), ...
        (dB34), (dB35), (dB36), ...
        (dB45), (dB46), ...
        (dB56), ...
        (k12), (k13), (k14), (k15), (k16), ...
        (k23), (k24), (k25), (k26), ...
        (k34), (k35), (k36),...
        (k45), (k46),...
        (k56));
end

for nM = 1:nModes
    Aout(1,nM,:) = cte1(1,nM)*exp((1i*rt1(1,1))*zMax*varC) + cte1(2,nM)*exp((1i*rt1(2,1))*zMax*varC) + cte1(3,nM)*exp((1i*rt1(3,1))*zMax*varC) + cte1(4,nM)*exp((1i*rt1(4,1))*zMax*varC) + cte1(5,nM)*exp((1i*rt1(5,1))*zMax*varC) + cte1(6,nM)*exp((1i*rt1(6,1))*zMax*varC) + cte1(7,nM)*exp((1i*rt1(7,1))*zMax*varC) + cte1(8,nM)*exp((1i*rt1(8,1))*zMax*varC) + cte1(9,nM)*exp((1i*rt1(9,1))*zMax*varC) + cte1(10,nM)*exp((1i*rt1(10,1))*zMax*varC);
    Aout(2,nM,:) = cte2(1,nM)*exp((1i*rt2(1,1))*zMax*varC) + cte2(2,nM)*exp((1i*rt2(2,1))*zMax*varC) + cte2(3,nM)*exp((1i*rt2(3,1))*zMax*varC) + cte2(4,nM)*exp((1i*rt2(4,1))*zMax*varC) + cte2(5,nM)*exp((1i*rt2(5,1))*zMax*varC) + cte2(6,nM)*exp((1i*rt2(6,1))*zMax*varC) + cte2(7,nM)*exp((1i*rt2(7,1))*zMax*varC) + cte2(8,nM)*exp((1i*rt2(8,1))*zMax*varC) + cte2(9,nM)*exp((1i*rt2(9,1))*zMax*varC) + cte2(10,nM)*exp((1i*rt2(10,1))*zMax*varC);
    Aout(3,nM,:) = cte3(1,nM)*exp((1i*rt3(1,1))*zMax*varC) + cte3(2,nM)*exp((1i*rt3(2,1))*zMax*varC) + cte3(3,nM)*exp((1i*rt3(3,1))*zMax*varC) + cte3(4,nM)*exp((1i*rt3(4,1))*zMax*varC) + cte3(5,nM)*exp((1i*rt3(5,1))*zMax*varC) + cte3(6,nM)*exp((1i*rt3(6,1))*zMax*varC) + cte3(7,nM)*exp((1i*rt3(7,1))*zMax*varC) + cte3(8,nM)*exp((1i*rt3(8,1))*zMax*varC) + cte3(9,nM)*exp((1i*rt3(9,1))*zMax*varC) + cte3(10,nM)*exp((1i*rt3(10,1))*zMax*varC);
    Aout(4,nM,:) = cte4(1,nM)*exp((1i*rt4(1,1))*zMax*varC) + cte4(2,nM)*exp((1i*rt4(2,1))*zMax*varC) + cte4(3,nM)*exp((1i*rt4(3,1))*zMax*varC) + cte4(4,nM)*exp((1i*rt4(4,1))*zMax*varC) + cte4(5,nM)*exp((1i*rt4(5,1))*zMax*varC) + cte4(6,nM)*exp((1i*rt4(6,1))*zMax*varC) + cte4(7,nM)*exp((1i*rt4(7,1))*zMax*varC) + cte4(8,nM)*exp((1i*rt4(8,1))*zMax*varC) + cte4(9,nM)*exp((1i*rt4(9,1))*zMax*varC) + cte4(10,nM)*exp((1i*rt4(10,1))*zMax*varC);
    Aout(5,nM,:) = cte5(1,nM)*exp((1i*rt5(1,1))*zMax*varC) + cte5(2,nM)*exp((1i*rt5(2,1))*zMax*varC) + cte5(3,nM)*exp((1i*rt5(3,1))*zMax*varC) + cte5(4,nM)*exp((1i*rt5(4,1))*zMax*varC) + cte5(5,nM)*exp((1i*rt5(5,1))*zMax*varC) + cte5(6,nM)*exp((1i*rt5(6,1))*zMax*varC) + cte5(7,nM)*exp((1i*rt5(7,1))*zMax*varC) + cte5(8,nM)*exp((1i*rt5(8,1))*zMax*varC) + cte5(9,nM)*exp((1i*rt5(9,1))*zMax*varC) + cte5(10,nM)*exp((1i*rt5(10,1))*zMax*varC);
    Aout(6,nM,:) = cte6(1,nM)*exp((1i*rt6(1,1))*zMax*varC) + cte6(2,nM)*exp((1i*rt6(2,1))*zMax*varC) + cte6(3,nM)*exp((1i*rt6(3,1))*zMax*varC) + cte6(4,nM)*exp((1i*rt6(4,1))*zMax*varC) + cte6(5,nM)*exp((1i*rt6(5,1))*zMax*varC) + cte6(6,nM)*exp((1i*rt6(6,1))*zMax*varC) + cte6(7,nM)*exp((1i*rt6(7,1))*zMax*varC) + cte6(8,nM)*exp((1i*rt6(8,1))*zMax*varC) + cte6(9,nM)*exp((1i*rt6(9,1))*zMax*varC) + cte6(10,nM)*exp((1i*rt6(10,1))*zMax*varC);
    
    coupMat(:,nM,:) = Aout(:,nM,:);
end
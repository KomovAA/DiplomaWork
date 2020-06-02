%% single sphere

%%%% golden sphere
Gold_Olmon;

sigmaTotalMatrixGold = getMatrixFromFFdata('sigmaTotalMatrixGold.txt');
sigmaAbsorptionMatrix = getMatrixFromFFdata('sigmaAbsorptionMatrixGold.txt');

figure
plot(sortGoldWavelengthNK(:,1), sigmaTotalMatrixGold)
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Golden Sphere')
saveas(gcf,'singleGoldSphereCrossSection.png')

figure
plot(sortGoldWavelengthNK(:,1), -sigmaAbsorptionMatrix)
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Golden Sphere')
saveas(gcf,'singleGoldSphereAbsorptionSection.png')



figure(31)
loglog(sortGoldWavelengthNK(:,1), sigmaTotalMatrixGold, 'g')
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Scattering cross-section of a single sphere')

figure(32)
loglog(sortGoldWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'g')
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Absorption cross-section of a singel sphere')



figure(41)
loglog(sortGoldWavelengthNK(:,1), sigmaTotalMatrixGold, 'g')
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Scattering cross-section of spheres')

figure(42)
loglog(sortGoldWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'g')
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Absorption cross-section of spheres')




%%%% Silver sphere
Silver_Yang;

sigmaTotalMatrix = getMatrixFromFFdata('sigmaTotalMatrixSilver.txt');
sigmaAbsorptionMatrix = getMatrixFromFFdata('sigmaAbsorptionMatrixSilver.txt');

figure
plot(sortSilverWavelengthNK(:,1), sigmaTotalMatrix)
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Silver Sphere')
saveas(gcf,'singleSilverSphereCrossSection.png')

figure
plot(sortSilverWavelengthNK(:,1), -sigmaAbsorptionMatrix)
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Silver Sphere')
saveas(gcf,'singleSilverSphereAbsorptionSection.png')

figure(31)
hold on
loglog(sortSilverWavelengthNK(:,1), sigmaTotalMatrix, 'blue')
hold off

figure(32)
hold on
loglog(sortSilverWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'blue')
hold off



figure(43)
loglog(sortSilverWavelengthNK(:,1), sigmaTotalMatrix, 'blue')
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Scattering cross-section of spheres')

figure(44)
loglog(sortSilverWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'blue')
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Absorption cross-section of spheres')



%%%% Copper sphere
Copper_Querry;

sigmaTotalMatrix = getMatrixFromFFdata('sigmaTotalMatrixCopper.txt');
sigmaAbsorptionMatrix = getMatrixFromFFdata('sigmaAbsorptionMatrixCopper.txt');

figure
plot(sortCopperWavelengthNK(:,1), sigmaTotalMatrix)
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Copper Sphere')
saveas(gcf,'singleCopperSphereCrossSection.png')

figure
plot(sortCopperWavelengthNK(:,1), -sigmaAbsorptionMatrix)
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Copper Sphere')
saveas(gcf,'singleCopperSphereAbsorptionSection.png')

figure(31)
hold on
loglog(sortCopperWavelengthNK(:,1), sigmaTotalMatrix, 'r')
hold off
legend('Golden shpere','Silver shpere','Copper shpere')

figure(32)
hold on
loglog(sortCopperWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'r')
hold off
legend('Golden shpere','Silver shpere','Copper shpere')


figure(45)
loglog(sortCopperWavelengthNK(:,1), sigmaTotalMatrix, 'r')
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Scattering cross-section of spheres')

figure(46)
loglog(sortCopperWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'r')
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Absorption cross-section of spheres')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% five spheres

%%%% golden spheres
sigmaTotalMatrixGold = getMatrixFromFFdata('sigmaTotalMatrixFiveGoldSpheres.txt');
sigmaAbsorptionMatrix = getMatrixFromFFdata('sigmaAbsorptionMatrixFiveGoldSpheres.txt');

figure
plot(sortGoldWavelengthNK(:,1), sigmaTotalMatrixGold)
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Five Golden Sphere')
saveas(gcf,'fiveGoldSphereCrossSection.png')

figure
plot(sortGoldWavelengthNK(:,1), -sigmaAbsorptionMatrix)
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Five Golden Sphere')
saveas(gcf,'fiveGoldSphereAbsorptionSection.png')

figure(33)
loglog(sortGoldWavelengthNK(:,1), sigmaTotalMatrixGold, 'g')
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Scattering cross-section of five sphere')

figure(34)
loglog(sortGoldWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'g')
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Absorption cross-section of five sphere')


figure(41)
hold on
loglog(sortGoldWavelengthNK(:,1), sigmaTotalMatrixGold, 'g.-')
hold off

figure(42)
hold on
loglog(sortGoldWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'g.-')
hold off


%%%% Silver sphere
sigmaTotalMatrix = getMatrixFromFFdata('sigmaTotalMatrixFiveSilverSpheres.txt');
sigmaAbsorptionMatrix = getMatrixFromFFdata('sigmaAbsorptionMatrixFiveSilverSpheres.txt');

figure
plot(sortSilverWavelengthNK(:,1), sigmaTotalMatrix)
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Five Silver Sphere')
saveas(gcf,'fiveSilverSphereCrossSection.png')

figure
plot(sortSilverWavelengthNK(:,1), -sigmaAbsorptionMatrix)
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Five Silver Sphere')
saveas(gcf,'fiveSilverSphereAbsorptionSection.png')


figure(33)
hold on
loglog(sortSilverWavelengthNK(:,1), sigmaTotalMatrix, 'blue')
hold off

figure(34)
hold on
loglog(sortSilverWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'blue')
hold off


figure(43)
hold on
loglog(sortSilverWavelengthNK(:,1), sigmaTotalMatrix, 'blue.-')
hold off

figure(44)
hold on
loglog(sortSilverWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'blue.-')
hold off


%%%% Copper sphere
sigmaTotalMatrix = getMatrixFromFFdata('sigmaTotalMatrixFiveCopperSpheres.txt');
sigmaAbsorptionMatrix = getMatrixFromFFdata('sigmaAbsorptionMatrixFiveCopperSpheres.txt');

figure
plot(sortCopperWavelengthNK(:,1), sigmaTotalMatrix)
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Five Copper Sphere')
saveas(gcf,'fiveCopperSphereCrossSection.png')

figure
plot(sortCopperWavelengthNK(:,1), -sigmaAbsorptionMatrix)
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Five Copper Sphere')
saveas(gcf,'fiveCopperSphereAbsorptionSection.png')



figure(33)
hold on
loglog(sortCopperWavelengthNK(:,1), sigmaTotalMatrix, 'r')
hold off
legend('Golden shpere','Silver shpere','Copper shpere')

figure(34)
hold on
loglog(sortCopperWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'r')
hold off
legend('Golden shpere','Silver shpere','Copper shpere')



figure(45)
hold on
loglog(sortCopperWavelengthNK(:,1), sigmaTotalMatrix, 'r.-')
hold off

figure(46)
hold on
loglog(sortCopperWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'r.-')
hold off


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% seventeen spheres

%%%% golden spheres
sigmaTotalMatrixGold = getMatrixFromFFdata('sigmaTotalMatrixseventenGoldSpheres.txt');
sigmaAbsorptionMatrix = getMatrixFromFFdata('sigmaAbsorptionMatrixseventenGoldSpheres.txt');

figure
plot(sortGoldWavelengthNK(:,1), sigmaTotalMatrixGold)
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Seventeen Golden Sphere')
saveas(gcf,'seventeenGoldSphereCrossSection.png')

figure
plot(sortGoldWavelengthNK(:,1), -sigmaAbsorptionMatrix)
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Seventeen Golden Sphere')
saveas(gcf,'seventeenGoldSphereAbsorptionSection.png')


figure(35)
loglog(sortGoldWavelengthNK(:,1), sigmaTotalMatrixGold, 'g')
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Scattering cross-section of seventeen sphere')

figure(36)
loglog(sortGoldWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'g')
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Absorption cross-section of seventeen sphere')


figure(41)
hold on
loglog(sortGoldWavelengthNK(:,1), sigmaTotalMatrixGold, 'g--')
hold off
legend('Single Golden Shpere','Five Golden Shpere','Seventeen Golden Shpere')

figure(42)
hold on
loglog(sortGoldWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'g--')
hold off
legend('Single Golden Shpere','Five Golden Shpere','Seventeen Golden Shpere')


%%%% Silver sphere
sigmaTotalMatrix = getMatrixFromFFdata('sigmaTotalMatrixseventenSilverSpheres.txt');
sigmaAbsorptionMatrix = getMatrixFromFFdata('sigmaAbsorptionMatrixseventenSilverSpheres.txt');

figure
plot(sortSilverWavelengthNK(:,1), sigmaTotalMatrix)
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Seventeen Silver Sphere')
saveas(gcf,'seventeenSilverSphereCrossSection.png')

figure
plot(sortSilverWavelengthNK(:,1), -sigmaAbsorptionMatrix)
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Seventeen Silver Sphere')
saveas(gcf,'seventeenSilverSphereAbsorptionSection.png')


figure(35)
hold on
loglog(sortSilverWavelengthNK(:,1), sigmaTotalMatrix, 'blue')
hold off

figure(36)
hold on
loglog(sortSilverWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'blue')
hold off



figure(43)
hold on
loglog(sortSilverWavelengthNK(:,1), sigmaTotalMatrix, 'blue--')
hold off
legend('Single Silver Shpere','Five Silver Shpere','Seventeen Silver Shpere')

figure(44)
hold on
loglog(sortSilverWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'blue--')
hold off
legend('Single Silver Shpere','Five Silver Shpere','Seventeen Silver Shpere')

%%%% Copper sphere
sigmaTotalMatrix = getMatrixFromFFdata('sigmaTotalMatrixseventenCopperSpheres.txt');
sigmaAbsorptionMatrix = getMatrixFromFFdata('sigmaAbsorptionMatrixseventenCopperSpheres.txt');

figure
plot(sortCopperWavelengthNK(:,1), sigmaTotalMatrix)
xlabel('\lambda (mkm)')
ylabel('scattering cross-section')
title('Seventeen Copper Sphere')
saveas(gcf,'seventeenCopperSphereCrossSection.png')

figure
plot(sortCopperWavelengthNK(:,1), -sigmaAbsorptionMatrix)
xlabel('\lambda (mkm)')
ylabel('absorption cross-section')
title('Seventeen Copper Sphere')
saveas(gcf,'seventeenCopperSphereAbsorptionSection.png')



figure(35)
hold on
loglog(sortCopperWavelengthNK(:,1), sigmaTotalMatrix, 'r')
legend('Golden shpere','Silver shpere','Copper shpere')
hold off

figure(36)
hold on
loglog(sortCopperWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'r')
legend('Golden shpere','Silver shpere','Copper shpere')
hold off



figure(45)
hold on
loglog(sortCopperWavelengthNK(:,1), sigmaTotalMatrix, 'r--')
hold off
legend('Single Copper Shpere','Five Copper Shperes','Seventeen Copper Shperes')

figure(46)
hold on
loglog(sortCopperWavelengthNK(:,1), -sigmaAbsorptionMatrix, 'r--')
hold off
legend('Single Copper Shpere','Five Copper Shperes','Seventeen Copper Shperes')











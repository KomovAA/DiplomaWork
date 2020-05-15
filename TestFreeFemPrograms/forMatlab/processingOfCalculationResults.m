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











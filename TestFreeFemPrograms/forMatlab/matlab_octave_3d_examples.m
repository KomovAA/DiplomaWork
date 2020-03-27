addpath('ffmatlib');

% [p,b,t,nv,nbe,nt,labels]=ffreadmesh('capacitor3d.mesh');
% vh=ffreaddata('capacitor3d_vh.txt');
% u=ffreaddata('capacitor3d_potential.txt');
% 
% S1=[-0 0.375 0.0; ...
%     0.375 0 0.0];
% S2=[0.0 0.375 0.5; ...
%     0.375 0 0.5];
% S3=[0.75 0.375 0.0; ...
%     0.375 0.75 0.0];
% 
% figure;
% ffpdeplot3D(p,b,t,'VhSeq',vh,'XYZData',u,'Slice',S1,S2,S3,'SGridParam',[80,80],'BDLabels',[30,31], ...
%             'XYZStyle','monochrome','ColorMap',jet(200),'ColorBar','on','BoundingBox','on');
%         
%         
        
        

[p,b,t,nv,nbe,nt,labels]=ffreadmesh('diffractionSInS3d.mesh');
vh=ffreaddata('diffractionSInS3d_vh.txt');
Ey=ffreaddata('diffractionSInS3d_Ey.txt');
Ex=ffreaddata('diffractionSInS3d_Ex.txt');

% S1=[-0 0.375 -0.5; ...
%     0.375 0 -0.5];
% S2=[0.0 0.375 0.5; ...
%     0.375 0 0.5];
% S3=[0.75 0.375 -0.5; ...
%     0.375 0.75 -0.5];

boundOut = 0.2; 

S1=[-boundOut  0        -2*boundOut;...
    -boundOut -boundOut  0;...
    0         -boundOut -2*boundOut];
S2=[-boundOut  0        2*boundOut;...
    -boundOut  boundOut 0;...
    0         -boundOut 2*boundOut];
S3=[ boundOut 0         -2*boundOut; ...
     boundOut           -boundOut 0;...
     0        boundOut  -2*boundOut];

figure(33);
ffpdeplot3D(p,b,t,'VhSeq',vh,'XYZData',real(Ex),'Slice',S1,S2,S3,'SGridParam',[80,80],'BDLabels',[30,31], ...
            'XYZStyle','monochrome','ColorMap',jet(200),'ColorBar','on','BoundingBox','on');


S1=[-boundOut -boundOut 0];
S2=[-boundOut  boundOut 0];
S3=[ boundOut -boundOut 0];
figure(35);
ffpdeplot3D(p,b,t,'VhSeq',vh,'XYZData',real(Ex),'Slice',S1,S2,S3,'Project2D', 'on', ...
            'Boundary','off','ColorMap',jet(200),'ColorBar','on');
%         
%         
% S1=[-1.5 -1.5 0];
% S2=[-1.5  1.5 0];
% S3=[ 1.5 -1.5 0];
% figure(36);
% ffpdeplot3D(p,b,t,'VhSeq',vh,'XYZData',real(Ey),'Slice',S1,S2,S3,'SGridParam',[50,50], 'Project2D', 'on', ...
%             'Boundary','off','ColorMap',jet(200),'ColorBar','on');

        
        








% 
% [p,b,t,nv,nbe,nt,labels]=ffreadmesh('diffractionSInS3d_Maxwell.mesh');
% vh=ffreaddata('diffractionSInS3d_vh_Maxwell.txt');
% Ey=ffreaddata('diffractionSInS3d_Ey_Maxwell.txt');
% 
% % S1=[-0 0.375 -0.5; ...
% %     0.375 0 -0.5];
% % S2=[0.0 0.375 0.5; ...
% %     0.375 0 0.5];
% % S3=[0.75 0.375 -0.5; ...
% %     0.375 0.75 -0.5];
% 
% % boundOut = 4; 
% 
% S1=[-boundOut 0 -boundOut;...
%     -boundOut -boundOut 0];
% S2=[-boundOut 0 boundOut;...
%     -boundOut boundOut 0];
% S3=[ boundOut 0 -boundOut; ...
%      boundOut -boundOut 0];
% 
% figure(34);
% ffpdeplot3D(p,b,t,'VhSeq',vh,'XYZData',real(Ey),'Slice',S1,S2,S3,'SGridParam',[80,80],'BDLabels',[30,31], ...
%             'XYZStyle','monochrome','ColorMap',jet(200),'ColorBar','on','BoundingBox','on');


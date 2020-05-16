

% figure
% r = @(u,v) 2 + sin(7.*u + 5.*v);
% funx = @(u,v) r(u,v).*cos(u).*sin(v);
% funy = @(u,v) r(u,v).*sin(u).*sin(v);
% funz = @(u,v) r(u,v).*cos(v);
% fsurf(funx,funy,funz,[0 2*pi 0 pi]) 
% camlight
% 
% 
% figure
% f = @(x,y,z) 1./x.^2 - 1./y.^2 + 1./z.^2;
% fs = fimplicit3(f)
% fs.XRange = [0 5];
% fs.EdgeColor = 'none';
% fs.FaceAlpha = 0.8;




[p,b,t,nv,nbe,nt,labels]=ffreadmesh('diffractionSInS3d.mesh');
vh=ffreaddata('diffractionSInS3d_vh.txt');
Ey=ffreaddata('diffractionSInS3d_Ey.txt');
Ex=ffreaddata('diffractionSInS3d_Ex.txt');
SigmD = ffreaddata('diffractionSInS3d_SigmaD.txt');



figure;
    hax=newplot();
    fig=get(hax,'Parent');
    oldnextplotval{1}=get(hax,'nextplot');
    oldnextplotval{2}=get(fig,'nextplot');
    %switch hold on
    set(hax,'nextplot','add');
    set(fig,'nextplot','add');
    %fprintf('nextplot hax: %s, fig: %s\n',oldnextplotval{1},oldnextplotval{2});

    %Set colormap/colorrange based on domain data or based on the subset of a slice
    useslicecolormap=false;
    %Ensures that a bounding box is not drawn twice by different code sections
    usesliceboundingbox=false;
    
    vhseq = vh;
%     xyzrawdata = real(Ex); %%% data for the represetation
    xyzrawdata = abs(real(SigmD)); %%% data for the represetation
    xyzrawdata=rowvec(xyzrawdata);
%     bdlabels = 12;         %%% outerSphere
    bdlabels = 123;        %%% virtualSphere
    
    points=rowvec(p);
    triangles=rowvec(b);
    tetrahedra=rowvec(t);
    xpts=points(1,:);
    ypts=points(2,:);
    zpts=points(3,:);
    
[xmesh,ymesh,zmesh]=prepare_mesh_3d(points,tetrahedra);

        if ~isempty(bdlabels)
            keep=(triangles(4,:)==bdlabels(1));
            for i=2:numel(bdlabels)
                keep=(keep | (triangles(4,:)==bdlabels(i)));
            end
            xbdmesh=[xpts(triangles(1,keep)); xpts(triangles(2,keep)); xpts(triangles(3,keep))];
            ybdmesh=[ypts(triangles(1,keep)); ypts(triangles(2,keep)); ypts(triangles(3,keep))];
            zbdmesh=[zpts(triangles(1,keep)); zpts(triangles(2,keep)); zpts(triangles(3,keep))];
        else
            xbdmesh=[xpts(triangles(1,:)); xpts(triangles(2,:)); xpts(triangles(3,:))];
            ybdmesh=[ypts(triangles(1,:)); ypts(triangles(2,:)); ypts(triangles(3,:))];
            zbdmesh=[zpts(triangles(1,:)); zpts(triangles(2,:)); zpts(triangles(3,:))];
        end

                [~,nv]=size(points);
                %Convert the boundary data to euclidean coordinates
                [elementType, cbddata]=prepare_bd_data_3d(vhseq,nv,triangles,tetrahedra,xyzrawdata,bdlabels);
                
                    meshcol = [0,0,0];
                    patch(xbdmesh,ybdmesh,zbdmesh,cbddata,'EdgeColor',meshcol,'LineWidth',1);
                    xlabel('x');ylabel('y');zlabel('z');
                    
                    daspect([1 1 1]);
                    view(3);
    props = {'CameraViewAngle','DataAspectRatio','PlotBoxAspectRatio'};
    set(hax,props,get(hax,props));
    set(fig,'color',[1 1 1]);
    
    
 figure
 R = sqrt(xbdmesh.^2 + ybdmesh.^2 + zbdmesh.^2);
 cosTheta = zbdmesh./ R;
 sinTheta = sqrt(xbdmesh.^2 + ybdmesh.^2)./ R;
 rho = sqrt(xbdmesh.^2 + ybdmesh.^2);
 cosPhi   = xbdmesh./ rho;
 sinPhi   = ybdmesh./ rho;
 
 Srnew = cbddata;
 Sx = Srnew.* sinTheta.* cosPhi;
 Sy = Srnew.* sinTheta.* sinPhi;
 Sz = Srnew.* cosTheta;
 
 
%  patch(xbdmesh./ R,ybdmesh./ R,zbdmesh./R ,cbddata,'EdgeColor',meshcol,'LineWidth',1);
patch(Sx, Sy, Sz ,cbddata,'EdgeColor',meshcol,'LineWidth',1);
xlabel('x');ylabel('y');zlabel('z');
 daspect([1 1 1]);
 view(3);



% function [xmesh,ymesh,zmesh] = prepare_mesh_3d(points,tetrahedra)
%     xpts=points(1,:);
%     ypts=points(2,:);
%     zpts=points(3,:);
%     xmesh=[xpts(tetrahedra(1,:)); xpts(tetrahedra(2,:)); xpts(tetrahedra(3,:)); xpts(tetrahedra(4,:))];
%     ymesh=[ypts(tetrahedra(1,:)); ypts(tetrahedra(2,:)); ypts(tetrahedra(3,:)); ypts(tetrahedra(4,:))];
%     zmesh=[zpts(tetrahedra(1,:)); zpts(tetrahedra(2,:)); zpts(tetrahedra(3,:)); zpts(tetrahedra(4,:))];
% end
% 
% function [S] = rowvec(S)
%     [sz1,sz2]=size(S);
%     if sz1>sz2
%         S=S.';
%     end
% end
% 
% function [S] = colvec(S)
%     [sz1,sz2]=size(S);
%     if sz1<sz2
%         S=S.';
%     end
% end








    
    
    

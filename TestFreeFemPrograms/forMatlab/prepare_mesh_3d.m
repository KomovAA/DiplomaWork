function [xmesh,ymesh,zmesh] = prepare_mesh_3d(points,tetrahedra)
    xpts=points(1,:);
    ypts=points(2,:);
    zpts=points(3,:);
    xmesh=[xpts(tetrahedra(1,:)); xpts(tetrahedra(2,:)); xpts(tetrahedra(3,:)); xpts(tetrahedra(4,:))];
    ymesh=[ypts(tetrahedra(1,:)); ypts(tetrahedra(2,:)); ypts(tetrahedra(3,:)); ypts(tetrahedra(4,:))];
    zmesh=[zpts(tetrahedra(1,:)); zpts(tetrahedra(2,:)); zpts(tetrahedra(3,:)); zpts(tetrahedra(4,:))];
end
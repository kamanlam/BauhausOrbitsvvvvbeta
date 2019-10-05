xof 0302txt 0032

template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Quaternion {
 <10DD46A3-775B-11cf-8F52-0040333594A3>
 FLOAT s;
 Vector v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

Mesh mesh0 {
	332;
	0.700000;1.366560;-2.012852;,
	0.700000;0.670250;-2.012852;,
	-0.700000;1.366560;-2.012852;,
	-0.700000;0.670250;-2.012852;,
	0.000000;0.670250;-2.012852;,
	0.000000;1.366560;-2.012852;,
	0.700000;0.670250;-2.012852;,
	0.700000;0.566653;-1.989015;,
	-0.700000;0.670250;-2.012852;,
	-0.700000;0.566653;-1.989015;,
	0.000000;0.670250;-2.012852;,
	0.000000;0.566653;-1.989015;,
	0.700000;0.566653;-1.989015;,
	0.700000;0.519807;-1.969930;,
	0.700000;0.472960;-1.950844;,
	-0.700000;0.566653;-1.989015;,
	-0.700000;0.519807;-1.969930;,
	-0.700000;0.472960;-1.950844;,
	0.000000;0.566653;-1.989015;,
	0.000000;0.472960;-1.950844;,
	0.700000;0.472960;-1.950844;,
	0.700000;0.310607;-1.833624;,
	-0.700000;0.472960;-1.950844;,
	-0.700000;0.310607;-1.833624;,
	0.000000;0.472960;-1.950844;,
	0.000000;0.310607;-1.833624;,
	0.700000;0.310607;-1.833624;,
	0.700000;0.240907;-1.755105;,
	-0.700000;0.310607;-1.833624;,
	-0.700000;0.240907;-1.755105;,
	0.000000;0.310607;-1.833624;,
	0.000000;0.240907;-1.755105;,
	0.700000;0.240907;-1.755105;,
	0.700000;0.179123;-1.663903;,
	-0.700000;0.240907;-1.755105;,
	-0.700000;0.179123;-1.663903;,
	0.000000;0.240907;-1.755105;,
	0.000000;0.179123;-1.663903;,
	0.700000;0.179123;-1.663903;,
	0.700000;0.152429;-1.612380;,
	0.700000;0.125735;-1.560856;,
	-0.700000;0.179123;-1.663903;,
	-0.700000;0.152429;-1.612380;,
	-0.700000;0.125735;-1.560856;,
	0.000000;0.179123;-1.663903;,
	0.000000;0.125735;-1.560856;,
	0.700000;0.125735;-1.560856;,
	0.700000;0.081233;-1.447111;,
	-0.700000;0.125735;-1.560856;,
	-0.700000;0.081233;-1.447111;,
	0.000000;0.125735;-1.560856;,
	0.000000;0.081233;-1.447111;,
	0.700000;0.081233;-1.447111;,
	0.700000;0.046123;-1.324001;,
	-0.700000;0.081233;-1.447111;,
	-0.700000;0.046123;-1.324001;,
	0.000000;0.081233;-1.447111;,
	0.000000;0.046123;-1.324001;,
	0.700000;0.046123;-1.324001;,
	0.700000;0.022261;-1.192644;,
	-0.700000;0.046123;-1.324001;,
	-0.700000;0.022261;-1.192644;,
	0.000000;0.046123;-1.324001;,
	-0.000000;0.022261;-1.192644;,
	0.700000;0.022261;-1.192644;,
	0.700000;0.013849;-1.123964;,
	0.700000;0.005437;-1.055284;,
	-0.700000;0.022261;-1.192644;,
	-0.700000;0.013849;-1.123964;,
	-0.700000;0.005437;-1.055284;,
	-0.000000;0.022261;-1.192644;,
	0.000000;0.005437;-1.055284;,
	0.700000;0.005437;-1.055284;,
	0.700000;0.000165;-0.910240;,
	-0.700000;0.005437;-1.055284;,
	-0.700000;0.000165;-0.910240;,
	0.000000;0.005437;-1.055284;,
	0.000000;0.000165;-0.910240;,
	0.700000;0.000165;-0.910240;,
	0.700000;0.000000;0.000000;,
	-0.700000;0.000165;-0.910240;,
	-0.700000;0.000000;0.000000;,
	0.000000;0.000165;-0.910240;,
	0.000000;0.000000;0.000000;,
	0.700000;1.366560;-2.012852;,
	-0.700000;1.366560;-2.012852;,
	0.700000;2.062870;-2.012852;,
	-0.700000;2.062870;-2.012852;,
	0.000000;1.366560;-2.012852;,
	0.000000;2.062870;-2.012852;,
	0.700000;2.062870;-2.012852;,
	-0.700000;2.062870;-2.012852;,
	0.700000;2.166466;-1.989015;,
	-0.700000;2.166466;-1.989015;,
	0.000000;2.062870;-2.012852;,
	0.000000;2.166466;-1.989015;,
	0.700000;2.166466;-1.989015;,
	-0.700000;2.166466;-1.989015;,
	0.700000;2.213313;-1.969930;,
	-0.700000;2.213313;-1.969930;,
	0.700000;2.260160;-1.950844;,
	-0.700000;2.260160;-1.950844;,
	0.000000;2.166466;-1.989015;,
	0.000000;2.260160;-1.950844;,
	0.700000;2.260160;-1.950844;,
	-0.700000;2.260160;-1.950844;,
	0.700000;2.422513;-1.833624;,
	-0.700000;2.422513;-1.833624;,
	0.000000;2.260160;-1.950844;,
	0.000000;2.422513;-1.833624;,
	0.700000;2.422513;-1.833624;,
	-0.700000;2.422513;-1.833624;,
	0.700000;2.492213;-1.755105;,
	-0.700000;2.492213;-1.755105;,
	0.000000;2.422513;-1.833624;,
	0.000000;2.492213;-1.755105;,
	0.700000;2.492213;-1.755105;,
	-0.700000;2.492213;-1.755105;,
	0.700000;2.553997;-1.663903;,
	-0.700000;2.553997;-1.663903;,
	0.000000;2.492213;-1.755105;,
	0.000000;2.553997;-1.663903;,
	0.700000;2.553997;-1.663903;,
	-0.700000;2.553997;-1.663903;,
	0.700000;2.607385;-1.560856;,
	-0.700000;2.607385;-1.560856;,
	0.000000;2.553997;-1.663903;,
	0.000000;2.607385;-1.560856;,
	0.700000;2.607385;-1.560856;,
	-0.700000;2.607385;-1.560856;,
	0.700000;2.629636;-1.503984;,
	-0.700000;2.629636;-1.503984;,
	0.700000;2.651887;-1.447111;,
	-0.700000;2.651887;-1.447111;,
	0.000000;2.607385;-1.560856;,
	0.000000;2.651887;-1.447111;,
	0.700000;2.651887;-1.447111;,
	-0.700000;2.651887;-1.447111;,
	0.700000;2.686997;-1.324001;,
	-0.700000;2.686997;-1.324001;,
	0.000000;2.651887;-1.447111;,
	0.000000;2.686997;-1.324001;,
	0.700000;2.686997;-1.324001;,
	-0.700000;2.686997;-1.324001;,
	0.700000;2.710859;-1.192644;,
	-0.700000;2.710859;-1.192644;,
	0.000000;2.686997;-1.324001;,
	-0.000000;2.710859;-1.192644;,
	0.700000;2.710859;-1.192644;,
	-0.700000;2.710859;-1.192644;,
	0.700000;2.727683;-1.055284;,
	-0.700000;2.727683;-1.055284;,
	-0.000000;2.710859;-1.192644;,
	0.000000;2.727683;-1.055284;,
	0.700000;2.727683;-1.055284;,
	-0.700000;2.727683;-1.055284;,
	0.700000;2.732955;-0.910240;,
	-0.700000;2.732955;-0.910240;,
	0.000000;2.727683;-1.055284;,
	0.000000;2.732955;-0.910240;,
	0.700000;2.732955;-0.910240;,
	-0.700000;2.732955;-0.910240;,
	0.700000;2.733120;0.000000;,
	-0.700000;2.733120;0.000000;,
	0.000000;2.732955;-0.910240;,
	0.000000;2.733120;0.000000;,
	0.700000;1.366560;2.012852;,
	-0.700000;1.366560;2.012852;,
	0.700000;0.670250;2.012852;,
	-0.700000;0.670250;2.012852;,
	0.000000;0.670250;2.012852;,
	0.000000;1.366560;2.012852;,
	0.700000;0.670250;2.012852;,
	-0.700000;0.670250;2.012852;,
	0.700000;0.566653;1.989015;,
	-0.700000;0.566653;1.989015;,
	0.000000;0.566653;1.989015;,
	0.000000;0.670250;2.012852;,
	0.700000;0.566653;1.989015;,
	-0.700000;0.566653;1.989015;,
	0.700000;0.519807;1.969930;,
	-0.700000;0.519807;1.969930;,
	0.700000;0.472960;1.950844;,
	-0.700000;0.472960;1.950844;,
	0.000000;0.472960;1.950844;,
	0.000000;0.566653;1.989015;,
	0.700000;0.472960;1.950844;,
	-0.700000;0.472960;1.950844;,
	0.700000;0.310607;1.833624;,
	-0.700000;0.310607;1.833624;,
	0.000000;0.310607;1.833624;,
	0.000000;0.472960;1.950844;,
	0.700000;0.310607;1.833624;,
	-0.700000;0.310607;1.833624;,
	0.700000;0.240907;1.755105;,
	-0.700000;0.240907;1.755105;,
	0.000000;0.240907;1.755105;,
	0.000000;0.310607;1.833624;,
	0.700000;0.240907;1.755105;,
	-0.700000;0.240907;1.755105;,
	0.700000;0.179123;1.663903;,
	-0.700000;0.179123;1.663903;,
	0.000000;0.179123;1.663903;,
	0.000000;0.240907;1.755105;,
	0.700000;0.179123;1.663903;,
	-0.700000;0.179123;1.663903;,
	0.700000;0.152429;1.612380;,
	-0.700000;0.152429;1.612380;,
	0.700000;0.125735;1.560856;,
	-0.700000;0.125735;1.560856;,
	0.000000;0.125735;1.560856;,
	0.000000;0.179123;1.663903;,
	0.700000;0.125735;1.560856;,
	-0.700000;0.125735;1.560856;,
	0.700000;0.081233;1.447111;,
	-0.700000;0.081233;1.447111;,
	0.000000;0.081233;1.447111;,
	0.000000;0.125735;1.560856;,
	0.700000;0.081233;1.447111;,
	-0.700000;0.081233;1.447111;,
	0.700000;0.046123;1.324001;,
	-0.700000;0.046123;1.324001;,
	0.000000;0.046123;1.324001;,
	0.000000;0.081233;1.447111;,
	0.700000;0.046123;1.324001;,
	-0.700000;0.046123;1.324001;,
	0.700000;0.022261;1.192644;,
	-0.700000;0.022261;1.192644;,
	-0.000000;0.022261;1.192644;,
	0.000000;0.046123;1.324001;,
	0.700000;0.022261;1.192644;,
	-0.700000;0.022261;1.192644;,
	0.700000;0.013849;1.123964;,
	-0.700000;0.013849;1.123964;,
	0.700000;0.005437;1.055284;,
	-0.700000;0.005437;1.055284;,
	0.000000;0.005437;1.055284;,
	-0.000000;0.022261;1.192644;,
	0.700000;0.005437;1.055284;,
	-0.700000;0.005437;1.055284;,
	0.700000;0.000165;0.910240;,
	-0.700000;0.000165;0.910240;,
	0.000000;0.000165;0.910240;,
	0.000000;0.005437;1.055284;,
	0.700000;0.000165;0.910240;,
	-0.700000;0.000165;0.910240;,
	0.700000;0.000000;0.000000;,
	-0.700000;0.000000;0.000000;,
	0.000000;0.000000;0.000000;,
	0.000000;0.000165;0.910240;,
	0.700000;1.366560;2.012852;,
	0.700000;2.062870;2.012852;,
	-0.700000;1.366560;2.012852;,
	-0.700000;2.062870;2.012852;,
	0.000000;1.366560;2.012852;,
	0.000000;2.062870;2.012852;,
	0.700000;2.062870;2.012852;,
	0.700000;2.166466;1.989015;,
	-0.700000;2.062870;2.012852;,
	-0.700000;2.166466;1.989015;,
	0.000000;2.166466;1.989015;,
	0.000000;2.062870;2.012852;,
	0.700000;2.166466;1.989015;,
	0.700000;2.213313;1.969930;,
	0.700000;2.260160;1.950844;,
	-0.700000;2.166466;1.989015;,
	-0.700000;2.213313;1.969930;,
	-0.700000;2.260160;1.950844;,
	0.000000;2.260160;1.950844;,
	0.000000;2.166466;1.989015;,
	0.700000;2.260160;1.950844;,
	0.700000;2.422513;1.833624;,
	-0.700000;2.260160;1.950844;,
	-0.700000;2.422513;1.833624;,
	0.000000;2.422513;1.833624;,
	0.000000;2.260160;1.950844;,
	0.700000;2.422513;1.833624;,
	0.700000;2.492213;1.755105;,
	-0.700000;2.422513;1.833624;,
	-0.700000;2.492213;1.755105;,
	0.000000;2.492213;1.755105;,
	0.000000;2.422513;1.833624;,
	0.700000;2.492213;1.755105;,
	0.700000;2.553997;1.663903;,
	-0.700000;2.492213;1.755105;,
	-0.700000;2.553997;1.663903;,
	0.000000;2.553997;1.663903;,
	0.000000;2.492213;1.755105;,
	0.700000;2.553997;1.663903;,
	0.700000;2.607385;1.560856;,
	-0.700000;2.553997;1.663903;,
	-0.700000;2.607385;1.560856;,
	0.000000;2.607385;1.560856;,
	0.000000;2.553997;1.663903;,
	0.700000;2.607385;1.560856;,
	0.700000;2.629636;1.503984;,
	0.700000;2.651887;1.447111;,
	-0.700000;2.607385;1.560856;,
	-0.700000;2.629636;1.503984;,
	-0.700000;2.651887;1.447111;,
	0.000000;2.651887;1.447111;,
	0.000000;2.607385;1.560856;,
	0.700000;2.651887;1.447111;,
	0.700000;2.686997;1.324001;,
	-0.700000;2.651887;1.447111;,
	-0.700000;2.686997;1.324001;,
	0.000000;2.686997;1.324001;,
	0.000000;2.651887;1.447111;,
	0.700000;2.686997;1.324001;,
	0.700000;2.710859;1.192644;,
	-0.700000;2.686997;1.324001;,
	-0.700000;2.710859;1.192644;,
	-0.000000;2.710859;1.192644;,
	0.000000;2.686997;1.324001;,
	0.700000;2.710859;1.192644;,
	0.700000;2.727683;1.055284;,
	-0.700000;2.710859;1.192644;,
	-0.700000;2.727683;1.055284;,
	0.000000;2.727683;1.055284;,
	-0.000000;2.710859;1.192644;,
	0.700000;2.727683;1.055284;,
	0.700000;2.732955;0.910240;,
	-0.700000;2.727683;1.055284;,
	-0.700000;2.732955;0.910240;,
	0.000000;2.732955;0.910240;,
	0.000000;2.727683;1.055284;,
	0.700000;2.732955;0.910240;,
	0.700000;2.733120;0.000000;,
	-0.700000;2.732955;0.910240;,
	-0.700000;2.733120;0.000000;,
	0.000000;2.733120;0.000000;,
	0.000000;2.732955;0.910240;;

	144;
	4;1;4;5;0;,
	4;2;5;4;3;,
	4;7;11;10;6;,
	4;8;10;11;9;,
	3;13;18;12;,
	3;13;14;19;,
	3;16;18;13;,
	3;13;19;16;,
	3;16;19;17;,
	3;15;18;16;,
	4;21;25;24;20;,
	4;22;24;25;23;,
	4;27;31;30;26;,
	4;28;30;31;29;,
	4;33;37;36;32;,
	4;34;36;37;35;,
	3;39;44;38;,
	3;39;40;45;,
	3;42;44;39;,
	3;39;45;42;,
	3;42;45;43;,
	3;41;44;42;,
	4;47;51;50;46;,
	4;48;50;51;49;,
	4;53;57;56;52;,
	4;54;56;57;55;,
	4;59;63;62;58;,
	4;60;62;63;61;,
	3;65;70;64;,
	3;65;66;71;,
	3;68;70;65;,
	3;65;71;68;,
	3;68;71;69;,
	3;67;70;68;,
	4;73;77;76;72;,
	4;74;76;77;75;,
	4;79;83;82;78;,
	4;80;82;83;81;,
	4;88;89;86;84;,
	4;85;87;89;88;,
	4;94;95;92;90;,
	4;91;93;95;94;,
	3;102;98;96;,
	3;102;97;99;,
	3;99;98;102;,
	3;98;99;103;,
	3;103;99;101;,
	3;100;98;103;,
	4;108;109;106;104;,
	4;105;107;109;108;,
	4;114;115;112;110;,
	4;111;113;115;114;,
	4;120;121;118;116;,
	4;117;119;121;120;,
	4;126;127;124;122;,
	4;123;125;127;126;,
	3;134;130;128;,
	3;134;129;131;,
	3;131;130;134;,
	3;130;131;135;,
	3;135;131;133;,
	3;132;130;135;,
	4;140;141;138;136;,
	4;137;139;141;140;,
	4;146;147;144;142;,
	4;143;145;147;146;,
	4;152;153;150;148;,
	4;149;151;153;152;,
	4;158;159;156;154;,
	4;155;157;159;158;,
	4;164;165;162;160;,
	4;161;163;165;164;,
	4;171;170;168;166;,
	4;167;169;170;171;,
	4;177;176;174;172;,
	4;173;175;176;177;,
	3;185;180;178;,
	3;185;179;181;,
	3;181;180;185;,
	3;180;181;184;,
	3;184;181;183;,
	3;182;180;184;,
	4;191;190;188;186;,
	4;187;189;190;191;,
	4;197;196;194;192;,
	4;193;195;196;197;,
	4;203;202;200;198;,
	4;199;201;202;203;,
	3;211;206;204;,
	3;211;205;207;,
	3;207;206;211;,
	3;206;207;210;,
	3;210;207;209;,
	3;208;206;210;,
	4;217;216;214;212;,
	4;213;215;216;217;,
	4;223;222;220;218;,
	4;219;221;222;223;,
	4;229;228;226;224;,
	4;225;227;228;229;,
	3;237;232;230;,
	3;237;231;233;,
	3;233;232;237;,
	3;232;233;236;,
	3;236;233;235;,
	3;234;232;236;,
	4;243;242;240;238;,
	4;239;241;242;243;,
	4;249;248;246;244;,
	4;245;247;248;249;,
	4;251;255;254;250;,
	4;252;254;255;253;,
	4;257;260;261;256;,
	4;258;261;260;259;,
	3;263;269;262;,
	3;263;264;268;,
	3;266;269;263;,
	3;263;268;266;,
	3;266;268;267;,
	3;265;269;266;,
	4;271;274;275;270;,
	4;272;275;274;273;,
	4;277;280;281;276;,
	4;278;281;280;279;,
	4;283;286;287;282;,
	4;284;287;286;285;,
	4;289;292;293;288;,
	4;290;293;292;291;,
	3;295;301;294;,
	3;295;296;300;,
	3;298;301;295;,
	3;295;300;298;,
	3;298;300;299;,
	3;297;301;298;,
	4;303;306;307;302;,
	4;304;307;306;305;,
	4;309;312;313;308;,
	4;310;313;312;311;,
	4;315;318;319;314;,
	4;316;319;318;317;,
	4;321;324;325;320;,
	4;322;325;324;323;,
	4;327;330;331;326;,
	4;328;331;330;329;;

	MeshNormals {
		332;
		-0.000000;-0.000000;-1.000000;,
		-0.000000;-0.000000;-1.000000;,
		-0.000000;-0.000000;-1.000000;,
		-0.000000;-0.000000;-1.000000;,
		-0.000000;-0.000000;-1.000000;,
		-0.000000;-0.000000;-1.000000;,
		-0.000000;-0.224232;-0.974536;,
		-0.000000;-0.224232;-0.974536;,
		-0.000000;-0.224232;-0.974536;,
		-0.000000;-0.224232;-0.974536;,
		-0.000000;-0.224232;-0.974536;,
		-0.000000;-0.224232;-0.974536;,
		-0.000000;-0.377292;-0.926094;,
		0.000000;-0.377292;-0.926094;,
		-0.000000;-0.377292;-0.926094;,
		-0.000000;-0.377292;-0.926094;,
		0.000000;-0.377292;-0.926094;,
		-0.000000;-0.377292;-0.926094;,
		-0.000000;-0.377292;-0.926094;,
		-0.000000;-0.377292;-0.926094;,
		-0.000000;-0.585376;-0.810762;,
		-0.000000;-0.585376;-0.810762;,
		-0.000000;-0.585376;-0.810762;,
		-0.000000;-0.585376;-0.810762;,
		-0.000000;-0.585376;-0.810762;,
		-0.000000;-0.585376;-0.810762;,
		-0.000000;-0.747857;-0.663860;,
		-0.000000;-0.747857;-0.663860;,
		-0.000000;-0.747857;-0.663860;,
		-0.000000;-0.747857;-0.663860;,
		-0.000000;-0.747857;-0.663860;,
		-0.000000;-0.747857;-0.663860;,
		-0.000000;-0.827911;-0.560859;,
		-0.000000;-0.827911;-0.560859;,
		-0.000000;-0.827911;-0.560859;,
		-0.000000;-0.827911;-0.560859;,
		-0.000000;-0.827911;-0.560859;,
		-0.000000;-0.827911;-0.560859;,
		-0.000000;-0.887906;-0.460025;,
		-0.000000;-0.887906;-0.460025;,
		-0.000000;-0.887906;-0.460025;,
		-0.000000;-0.887906;-0.460025;,
		-0.000000;-0.887906;-0.460025;,
		-0.000000;-0.887906;-0.460025;,
		-0.000000;-0.887906;-0.460025;,
		-0.000000;-0.887906;-0.460025;,
		-0.000000;-0.931262;-0.364350;,
		-0.000000;-0.931262;-0.364350;,
		-0.000000;-0.931262;-0.364350;,
		-0.000000;-0.931262;-0.364350;,
		-0.000000;-0.931262;-0.364350;,
		-0.000000;-0.931262;-0.364350;,
		-0.000000;-0.961657;-0.274255;,
		-0.000000;-0.961657;-0.274255;,
		-0.000000;-0.961657;-0.274255;,
		-0.000000;-0.961657;-0.274255;,
		-0.000000;-0.961657;-0.274255;,
		-0.000000;-0.961657;-0.274255;,
		-0.000000;-0.983898;-0.178731;,
		-0.000000;-0.983898;-0.178731;,
		-0.000000;-0.983898;-0.178731;,
		-0.000000;-0.983898;-0.178731;,
		-0.000000;-0.983898;-0.178731;,
		-0.000000;-0.983898;-0.178731;,
		-0.000000;-0.992583;-0.121570;,
		-0.000000;-0.992583;-0.121570;,
		-0.000000;-0.992583;-0.121570;,
		-0.000000;-0.992583;-0.121570;,
		-0.000000;-0.992583;-0.121570;,
		-0.000000;-0.992583;-0.121570;,
		-0.000000;-0.992583;-0.121570;,
		-0.000000;-0.992583;-0.121570;,
		-0.000000;-0.999340;-0.036323;,
		-0.000000;-0.999340;-0.036323;,
		-0.000000;-0.999340;-0.036323;,
		-0.000000;-0.999340;-0.036323;,
		-0.000000;-0.999340;-0.036323;,
		-0.000000;-0.999340;-0.036323;,
		-0.000000;-1.000000;-0.000182;,
		-0.000000;-1.000000;-0.000182;,
		-0.000000;-1.000000;-0.000182;,
		-0.000000;-1.000000;-0.000182;,
		-0.000000;-1.000000;-0.000182;,
		-0.000000;-1.000000;-0.000182;,
		0.000000;0.000000;-1.000000;,
		0.000000;0.000000;-1.000000;,
		0.000000;0.000000;-1.000000;,
		0.000000;0.000000;-1.000000;,
		0.000000;0.000000;-1.000000;,
		0.000000;0.000000;-1.000000;,
		0.000000;0.224231;-0.974536;,
		0.000000;0.224231;-0.974536;,
		0.000000;0.224231;-0.974536;,
		0.000000;0.224231;-0.974536;,
		0.000000;0.224231;-0.974536;,
		0.000000;0.224231;-0.974536;,
		0.000000;0.377293;-0.926094;,
		0.000000;0.377293;-0.926094;,
		0.000000;0.377293;-0.926094;,
		0.000000;0.377293;-0.926094;,
		0.000000;0.377293;-0.926094;,
		0.000000;0.377293;-0.926094;,
		0.000000;0.377293;-0.926094;,
		0.000000;0.377293;-0.926094;,
		0.000000;0.585376;-0.810762;,
		0.000000;0.585376;-0.810762;,
		0.000000;0.585376;-0.810762;,
		0.000000;0.585376;-0.810762;,
		0.000000;0.585376;-0.810762;,
		0.000000;0.585376;-0.810762;,
		0.000000;0.747857;-0.663860;,
		0.000000;0.747857;-0.663860;,
		0.000000;0.747857;-0.663860;,
		0.000000;0.747857;-0.663860;,
		0.000000;0.747857;-0.663860;,
		0.000000;0.747857;-0.663860;,
		0.000000;0.827911;-0.560859;,
		0.000000;0.827911;-0.560859;,
		0.000000;0.827911;-0.560859;,
		0.000000;0.827911;-0.560859;,
		0.000000;0.827911;-0.560859;,
		0.000000;0.827911;-0.560859;,
		0.000000;0.887906;-0.460024;,
		0.000000;0.887906;-0.460024;,
		0.000000;0.887906;-0.460024;,
		0.000000;0.887906;-0.460024;,
		0.000000;0.887906;-0.460024;,
		0.000000;0.887906;-0.460024;,
		0.000000;0.931262;-0.364350;,
		0.000000;0.931262;-0.364350;,
		0.000000;0.931262;-0.364350;,
		0.000000;0.931262;-0.364350;,
		0.000000;0.931262;-0.364350;,
		0.000000;0.931262;-0.364350;,
		0.000000;0.931262;-0.364350;,
		0.000000;0.931262;-0.364350;,
		0.000000;0.961657;-0.274254;,
		0.000000;0.961657;-0.274254;,
		0.000000;0.961657;-0.274254;,
		0.000000;0.961657;-0.274254;,
		0.000000;0.961657;-0.274254;,
		0.000000;0.961657;-0.274254;,
		0.000000;0.983898;-0.178731;,
		0.000000;0.983898;-0.178731;,
		0.000000;0.983898;-0.178731;,
		0.000000;0.983898;-0.178731;,
		0.000000;0.983898;-0.178731;,
		0.000000;0.983898;-0.178731;,
		0.000000;0.992583;-0.121571;,
		0.000000;0.992583;-0.121571;,
		0.000000;0.992583;-0.121571;,
		0.000000;0.992583;-0.121571;,
		0.000000;0.992583;-0.121571;,
		0.000000;0.992583;-0.121571;,
		0.000000;0.999340;-0.036323;,
		0.000000;0.999340;-0.036323;,
		0.000000;0.999340;-0.036323;,
		0.000000;0.999340;-0.036323;,
		0.000000;0.999340;-0.036323;,
		0.000000;0.999340;-0.036323;,
		0.000000;1.000000;-0.000182;,
		0.000000;1.000000;-0.000182;,
		0.000000;1.000000;-0.000182;,
		0.000000;1.000000;-0.000182;,
		0.000000;1.000000;-0.000182;,
		0.000000;1.000000;-0.000182;,
		0.000000;0.000000;1.000000;,
		0.000000;0.000000;1.000000;,
		0.000000;0.000000;1.000000;,
		0.000000;0.000000;1.000000;,
		0.000000;0.000000;1.000000;,
		0.000000;0.000000;1.000000;,
		0.000000;-0.224232;0.974536;,
		0.000000;-0.224232;0.974536;,
		0.000000;-0.224232;0.974536;,
		0.000000;-0.224232;0.974536;,
		0.000000;-0.224232;0.974536;,
		0.000000;-0.224232;0.974536;,
		0.000000;-0.377292;0.926094;,
		0.000000;-0.377292;0.926094;,
		0.000000;-0.377292;0.926094;,
		0.000000;-0.377292;0.926094;,
		0.000000;-0.377292;0.926094;,
		0.000000;-0.377292;0.926094;,
		0.000000;-0.377292;0.926094;,
		0.000000;-0.377292;0.926094;,
		0.000000;-0.585376;0.810762;,
		0.000000;-0.585376;0.810762;,
		0.000000;-0.585376;0.810762;,
		0.000000;-0.585376;0.810762;,
		0.000000;-0.585376;0.810762;,
		0.000000;-0.585376;0.810762;,
		0.000000;-0.747857;0.663860;,
		0.000000;-0.747857;0.663860;,
		0.000000;-0.747857;0.663860;,
		0.000000;-0.747857;0.663860;,
		0.000000;-0.747857;0.663860;,
		0.000000;-0.747857;0.663860;,
		0.000000;-0.827911;0.560859;,
		0.000000;-0.827911;0.560859;,
		0.000000;-0.827911;0.560859;,
		0.000000;-0.827911;0.560859;,
		0.000000;-0.827911;0.560859;,
		0.000000;-0.827911;0.560859;,
		0.000000;-0.887906;0.460025;,
		0.000000;-0.887906;0.460025;,
		-0.000000;-0.887906;0.460025;,
		-0.000000;-0.887906;0.460025;,
		0.000000;-0.887906;0.460025;,
		0.000000;-0.887906;0.460025;,
		0.000000;-0.887906;0.460025;,
		0.000000;-0.887906;0.460025;,
		0.000000;-0.931262;0.364350;,
		0.000000;-0.931262;0.364350;,
		0.000000;-0.931262;0.364350;,
		0.000000;-0.931262;0.364350;,
		0.000000;-0.931262;0.364350;,
		0.000000;-0.931262;0.364350;,
		0.000000;-0.961657;0.274255;,
		0.000000;-0.961657;0.274255;,
		0.000000;-0.961657;0.274255;,
		0.000000;-0.961657;0.274255;,
		0.000000;-0.961657;0.274255;,
		0.000000;-0.961657;0.274255;,
		0.000000;-0.983898;0.178731;,
		0.000000;-0.983898;0.178731;,
		0.000000;-0.983898;0.178731;,
		0.000000;-0.983898;0.178731;,
		0.000000;-0.983898;0.178731;,
		0.000000;-0.983898;0.178731;,
		0.000000;-0.992583;0.121570;,
		0.000000;-0.992583;0.121570;,
		-0.000000;-0.992583;0.121570;,
		-0.000000;-0.992583;0.121570;,
		0.000000;-0.992583;0.121570;,
		0.000000;-0.992583;0.121570;,
		0.000000;-0.992583;0.121570;,
		0.000000;-0.992583;0.121570;,
		0.000000;-0.999340;0.036323;,
		0.000000;-0.999340;0.036323;,
		0.000000;-0.999340;0.036323;,
		0.000000;-0.999340;0.036323;,
		0.000000;-0.999340;0.036323;,
		0.000000;-0.999340;0.036323;,
		0.000000;-1.000000;0.000182;,
		0.000000;-1.000000;0.000182;,
		0.000000;-1.000000;0.000182;,
		0.000000;-1.000000;0.000182;,
		0.000000;-1.000000;0.000182;,
		0.000000;-1.000000;0.000182;,
		0.000000;0.000000;1.000000;,
		0.000000;0.000000;1.000000;,
		0.000000;0.000000;1.000000;,
		0.000000;0.000000;1.000000;,
		0.000000;0.000000;1.000000;,
		0.000000;0.000000;1.000000;,
		0.000000;0.224231;0.974536;,
		0.000000;0.224231;0.974536;,
		0.000000;0.224231;0.974536;,
		0.000000;0.224231;0.974536;,
		0.000000;0.224231;0.974536;,
		0.000000;0.224231;0.974536;,
		0.000000;0.377293;0.926094;,
		0.000000;0.377293;0.926094;,
		0.000000;0.377293;0.926094;,
		0.000000;0.377293;0.926094;,
		0.000000;0.377293;0.926094;,
		0.000000;0.377293;0.926094;,
		0.000000;0.377293;0.926094;,
		0.000000;0.377293;0.926094;,
		0.000000;0.585376;0.810762;,
		0.000000;0.585376;0.810762;,
		0.000000;0.585376;0.810762;,
		0.000000;0.585376;0.810762;,
		0.000000;0.585376;0.810762;,
		0.000000;0.585376;0.810762;,
		0.000000;0.747857;0.663860;,
		0.000000;0.747857;0.663860;,
		0.000000;0.747857;0.663860;,
		0.000000;0.747857;0.663860;,
		0.000000;0.747857;0.663860;,
		0.000000;0.747857;0.663860;,
		0.000000;0.827911;0.560859;,
		0.000000;0.827911;0.560859;,
		0.000000;0.827911;0.560859;,
		0.000000;0.827911;0.560859;,
		0.000000;0.827911;0.560859;,
		0.000000;0.827911;0.560859;,
		0.000000;0.887906;0.460024;,
		0.000000;0.887906;0.460024;,
		0.000000;0.887906;0.460024;,
		0.000000;0.887906;0.460024;,
		0.000000;0.887906;0.460024;,
		0.000000;0.887906;0.460024;,
		0.000000;0.931262;0.364350;,
		0.000000;0.931262;0.364350;,
		0.000000;0.931262;0.364350;,
		0.000000;0.931262;0.364350;,
		0.000000;0.931262;0.364350;,
		0.000000;0.931262;0.364350;,
		0.000000;0.931262;0.364350;,
		0.000000;0.931262;0.364350;,
		0.000000;0.961657;0.274254;,
		0.000000;0.961657;0.274254;,
		0.000000;0.961657;0.274254;,
		0.000000;0.961657;0.274254;,
		0.000000;0.961657;0.274254;,
		0.000000;0.961657;0.274254;,
		0.000000;0.983898;0.178731;,
		0.000000;0.983898;0.178731;,
		0.000000;0.983898;0.178731;,
		0.000000;0.983898;0.178731;,
		0.000000;0.983898;0.178731;,
		0.000000;0.983898;0.178731;,
		0.000000;0.992583;0.121571;,
		0.000000;0.992583;0.121571;,
		0.000000;0.992583;0.121571;,
		0.000000;0.992583;0.121571;,
		0.000000;0.992583;0.121571;,
		0.000000;0.992583;0.121571;,
		0.000000;0.999340;0.036323;,
		0.000000;0.999340;0.036323;,
		0.000000;0.999340;0.036323;,
		0.000000;0.999340;0.036323;,
		0.000000;0.999340;0.036323;,
		0.000000;0.999340;0.036323;,
		0.000000;1.000000;0.000182;,
		0.000000;1.000000;0.000182;,
		0.000000;1.000000;0.000182;,
		0.000000;1.000000;0.000182;,
		0.000000;1.000000;0.000182;,
		0.000000;1.000000;0.000182;;

		144;
		4;1;4;5;0;,
		4;2;5;4;3;,
		4;7;11;10;6;,
		4;8;10;11;9;,
		3;13;18;12;,
		3;13;14;19;,
		3;16;18;13;,
		3;13;19;16;,
		3;16;19;17;,
		3;15;18;16;,
		4;21;25;24;20;,
		4;22;24;25;23;,
		4;27;31;30;26;,
		4;28;30;31;29;,
		4;33;37;36;32;,
		4;34;36;37;35;,
		3;39;44;38;,
		3;39;40;45;,
		3;42;44;39;,
		3;39;45;42;,
		3;42;45;43;,
		3;41;44;42;,
		4;47;51;50;46;,
		4;48;50;51;49;,
		4;53;57;56;52;,
		4;54;56;57;55;,
		4;59;63;62;58;,
		4;60;62;63;61;,
		3;65;70;64;,
		3;65;66;71;,
		3;68;70;65;,
		3;65;71;68;,
		3;68;71;69;,
		3;67;70;68;,
		4;73;77;76;72;,
		4;74;76;77;75;,
		4;79;83;82;78;,
		4;80;82;83;81;,
		4;88;89;86;84;,
		4;85;87;89;88;,
		4;94;95;92;90;,
		4;91;93;95;94;,
		3;102;98;96;,
		3;102;97;99;,
		3;99;98;102;,
		3;98;99;103;,
		3;103;99;101;,
		3;100;98;103;,
		4;108;109;106;104;,
		4;105;107;109;108;,
		4;114;115;112;110;,
		4;111;113;115;114;,
		4;120;121;118;116;,
		4;117;119;121;120;,
		4;126;127;124;122;,
		4;123;125;127;126;,
		3;134;130;128;,
		3;134;129;131;,
		3;131;130;134;,
		3;130;131;135;,
		3;135;131;133;,
		3;132;130;135;,
		4;140;141;138;136;,
		4;137;139;141;140;,
		4;146;147;144;142;,
		4;143;145;147;146;,
		4;152;153;150;148;,
		4;149;151;153;152;,
		4;158;159;156;154;,
		4;155;157;159;158;,
		4;164;165;162;160;,
		4;161;163;165;164;,
		4;171;170;168;166;,
		4;167;169;170;171;,
		4;177;176;174;172;,
		4;173;175;176;177;,
		3;185;180;178;,
		3;185;179;181;,
		3;181;180;185;,
		3;180;181;184;,
		3;184;181;183;,
		3;182;180;184;,
		4;191;190;188;186;,
		4;187;189;190;191;,
		4;197;196;194;192;,
		4;193;195;196;197;,
		4;203;202;200;198;,
		4;199;201;202;203;,
		3;211;206;204;,
		3;211;205;207;,
		3;207;206;211;,
		3;206;207;210;,
		3;210;207;209;,
		3;208;206;210;,
		4;217;216;214;212;,
		4;213;215;216;217;,
		4;223;222;220;218;,
		4;219;221;222;223;,
		4;229;228;226;224;,
		4;225;227;228;229;,
		3;237;232;230;,
		3;237;231;233;,
		3;233;232;237;,
		3;232;233;236;,
		3;236;233;235;,
		3;234;232;236;,
		4;243;242;240;238;,
		4;239;241;242;243;,
		4;249;248;246;244;,
		4;245;247;248;249;,
		4;251;255;254;250;,
		4;252;254;255;253;,
		4;257;260;261;256;,
		4;258;261;260;259;,
		3;263;269;262;,
		3;263;264;268;,
		3;266;269;263;,
		3;263;268;266;,
		3;266;268;267;,
		3;265;269;266;,
		4;271;274;275;270;,
		4;272;275;274;273;,
		4;277;280;281;276;,
		4;278;281;280;279;,
		4;283;286;287;282;,
		4;284;287;286;285;,
		4;289;292;293;288;,
		4;290;293;292;291;,
		3;295;301;294;,
		3;295;296;300;,
		3;298;301;295;,
		3;295;300;298;,
		3;298;300;299;,
		3;297;301;298;,
		4;303;306;307;302;,
		4;304;307;306;305;,
		4;309;312;313;308;,
		4;310;313;312;311;,
		4;315;318;319;314;,
		4;316;319;318;317;,
		4;321;324;325;320;,
		4;322;325;324;323;,
		4;327;330;331;326;,
		4;328;331;330;329;;
	}

	MeshTextureCoords  {
		332;
		0.561953;0.599458;,
		0.463020;0.661084;,
		0.438047;0.400543;,
		0.339113;0.462169;,
		0.401067;0.561627;,
		0.500000;0.500000;,
		0.463020;0.661084;,
		0.447916;0.670493;,
		0.339113;0.462169;,
		0.324010;0.471578;,
		0.401067;0.561627;,
		0.385963;0.571035;,
		0.447916;0.670493;,
		0.440729;0.674970;,
		0.433542;0.679447;,
		0.324010;0.471578;,
		0.316822;0.476055;,
		0.309635;0.480532;,
		0.385963;0.571035;,
		0.371588;0.579989;,
		0.433542;0.679447;,
		0.405090;0.697170;,
		0.309635;0.480532;,
		0.281184;0.498255;,
		0.371588;0.579989;,
		0.343137;0.597712;,
		0.405090;0.697170;,
		0.390173;0.706462;,
		0.281184;0.498255;,
		0.266266;0.507547;,
		0.343137;0.597712;,
		0.328219;0.607004;,
		0.390173;0.706462;,
		0.372956;0.717186;,
		0.263918;0.509009;,
		0.250614;0.517297;,
		0.329002;0.606517;,
		0.315698;0.614804;,
		0.374521;0.716212;,
		0.366276;0.721347;,
		0.358032;0.726483;,
		0.250614;0.517297;,
		0.242370;0.522432;,
		0.234125;0.527568;,
		0.312568;0.616754;,
		0.296078;0.627025;,
		0.358032;0.726483;,
		0.340678;0.737293;,
		0.234125;0.527568;,
		0.216771;0.538378;,
		0.296078;0.627025;,
		0.278724;0.637836;,
		0.340678;0.737293;,
		0.320670;0.749756;,
		0.216771;0.538378;,
		0.198582;0.549708;,
		0.282362;0.635569;,
		0.258716;0.650299;,
		0.322488;0.748623;,
		0.303519;0.760439;,
		0.198582;0.549708;,
		0.179613;0.561524;,
		0.260535;0.649166;,
		0.241566;0.660982;,
		0.303519;0.760439;,
		0.293688;0.766563;,
		0.283857;0.772687;,
		0.179613;0.561524;,
		0.169782;0.567648;,
		0.159951;0.573772;,
		0.241566;0.660982;,
		0.221904;0.673230;,
		0.283857;0.772687;,
		0.263236;0.785533;,
		0.159951;0.573772;,
		0.139329;0.586618;,
		0.221904;0.673230;,
		0.201282;0.686075;,
		0.263236;0.785533;,
		0.133907;0.866093;,
		0.139329;0.586618;,
		0.010000;0.667178;,
		0.201282;0.686075;,
		0.071953;0.766636;,
		0.561953;0.599458;,
		0.438047;0.400543;,
		0.660887;0.537831;,
		0.536980;0.338916;,
		0.500000;0.500000;,
		0.598933;0.438373;,
		0.660887;0.537831;,
		0.536980;0.338916;,
		0.675990;0.528422;,
		0.552084;0.329507;,
		0.598933;0.438373;,
		0.614037;0.428965;,
		0.675990;0.528422;,
		0.552084;0.329507;,
		0.683178;0.523945;,
		0.559271;0.325030;,
		0.690365;0.519468;,
		0.566458;0.320553;,
		0.614037;0.428965;,
		0.628412;0.420011;,
		0.690365;0.519468;,
		0.566458;0.320553;,
		0.718816;0.501745;,
		0.594910;0.302831;,
		0.628412;0.420011;,
		0.656863;0.402288;,
		0.718816;0.501745;,
		0.594910;0.302831;,
		0.733734;0.492453;,
		0.609827;0.293538;,
		0.656863;0.402288;,
		0.671781;0.392996;,
		0.733734;0.492453;,
		0.609827;0.293538;,
		0.749386;0.482704;,
		0.625479;0.283789;,
		0.671781;0.392996;,
		0.687432;0.383246;,
		0.749386;0.482704;,
		0.606893;0.253951;,
		0.765875;0.472432;,
		0.641968;0.273517;,
		0.668846;0.353409;,
		0.741094;0.432649;,
		0.765875;0.472432;,
		0.641968;0.273517;,
		0.774552;0.467027;,
		0.650645;0.268112;,
		0.783229;0.461622;,
		0.659322;0.262707;,
		0.703922;0.372975;,
		0.721276;0.362164;,
		0.783229;0.461622;,
		0.659322;0.262707;,
		0.801418;0.450292;,
		0.677512;0.251377;,
		0.721276;0.362164;,
		0.739465;0.350834;,
		0.801418;0.450292;,
		0.677512;0.251377;,
		0.820387;0.438476;,
		0.696481;0.239561;,
		0.739465;0.350834;,
		0.758434;0.339018;,
		0.820387;0.438476;,
		0.696481;0.239561;,
		0.840050;0.426228;,
		0.716143;0.227313;,
		0.758434;0.339018;,
		0.778096;0.326770;,
		0.840050;0.426228;,
		0.716143;0.227313;,
		0.860671;0.413382;,
		0.736764;0.214467;,
		0.778096;0.326770;,
		0.798718;0.313925;,
		0.860671;0.413382;,
		0.736764;0.214467;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.798718;0.313925;,
		0.928047;0.233364;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.133907;0.866093;,
		0.010000;0.667178;,
		0.071953;0.766636;,
		0.071953;0.766636;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;,
		0.990000;0.332822;,
		0.990000;0.332822;,
		0.866093;0.133907;,
		0.866093;0.133907;,
		0.928047;0.233364;,
		0.928047;0.233364;;

	}

	MeshMaterialList {
		1;
		144;
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0;;
		Material mat-1 {
			1.000000;1.000000;1.000000;1.000000;;
			0;
			0.000000;0.000000;0.000000;;
			0.000000;0.000000;0.000000;;
		}
	}
}

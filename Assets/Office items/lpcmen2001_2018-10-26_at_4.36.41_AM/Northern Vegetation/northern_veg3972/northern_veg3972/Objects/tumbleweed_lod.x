xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.18
// Time: Sun Oct 04 20:14:06 2009

// Start of Templates

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template FVFData {
 <b6e70a0e-8ef9-4e83-94ad-ecc8b0c04897>
 DWORD dwFVF;
 DWORD nDWords;
 array DWORD data[nDWords];
}

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

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
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

template XSkinMeshHeader {
 <3CF169CE-FF7C-44ab-93C0-F78F62D172E2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template SkinWeights {
 <6F0D123B-BAD2-4167-A0D0-80224F25FABB>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template AnimTicksPerSecond {
 <9E415A43-7BA6-4a73-8743-B73D47E88476>
 DWORD AnimTicksPerSecond;
}

AnimTicksPerSecond {
 30;
}

// Start of Frames

   Frame Mesh_Object {
      FrameTransformMatrix {
       1.000000, 0.000000, 0.000000, 0.000000,
       0.000000, 1.000000, 0.000000, 0.000000,
       0.000000, 0.000000, 1.000000, 0.000000,
       0.000000, 0.000000, 0.000000, 1.000000;;
      }

   }

   Frame Body {
      FrameTransformMatrix {
       1.000000, 0.000000, 0.000000, 0.000000,
       0.000000, 1.000000, 0.000000, 0.000000,
       0.000000, 0.000000, 1.000000, 0.000000,
       0.000000, 0.000000, 0.000000, 1.000000;;
      }

      Mesh skinnedMesh {
       39;
       -0.018039; -0.217372; 0.008114;,
       0.256842; -0.188757; 0.102155;,
       -0.118681; -0.107621; 0.088871;,
       0.134847; -0.067911; 0.202138;,
       -0.060683; -0.191688; -0.281732;,
       -0.182678; -0.070842; -0.181748;,
       -0.119789; 0.176896; 0.092727;,
       0.112724; 0.120698; 0.178321;,
       -0.183601; 0.117767; -0.182424;,
       0.010999; -0.018855; -0.190232;,
       -0.233756; -0.185735; -0.138494;,
       -0.007484; 0.117110; -0.068757;,
       -0.245685; -0.023998; -0.023680;,
       0.262830; -0.145960; -0.142931;,
       0.250902; 0.015777; -0.028117;,
       -0.011411; 0.132303; 0.214730;,
       -0.226364; -0.011644; 0.165020;,
       0.251985; 0.023275; 0.160343;,
       0.034180; -0.207009; -0.086820;,
       -0.043184; -0.178227; -0.287743;,
       0.152627; -0.093863; -0.028383;,
       0.102926; -0.054035; -0.217542;,
       -0.056955; -0.208259; 0.105070;,
       0.062455; -0.095826; 0.163959;,
       -0.262828; -0.181239; 0.174729;,
       -0.092089; -0.057047; 0.219927;,
       0.138963; 0.181560; -0.021092;,
       0.102697; 0.139795; -0.216389;,
       0.072270; 0.196924; 0.170527;,
       -0.116947; 0.136784; 0.246083;,
       0.102034; 0.038348; -0.132483;,
       0.177553; 0.224258; 0.068872;,
       0.102850; -0.114773; -0.071139;,
       0.186802; 0.042849; 0.135540;,
       -0.148699; 0.085872; -0.262424;,
       -0.134895; -0.095536; -0.185862;,
       -0.038563; -0.224258; 0.117965;,
       0.084601; -0.033090; 0.267906;,
       -0.241651; -0.171475; -0.063391;;
       72;
       3;0, 1, 2;,
       3;1, 3, 2;,
       3;4, 0, 5;,
       3;0, 2, 5;,
       3;2, 3, 6;,
       3;3, 7, 6;,
       3;5, 2, 8;,
       3;2, 6, 8;,
       3;9, 10, 11;,
       3;10, 12, 11;,
       3;13, 9, 14;,
       3;9, 11, 14;,
       3;11, 12, 15;,
       3;12, 16, 15;,
       3;14, 11, 17;,
       3;11, 15, 17;,
       3;18, 19, 20;,
       3;19, 21, 20;,
       3;22, 18, 23;,
       3;18, 20, 23;,
       3;24, 22, 25;,
       3;22, 23, 25;,
       3;20, 21, 26;,
       3;21, 27, 26;,
       3;23, 20, 28;,
       3;20, 26, 28;,
       3;25, 23, 29;,
       3;23, 28, 29;,
       3;30, 31, 32;,
       3;31, 33, 32;,
       3;34, 30, 35;,
       3;30, 32, 35;,
       3;32, 33, 36;,
       3;33, 37, 36;,
       3;35, 32, 38;,
       3;32, 36, 38;,
       3;3, 1, 2;,
       3;1, 0, 2;,
       3;0, 4, 5;,
       3;5, 2, 0;,
       3;3, 2, 6;,
       3;6, 7, 3;,
       3;6, 2, 8;,
       3;2, 5, 8;,
       3;12, 10, 11;,
       3;10, 9, 11;,
       3;9, 13, 14;,
       3;14, 11, 9;,
       3;12, 11, 15;,
       3;15, 16, 12;,
       3;15, 11, 17;,
       3;11, 14, 17;,
       3;21, 19, 20;,
       3;19, 18, 20;,
       3;20, 18, 23;,
       3;18, 22, 23;,
       3;22, 24, 25;,
       3;25, 23, 22;,
       3;21, 20, 26;,
       3;26, 27, 21;,
       3;26, 20, 28;,
       3;20, 23, 28;,
       3;28, 23, 29;,
       3;23, 25, 29;,
       3;33, 31, 32;,
       3;31, 30, 32;,
       3;30, 34, 35;,
       3;35, 32, 30;,
       3;33, 32, 36;,
       3;36, 37, 33;,
       3;36, 32, 38;,
       3;32, 35, 38;;

      MeshNormals {
       39;
       0.675890; 0.734181; -0.064430;,
       0.000000; 0.000000; 0.000000;,
       -0.216086; 0.912264; -0.347967;,
       0.317621; -0.000751; -0.948218;,
       -0.695258; 0.699731; 0.164296;,
       0.675890; 0.734181; -0.064430;,
       0.317621; -0.000751; -0.948218;,
       -0.921089; -0.153238; -0.357929;,
       0.000000; 0.000000; 0.000000;,
       -0.332933; -0.562580; 0.756742;,
       0.000000; 0.000000; 0.000000;,
       0.723816; -0.101487; 0.682488;,
       0.562900; -0.825229; 0.046258;,
       0.206850; 0.673811; 0.709361;,
       -0.332933; -0.562580; 0.756743;,
       0.562900; -0.825229; 0.046258;,
       0.839514; 0.529774; -0.120643;,
       0.000000; 0.000000; 0.000000;,
       0.000000; 0.000000; 0.000000;,
       0.000000; 0.000000; 0.000000;,
       -0.022483; -0.979472; -0.200323;,
       -0.983559; -0.054039; 0.172311;,
       -0.159891; 0.537199; -0.828162;,
       0.709348; -0.485947; -0.510569;,
       -0.282861; -0.803065; -0.524478;,
       -0.159891; 0.537199; -0.828162;,
       -0.983559; -0.054039; 0.172311;,
       -0.218472; 0.005547; -0.975827;,
       1.000000; 0.000000; 0.000000;,
       0.000000; 0.000000; 0.000000;,
       -0.388466; 0.333423; 0.859024;,
       0.000000; 0.000000; 0.000000;,
       -0.789019; -0.461864; 0.405130;,
       -0.750552; 0.631082; -0.195978;,
       -0.296227; -0.926309; 0.232812;,
       -0.388466; 0.333423; 0.859024;,
       -0.750551; 0.631083; -0.195978;,
       -0.380935; -0.643903; -0.663534;,
       0.000000; 0.000000; 0.000000;;
       72;
       3;0, 1, 2;,
       3;1, 3, 2;,
       3;4, 0, 5;,
       3;0, 2, 5;,
       3;2, 3, 6;,
       3;3, 7, 6;,
       3;5, 2, 8;,
       3;2, 6, 8;,
       3;9, 10, 11;,
       3;10, 12, 11;,
       3;13, 9, 14;,
       3;9, 11, 14;,
       3;11, 12, 15;,
       3;12, 16, 15;,
       3;14, 11, 17;,
       3;11, 15, 17;,
       3;18, 19, 20;,
       3;19, 21, 20;,
       3;22, 18, 23;,
       3;18, 20, 23;,
       3;24, 22, 25;,
       3;22, 23, 25;,
       3;20, 21, 26;,
       3;21, 27, 26;,
       3;23, 20, 28;,
       3;20, 26, 28;,
       3;25, 23, 29;,
       3;23, 28, 29;,
       3;30, 31, 32;,
       3;31, 33, 32;,
       3;34, 30, 35;,
       3;30, 32, 35;,
       3;32, 33, 36;,
       3;33, 37, 36;,
       3;35, 32, 38;,
       3;32, 36, 38;,
       3;3, 1, 2;,
       3;1, 0, 2;,
       3;0, 4, 5;,
       3;5, 2, 0;,
       3;3, 2, 6;,
       3;6, 7, 3;,
       3;6, 2, 8;,
       3;2, 5, 8;,
       3;12, 10, 11;,
       3;10, 9, 11;,
       3;9, 13, 14;,
       3;14, 11, 9;,
       3;12, 11, 15;,
       3;15, 16, 12;,
       3;15, 11, 17;,
       3;11, 14, 17;,
       3;21, 19, 20;,
       3;19, 18, 20;,
       3;20, 18, 23;,
       3;18, 22, 23;,
       3;22, 24, 25;,
       3;25, 23, 22;,
       3;21, 20, 26;,
       3;26, 27, 21;,
       3;26, 20, 28;,
       3;20, 23, 28;,
       3;28, 23, 29;,
       3;23, 25, 29;,
       3;33, 31, 32;,
       3;31, 30, 32;,
       3;30, 34, 35;,
       3;35, 32, 30;,
       3;33, 32, 36;,
       3;36, 37, 33;,
       3;36, 32, 38;,
       3;32, 35, 38;;
      }

      MeshTextureCoords {
       39;
       0.500000; 1.000000;,
       0.000000; 1.000000;,
       0.500000; 0.500000;,
       0.000000; 0.500000;,
       1.000000; 1.000000;,
       1.000000; 0.500000;,
       0.500000; 0.000000;,
       0.000000; 0.000000;,
       1.000000; 0.000000;,
       0.500000; 1.000000;,
       0.000000; 1.000000;,
       0.500000; 0.500000;,
       0.000000; 0.500000;,
       1.000000; 1.000000;,
       1.000000; 0.500000;,
       0.500000; 0.000000;,
       0.000000; 0.000000;,
       1.000000; 0.000000;,
       0.333300; 1.000000;,
       0.000000; 1.000000;,
       0.333300; 0.500000;,
       0.000000; 0.500000;,
       0.666700; 1.000000;,
       0.666700; 0.500000;,
       1.000000; 1.000000;,
       1.000000; 0.500000;,
       0.333300; 0.000000;,
       0.000000; 0.000000;,
       0.666700; 0.000000;,
       1.000000; 0.000000;,
       0.500000; 1.000000;,
       0.000000; 1.000000;,
       0.500000; 0.500000;,
       0.000000; 0.500000;,
       1.000000; 1.000000;,
       1.000000; 0.500000;,
       0.500000; 0.000000;,
       0.000000; 0.000000;,
       1.000000; 0.000000;;
      }

      MeshVertexColors {
       39;
       0; 1.000000; 1.000000; 1.000000; 1.000000;,
       1; 1.000000; 1.000000; 1.000000; 1.000000;,
       2; 1.000000; 1.000000; 1.000000; 1.000000;,
       3; 1.000000; 1.000000; 1.000000; 1.000000;,
       4; 1.000000; 1.000000; 1.000000; 1.000000;,
       5; 1.000000; 1.000000; 1.000000; 1.000000;,
       6; 1.000000; 1.000000; 1.000000; 1.000000;,
       7; 1.000000; 1.000000; 1.000000; 1.000000;,
       8; 1.000000; 1.000000; 1.000000; 1.000000;,
       9; 1.000000; 1.000000; 1.000000; 1.000000;,
       10; 1.000000; 1.000000; 1.000000; 1.000000;,
       11; 1.000000; 1.000000; 1.000000; 1.000000;,
       12; 1.000000; 1.000000; 1.000000; 1.000000;,
       13; 1.000000; 1.000000; 1.000000; 1.000000;,
       14; 1.000000; 1.000000; 1.000000; 1.000000;,
       15; 1.000000; 1.000000; 1.000000; 1.000000;,
       16; 1.000000; 1.000000; 1.000000; 1.000000;,
       17; 1.000000; 1.000000; 1.000000; 1.000000;,
       18; 1.000000; 1.000000; 1.000000; 1.000000;,
       19; 1.000000; 1.000000; 1.000000; 1.000000;,
       20; 1.000000; 1.000000; 1.000000; 1.000000;,
       21; 1.000000; 1.000000; 1.000000; 1.000000;,
       22; 1.000000; 1.000000; 1.000000; 1.000000;,
       23; 1.000000; 1.000000; 1.000000; 1.000000;,
       24; 1.000000; 1.000000; 1.000000; 1.000000;,
       25; 1.000000; 1.000000; 1.000000; 1.000000;,
       26; 1.000000; 1.000000; 1.000000; 1.000000;,
       27; 1.000000; 1.000000; 1.000000; 1.000000;,
       28; 1.000000; 1.000000; 1.000000; 1.000000;,
       29; 1.000000; 1.000000; 1.000000; 1.000000;,
       30; 1.000000; 1.000000; 1.000000; 1.000000;,
       31; 1.000000; 1.000000; 1.000000; 1.000000;,
       32; 1.000000; 1.000000; 1.000000; 1.000000;,
       33; 1.000000; 1.000000; 1.000000; 1.000000;,
       34; 1.000000; 1.000000; 1.000000; 1.000000;,
       35; 1.000000; 1.000000; 1.000000; 1.000000;,
       36; 1.000000; 1.000000; 1.000000; 1.000000;,
       37; 1.000000; 1.000000; 1.000000; 1.000000;,
       38; 1.000000; 1.000000; 1.000000; 1.000000;;
      }

      MeshMaterialList {
       1;
       72;
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
       0;

       Material tumbleweed_DF_tga_Smoothing {
        1.000000; 1.000000; 1.000000; 1.000000;;
        20.000000;
        0.200000; 0.200000; 0.200000;;
        0.000000; 0.000000; 0.000000;;

        TextureFilename {
         "tumbleweed_DF.tga";
        }
       }

      }

      XSkinMeshHeader {
       1;
       1;
       1;
      }

      SkinWeights {
       "Mesh_Object";
       39;
       0,
       1,
       2,
       3,
       4,
       5,
       6,
       7,
       8,
       9,
       10,
       11,
       12,
       13,
       14,
       15,
       16,
       17,
       18,
       19,
       20,
       21,
       22,
       23,
       24,
       25,
       26,
       27,
       28,
       29,
       30,
       31,
       32,
       33,
       34,
       35,
       36,
       37,
       38;
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000;
          1.000000, -0.000000, 0.000000, 0.000000,
          -0.000000, 1.000000, -0.000000, 0.000000,
          0.000000, -0.000000, 1.000000, 0.000000,
          -0.000000, -0.000000, -0.000000, 1.000000;;
      }


     }
   }

// Start of Animation

AnimationSet Untitled {
}

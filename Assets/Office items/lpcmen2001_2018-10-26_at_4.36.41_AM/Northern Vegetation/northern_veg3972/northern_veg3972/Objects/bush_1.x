xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.18
// Time: Sun Oct 04 19:30:40 2009

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
       32;
       -0.638446; 0.505695; 0.413041;,
       -0.268413; -0.059074; 0.300859;,
       -0.412614; 0.627415; -0.109758;,
       -0.525442; 0.059302; -0.176304;,
       -0.014139; 0.659074; -0.531614;,
       0.065434; 0.023221; -0.604867;,
       -0.028740; 0.630056; 0.004033;,
       -0.389412; -0.005797; -0.050671;,
       -0.275688; 0.557780; -0.471854;,
       -0.381348; 0.024465; -0.207881;,
       0.227152; 0.531781; -0.266426;,
       0.148257; -0.001534; -0.382911;,
       -0.637645; 0.585288; 0.207219;,
       -0.724711; 0.060424; -0.008605;,
       -0.162954; 0.596695; 0.042875;,
       -0.170468; -0.037794; 0.195162;,
       -0.243791; 0.613517; 0.525169;,
       0.145409; 0.029209; 0.604865;,
       0.027107; 0.586851; -0.010847;,
       -0.084248; 0.002543; 0.080916;,
       0.677439; 0.514127; 0.194123;,
       0.724710; -0.050642; -0.189641;,
       0.290873; 0.635847; -0.224070;,
       0.184338; 0.067735; -0.147854;,
       -0.195687; 0.600518; 0.251641;,
       -0.270165; 0.011434; 0.184610;,
       0.309255; 0.573634; 0.118299;,
       0.290131; -0.015450; 0.455722;,
       0.467906; 0.585288; 0.069706;,
       0.509864; 0.596695; -0.430875;,
       0.235313; 0.060424; 0.061916;,
       0.646062; -0.037794; -0.362336;;
       16;
       3;0, 1, 2;,
       3;1, 3, 2;,
       3;4, 5, 6;,
       3;5, 7, 6;,
       3;8, 9, 10;,
       3;9, 11, 10;,
       3;12, 13, 14;,
       3;13, 15, 14;,
       3;16, 17, 18;,
       3;17, 19, 18;,
       3;20, 21, 22;,
       3;21, 23, 22;,
       3;24, 25, 26;,
       3;25, 27, 26;,
       3;28, 29, 30;,
       3;30, 29, 31;;

      MeshNormals {
       32;
       0.777055; 0.564448; -0.278539;,
       0.777055; 0.564448; -0.278539;,
       0.777055; 0.564448; -0.278539;,
       0.777055; 0.564448; -0.278539;,
       -0.992171; -0.120297; -0.033562;,
       -0.929686; 0.178843; -0.322024;,
       -0.929686; 0.178843; -0.322024;,
       -0.703019; 0.446400; -0.553616;,
       0.307656; 0.372431; 0.875582;,
       0.307656; 0.372431; 0.875582;,
       0.307656; 0.372431; 0.875582;,
       0.307656; 0.372431; 0.875582;,
       0.307795; -0.405068; 0.860919;,
       0.003995; -0.099702; 0.995009;,
       0.003995; -0.099702; 0.995009;,
       -0.300619; 0.225956; 0.926592;,
       0.794934; 0.478648; -0.372795;,
       0.794934; 0.478648; -0.372795;,
       0.794934; 0.478648; -0.372795;,
       0.794934; 0.478648; -0.372795;,
       0.059987; 0.564449; -0.823286;,
       0.059987; 0.564449; -0.823286;,
       0.059987; 0.564449; -0.823286;,
       0.059987; 0.564449; -0.823286;,
       0.245814; -0.140215; 0.959122;,
       -0.066717; 0.184419; 0.980581;,
       -0.066717; 0.184419; 0.980581;,
       -0.365668; 0.471519; 0.802469;,
       -0.911814; 0.405067; -0.067197;,
       -0.911395; 0.099702; -0.399272;,
       -0.911395; 0.099702; -0.399272;,
       -0.725487; -0.225955; -0.650086;;
       16;
       3;0, 1, 2;,
       3;1, 3, 2;,
       3;4, 5, 6;,
       3;5, 7, 6;,
       3;8, 9, 10;,
       3;9, 11, 10;,
       3;12, 13, 14;,
       3;13, 15, 14;,
       3;16, 17, 18;,
       3;17, 19, 18;,
       3;20, 21, 22;,
       3;21, 23, 22;,
       3;24, 25, 26;,
       3;25, 27, 26;,
       3;28, 29, 30;,
       3;30, 29, 31;;
      }

      MeshTextureCoords {
       32;
       -0.000000; 0.009900;,
       -0.000000; 0.999900;,
       1.000000; 0.009900;,
       1.000000; 0.999900;,
       -0.000000; 0.009900;,
       -0.000000; 0.999900;,
       1.000000; 0.009900;,
       1.000000; 0.999900;,
       -0.000000; 0.009900;,
       -0.000000; 0.999900;,
       1.000000; 0.009900;,
       1.000000; 0.999900;,
       -0.000000; 0.009900;,
       -0.000000; 0.999900;,
       1.000000; 0.009900;,
       1.000000; 0.999900;,
       -0.000000; 0.009900;,
       -0.000000; 0.999900;,
       1.000000; 0.009900;,
       1.000000; 0.999900;,
       -0.000000; 0.009900;,
       -0.000000; 0.999900;,
       1.000000; 0.009900;,
       1.000000; 0.999900;,
       -0.000000; 0.009900;,
       -0.000000; 0.999900;,
       1.000000; 0.009900;,
       1.000000; 0.999900;,
       -0.000000; 0.009900;,
       1.000000; 0.009900;,
       -0.000000; 0.999900;,
       1.000000; 0.999900;;
      }

      MeshVertexColors {
       32;
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
       31; 1.000000; 1.000000; 1.000000; 1.000000;;
      }

      MeshMaterialList {
       1;
       16;
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

       Material bush_1_DF_tga_Smoothing {
        1.000000; 1.000000; 1.000000; 1.000000;;
        20.000000;
        0.200000; 0.200000; 0.200000;;
        0.000000; 0.000000; 0.000000;;

        TextureFilename {
         "bush_1_DF.tga";
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
       32;
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
       31;
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

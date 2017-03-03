attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

uniform float u_vRatio;

varying vec2 v_uv0;
varying vec2 v_uv0Ratio;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
      
    v_uv0       = in_TextureCoord;    
    v_uv0Ratio  = in_TextureCoord * vec2(1.0, u_vRatio); 
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_uv0;
varying vec2 v_uv0Ratio;

uniform sampler2D sampler0;

void main()
{
        
    vec4 col = texture2D(gm_BaseTexture, v_uv0);
    
    float col_R = texture2D(sampler0, vec2(col.r,0.5)).r;
    float col_G = texture2D(sampler0, vec2(col.g,0.5)).g;
    float col_B = texture2D(sampler0, vec2(col.b,0.5)).b;
    
    vec4 Complete = vec4(col_R, col_G, col_B, 1.0);
    
    gl_FragColor = Complete;
}


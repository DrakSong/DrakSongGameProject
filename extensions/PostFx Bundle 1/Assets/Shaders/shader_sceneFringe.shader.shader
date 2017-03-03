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

uniform float u_threshold;

void main()
{
    float VG = abs(v_uv0.x * 2.0 - 1.0);
    
    vec2 uv_R  = v_uv0 + (vec2(u_threshold, 0.0) * VG);
    vec2 uv_GB = v_uv0 - (vec2(u_threshold, 0.0) * VG);
    
    float DF_r = texture2D( gm_BaseTexture, uv_R ).r;
    vec2 DF_gb = texture2D( gm_BaseTexture, uv_GB ).gb;
    
    vec4 Complete = vec4(0.0,0.0,0.0,1.0);
    Complete.r = DF_r;
    Complete.gb = DF_gb;
    
    gl_FragColor = Complete;
}


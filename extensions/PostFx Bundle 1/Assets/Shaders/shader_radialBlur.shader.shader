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

uniform float u_vRatio;
uniform float u_amplitude;

void main()
{
    float pi = 3.14159265359;
    float circle = 2.0 * pi;
    
    vec4 blur = vec4(0.0,0.0,0.0,0.0);
    
    int SAMPLES = 16;
    
    float stp = (1.0 / float(SAMPLES));
    
    for (int i = 0; i < SAMPLES; i++)
    {
        highp float amp = (u_amplitude / float(SAMPLES)) * float(i);
        
        highp float shift_x = amp;
        highp float shift_y = amp;
        
        highp vec2 shiftUV =  v_uv0 + (vec2(shift_x, shift_y) * ((1.0 - v_uv0) * 2.0 -1.0) * vec2(1.0, u_vRatio));
        
        blur += texture2D(gm_BaseTexture, shiftUV) / float(SAMPLES);
    }
    
    vec4 Complete = blur;
    
    gl_FragColor = vec4(Complete.rgb, 1.0);
}


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
    float piNum = 3.14159265359;
    float circle = 2.0 * piNum;
    
    float lightShaft = 0.0;
    
    int SAMPLES = 16;
    
    float stp = (1.0 / float(SAMPLES));
    
    for (int i = 0; i < SAMPLES; i++)
    {        
        float modulator = (1.0 - float(i) / float(SAMPLES)) * 2.0 - 1.0;
        
        float shift_x = modulator * u_amplitude;
        float shift_y = modulator * u_amplitude;
        
        //diagonal 1
        vec2 shiftUV1 =  v_uv0 + vec2(shift_x, -shift_y);
        vec4 DF1 = texture2D(gm_BaseTexture, shiftUV1);
        
        float lum1 = dot(DF1.rgb, vec3( 0.2126, 0.7152, 0.0722));
        float glare1  =  pow(abs(lum1), 12.0);        
        glare1 = glare1 * (1.0 - abs(modulator));
        glare1 = glare1 / (float(SAMPLES));
        
        //diagonal 2
        vec2 shiftUV2 =  v_uv0 + vec2(shift_y, shift_x);
        vec4 DF2 = texture2D(gm_BaseTexture, shiftUV2);
        
        float lum2 = dot(DF2.rgb, vec3( 0.2126, 0.7152, 0.0722));
        float glare2  =  pow(abs(lum2), 12.0);        
        glare2 = glare2 * (1.0 - abs(modulator));
        glare2 = glare2 / (float(SAMPLES));
        
        lightShaft += glare1;
        lightShaft += glare2;
    }
    
    vec4 Complete = texture2D(gm_BaseTexture, v_uv0) + (lightShaft * 5.0);
    
    gl_FragColor = vec4(Complete.rgb, 1.0);
}


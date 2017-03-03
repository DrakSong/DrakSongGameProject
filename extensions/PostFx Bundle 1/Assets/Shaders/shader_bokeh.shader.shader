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

uniform float u_threshold;
uniform float u_radius;

void main()
{
    float pi = 3.14159265359;
    float circle = 2.0 * pi;
    
    vec4 bloom = vec4(0.0,0.0,0.0,0.0);
    
    //first circle
    int SAMPLES = 16;

    for (int i = 0; i < SAMPLES; i++)
    {
        highp float angle = (circle / float(SAMPLES)) * float(i);
        
        highp float shift_x = cos(angle) * u_radius;
        highp float shift_y = sin(angle) * u_radius;
        highp vec2 shiftUV =  v_uv0 + vec2(shift_x, shift_y);
        
        vec4 col = texture2D(gm_BaseTexture, shiftUV);
        col -= u_threshold;
        col = max(col, vec4(0.0));          
        
        bloom += col/ float(SAMPLES);
    }
    
    //second circle    
    highp float offset = circle / float(SAMPLES) * 0.5;
    
    for (int i = 0; i < SAMPLES; i++)
    {
        highp float angle = (circle / float(SAMPLES)) * float(i);
        
        highp float shift_x = cos(angle) * u_radius * 0.5;
        highp float shift_y = sin(angle) * u_radius * 0.5;
        highp vec2 shiftUV =  v_uv0 + vec2(shift_x, shift_y);
        
        vec4 col = texture2D(gm_BaseTexture, shiftUV);
        col -= u_threshold;
        col = max(col, vec4(0.0));          
        
        bloom += col/ float(SAMPLES);
    }
    
    float bloomLum = dot(bloom.rgb, vec3(0.333));
    bloomLum *= 10.0;
    
    vec4 DF = texture2D(gm_BaseTexture, v_uv0) * 0.5;
    //DF.rgb = pow(DF.rgb, vec3(2.0));
    
    vec4 BK = texture2D(sampler0, v_uv0Ratio);
    
    vec4 Complete = DF + (BK * bloomLum);
    
    gl_FragColor = vec4(Complete.rgb, 1.0);
}


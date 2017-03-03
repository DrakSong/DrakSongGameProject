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

//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform sampler2D sampler0;

uniform float u_scale;
uniform float u_speed;
uniform float u_time;
uniform vec3 u_color1;
uniform vec3 u_color2;

varying vec2 v_uv0;
varying vec2 v_uv0Ratio;

void main()
{    
    vec4 DF = texture2D( gm_BaseTexture, v_uv0);
    vec4 SC = texture2D( sampler0, v_uv0Ratio );
   
    vec4 result = vec4(DF.rgb * SC.rgb * u_color1, 1.0);
    
    float tt = abs(sin(u_time * u_speed));
    
    float lum = dot(result.rgb, vec3( 0.2126, 0.7152, 0.0722));
    
    float rng_min = max(tt - u_scale, 0.0);
    float rng_max = min(tt + u_scale, 1.0);
    
    float scanR1 = smoothstep(rng_min, tt, v_uv0.x);
    float scanR2 = smoothstep(tt, rng_max, v_uv0.x);
    
    float scanMix = abs(scanR1 * (1.0 - scanR2));
    
    scanMix = scanMix * (pow(1.0 - lum, 5.0));
    
    vec3 scanCol = scanMix * u_color2;
    
    vec4 Complete = result + vec4(scanCol, 1.0);
    Complete *= 1.5; //overbright
    
    gl_FragColor = vec4(Complete.rgb, 1.0);
}


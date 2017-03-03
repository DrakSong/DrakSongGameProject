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
uniform sampler2D sampler1;

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
    vec4 PP = texture2D( sampler0, v_uv0Ratio );
    vec4 MK = texture2D( sampler1, v_uv0Ratio );
    
    float tt = abs(sin(u_time * u_speed));
    
    float rng_min = max(tt - u_scale * 0.5, 0.0);
    float rng_max = min(tt + u_scale * 0.5, 1.0);
    
    float edg_min = max(tt - u_scale, 0.0);
    float edg_max = min(tt + u_scale, 1.0);
       
    float mixMask = smoothstep(rng_min, rng_max, MK.r);
    float edgeMask = smoothstep(edg_min, edg_max, MK.r);
    edgeMask = min(edgeMask * (1.0 - mixMask) * 5.0 , 1.0);
    
    vec3 burnCol = mix(u_color2,u_color1,mixMask);
    
    vec4 result = mix(DF, PP, mixMask);
    result = mix(result, vec4(burnCol,1.0), edgeMask);
    
    gl_FragColor = vec4(result.rgb, 1.0);
}


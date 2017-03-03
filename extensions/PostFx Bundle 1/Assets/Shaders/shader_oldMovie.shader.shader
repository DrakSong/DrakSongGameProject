attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

uniform float u_vRatio;
uniform float u_speedX;
uniform float u_speedY;
uniform float u_time;

varying vec2 v_uv0;
varying vec2 v_uv0Mov;
varying vec2 v_uv0Ratio;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
        
    v_uv0       = in_TextureCoord;    
    v_uv0Ratio  = in_TextureCoord * vec2(1.0, u_vRatio);
    v_uv0Mov    = (in_TextureCoord + vec2(u_speedX,u_speedY) * u_time) * vec2(1.0, u_vRatio);
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_uv0;
varying vec2 v_uv0Mov;
varying vec2 v_uv0Ratio;

uniform sampler2D sampler0;
uniform sampler2D sampler1;

uniform vec3 u_movieColor;

void main()
{
    vec4 DF = texture2D( gm_BaseTexture, v_uv0 );
    vec4 dirt       = texture2D( sampler0, v_uv0Mov );
    vec4 vignette   = texture2D( sampler1, v_uv0Ratio );
    
    vec3 weights = vec3( 0.3, 0.59, 0.11);
    float lum = dot(DF.rgb, weights);
    
    vec3 col = lum * u_movieColor;
    vec4 Complete = vec4(col, 1.0);
        
    Complete *= dirt;
    Complete *= vignette;
    
    gl_FragColor = vec4(Complete.rgb, 1.0);
}


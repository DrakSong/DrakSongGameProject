attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

uniform float u_vRatio;
uniform float u_speed;
uniform float u_time;
uniform float u_fogScale;

varying vec2 v_uv0;
varying vec2 v_uv0Mov;
varying vec2 v_uv0Ratio;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
        
    v_uv0       = in_TextureCoord;    
    v_uv0Ratio  = in_TextureCoord * vec2(1.0, u_vRatio);
    v_uv0Mov    = (in_TextureCoord + vec2(u_speed,0.0) * u_time) * vec2(1.0, u_vRatio);
    v_uv0Mov.x *= u_fogScale; //stretch the fog
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_uv0;
varying vec2 v_uv0Mov;
varying vec2 v_uv0Ratio;

uniform sampler2D sampler0;
uniform sampler2D sampler1;

uniform vec3 u_fogColor;
uniform float u_distAmount;

void main()
{
    vec4 DF         = texture2D( gm_BaseTexture, v_uv0 );
    vec4 NM         = texture2D( sampler1, v_uv0Ratio ) * 2.0 - 1.0;
    vec2 FG_coords = v_uv0Mov + (NM.rg * u_distAmount);
    
    vec4 FG        = texture2D( sampler0, FG_coords );
    
    vec3 Complete = mix(DF.rgb, FG.rgb * u_fogColor, FG.a);
    
    gl_FragColor = vec4(Complete.rgb, 1.0);
}


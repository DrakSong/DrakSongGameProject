attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

uniform float u_vRatio;
uniform float u_speed;
uniform float u_time;
uniform float u_scale;

varying vec2 v_uv0;
varying vec2 v_uv0Mov;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
        
    v_uv0       = in_TextureCoord;    
    v_uv0Mov    = (in_TextureCoord + vec2(u_speed,0.0) * u_time) * vec2(1.0, u_vRatio);
    v_uv0Mov.x *= u_scale; //stretch the foreground
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_uv0;
varying vec2 v_uv0Mov;

uniform sampler2D sampler0;
uniform sampler2D sampler1;

uniform vec3 u_color;

void main()
{
    vec4 DF         = texture2D( gm_BaseTexture, v_uv0 );
    
    vec4 FG        = texture2D( sampler0, v_uv0Mov );
    
    vec3 Complete = mix(DF.rgb, u_color, FG.r);
    
    gl_FragColor = vec4(Complete.rgb, 1.0);
}


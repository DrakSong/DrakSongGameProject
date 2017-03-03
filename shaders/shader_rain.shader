attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

uniform float u_vRatio;
uniform vec2 u_speed1;
uniform vec2 u_speed2;
uniform vec2 u_scale1;
uniform vec2 u_scale2;
uniform float u_time;

varying vec2 v_uv0;
varying vec2 v_uv0Mov;
varying vec2 v_uv1Mov;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
        
    v_uv0       = in_TextureCoord;
    
    v_uv0Mov    = (in_TextureCoord + u_speed1 * u_time) * vec2(1.0, u_vRatio);
    v_uv0Mov   *= u_scale1;
    
    v_uv1Mov    = (in_TextureCoord + u_speed2 * u_time) * vec2(1.0, u_vRatio);
    v_uv1Mov   *= u_scale2;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_uv0;
varying vec2 v_uv0Mov;
varying vec2 v_uv1Mov;

uniform sampler2D sampler0;
uniform sampler2D sampler1;

uniform vec3 u_color;
uniform float u_rain1alpha;
uniform float u_rain2alpha;

void main()
{
    vec4 DF = texture2D( gm_BaseTexture, v_uv0 );
    
    vec4 rain1 = texture2D( sampler0, v_uv0Mov );
    vec4 rain2 = texture2D( sampler0, v_uv1Mov );
    
    vec3 Complete = vec3(0.0, 0.0, 0.0);
    Complete = mix(DF.rgb, u_color, rain1.r*u_rain1alpha);
    Complete = mix(Complete.rgb, u_color, rain2.r*u_rain2alpha);
    
    gl_FragColor = vec4(Complete.rgb, 1.0);
}


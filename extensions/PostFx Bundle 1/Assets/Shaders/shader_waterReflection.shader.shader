attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

uniform float u_vRatio;

varying vec2 v_uv0;
varying vec2 v_uv0_flip;
varying vec2 v_uv0Ratio;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
      
    v_uv0       = in_TextureCoord;
    
    v_uv0_flip  = in_TextureCoord;
    v_uv0_flip.y = 1.0 - in_TextureCoord.y;
      
    v_uv0Ratio  = in_TextureCoord * vec2(1.0, u_vRatio); 
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform sampler2D sampler0;

uniform float u_amplitude;
uniform float u_distAmount;
uniform vec3 u_waterColor;
uniform float u_waterLevel;

varying vec2 v_uv0;
varying vec2 v_uv0_flip;
varying vec2 v_uv0Ratio;

void main()
{    
    float waterLevel = u_waterLevel + u_amplitude;
    vec3 waterColor  = u_waterColor;
    float waterMask = smoothstep(waterLevel, 1.0, v_uv0.y);
    
    vec4 NM = texture2D( sampler0, v_uv0Ratio ) * 2.0 - 1.0;
       
    vec4 previous   = texture2D( gm_BaseTexture, v_uv0 );
    
    vec2 uvs = v_uv0_flip + vec2(0.0, (waterLevel - (1.0 - waterLevel))) + (u_distAmount * NM.rg);
    
    vec4 RF         = texture2D( gm_BaseTexture, uvs);
    RF.rgb = mix(RF.rgb, waterColor, waterMask);
    RF.rgb *= waterColor;
    
    float mixVal;
    
    if (v_uv0.y < waterLevel)
    {
        mixVal = 1.0;
    }else{
        mixVal = 0.0;
    }
    
    vec4 Complete = mix(RF,previous,mixVal);
    
    gl_FragColor = vec4(Complete.rgb, 1.0);
}


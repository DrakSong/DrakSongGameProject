//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x+2.0, in_Position.y, in_Position.z, 1.0);

    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;

    v_vColour = in_Colour;//_myCol;

    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{    
    //获取当前贴图的颜色
    vec4 _texCol = texture2D( gm_BaseTexture,  v_vTexcoord);
    //获取灰度值
    float _texGray = dot(_texCol.rgb, vec3(0.299, 0.587, 0.114));
    //将灰度值分别赋予rgb三色通道
    _texCol.rgb = vec3(_texGray,_texGray,_texGray);

    gl_FragColor = _texCol * v_vColour;
}


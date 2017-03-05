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
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
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
    //获取附近贴图的颜色，偏移值为0.001,适当调节偏移值，获取合适的影响范围
    vec4 _texCol1 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x+.001, v_vTexcoord.y));
    vec4 _texCol2 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x-.001, v_vTexcoord.y));
    vec4 _texCol3 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x, v_vTexcoord.y+.001));
    vec4 _texCol4 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x, v_vTexcoord.y-.001));
    vec4 _texCol5 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x+.001, v_vTexcoord.y+.001));
    vec4 _texCol6 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x-.001, v_vTexcoord.y+.001));
    vec4 _texCol7 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x-.001, v_vTexcoord.y+.001));
    vec4 _texCol8 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x-.001, v_vTexcoord.y-.001));
    //当前色的Alpha通道大于0 并且附近有小于0.01的Alpha的像素，我们认为他为边缘。
    if (_texCol.a > 0.0 && (_texCol1.a < .01 ||  _texCol2.a < .01 || _texCol3.a < .01 || _texCol4.a < .01 || _texCol5.a < .01 ||  _texCol6.a < .01 || _texCol7.a < .01 || _texCol8.a < .01))
        {
            //最终值
           _texCol.rgba = vec4(0.1,1.0,1.0,_texCol.a);
        }
    gl_FragColor = _texCol; //* v_vColour;
}


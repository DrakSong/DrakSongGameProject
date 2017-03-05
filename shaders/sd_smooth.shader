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
    vec4 _texCol = texture2D( gm_BaseTexture,  v_vTexcoord);
    //获取附近贴图的颜色，偏移值为0.002,适当调节偏移值，获取合适的影响范围
    vec4 _texCol1 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x+.002, v_vTexcoord.y));
    vec4 _texCol2 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x-.002, v_vTexcoord.y));
    vec4 _texCol3 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x, v_vTexcoord.y+.002));
    vec4 _texCol4 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x, v_vTexcoord.y-.002));
    vec4 _texCol5 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x+.002, v_vTexcoord.y+.002));
    vec4 _texCol6 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x-.002, v_vTexcoord.y+.002));
    vec4 _texCol7 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x-.002, v_vTexcoord.y+.002));
    vec4 _texCol8 = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x-.002, v_vTexcoord.y-.002));
    _texCol = vec4((_texCol.r+_texCol1.r+_texCol2.r+_texCol3.r+_texCol4.r+_texCol5.r+_texCol6.r+_texCol7.r+_texCol8.r)/9.0,
                    (_texCol.g+_texCol1.g+_texCol2.g+_texCol3.g+_texCol4.g+_texCol5.g+_texCol6.g+_texCol7.g+_texCol8.g)/9.0,
                      (_texCol.b+_texCol1.b+_texCol2.b+_texCol3.b+_texCol4.b+_texCol5.b+_texCol6.b+_texCol7.b+_texCol8.b)/9.0,
                        (_texCol.a+_texCol1.a+_texCol2.a+_texCol3.a+_texCol4.a+_texCol5.a+_texCol6.a+_texCol7.a+_texCol8.a)/9.0);
    gl_FragColor = _texCol ;
}


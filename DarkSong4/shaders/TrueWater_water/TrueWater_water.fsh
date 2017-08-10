varying vec2 v_texcoord;
varying vec4 v_color;

uniform sampler2D s_normalMap;
uniform sampler2D s_diffuseTex;

uniform vec2 u_time;
uniform vec2 u_textureRes;
uniform vec4 u_texturePos;
uniform float u_water_ypos;
uniform vec4 u_camera_pos;
uniform float u_perspective;
uniform vec4 u_sprite_coords;

void main() {   
    vec2 imagePos = v_texcoord - (u_texturePos.xy / u_camera_pos.zw);
    vec2 aspectRatio = u_camera_pos.zw / u_textureRes.xy;
    vec2 ssUVs = imagePos * aspectRatio;

    vec4 diffuse_final = texture2D(s_diffuseTex, u_sprite_coords.st + ssUVs * (u_sprite_coords.pq - u_sprite_coords.st));
    vec3 normalmap = vec3(0.0);
    
    vec3 final_color =  vec3(1.0);
      
    if (u_perspective == 1.0) {
        vec2 ray_dir = vec2(ssUVs.x - 0.5, ssUVs.y + 0.5);
        float ray =  1.0/ray_dir.y;
        vec2 hitPoint = vec2(ray * ray_dir.x, ray * 0.5);
        normalmap =  texture2D(s_normalMap, vec2(hitPoint.x - u_time.x, (1.0-hitPoint.y) - u_time.y) * u_texturePos.w).rgb; ///perspective
    }
    else {   
      normalmap =  texture2D(s_normalMap, vec2(ssUVs.x - u_time.x, ssUVs.y - u_time.y) * u_texturePos.w).rgb; ///NOT perspective
    }

    vec2 offset2 = normalmap.xy * 2.0 - 1.0;
    offset2 *= u_texturePos.z;
    
    //Refraction texture
    vec4 refraction = texture2D(gm_BaseTexture, vec2(v_texcoord.x + offset2.x, v_texcoord.y + offset2.y) );
      
    //Reflection texture
    float reflection_ypos = (u_water_ypos/u_camera_pos.w) - (v_texcoord.y-(u_water_ypos/u_camera_pos.w));
    
    //vec4 reflection = refraction;
    vec4 reflection = vec4(1.0);

    if (reflection_ypos>0.0) {
        reflection = texture2D(gm_BaseTexture, vec2(v_texcoord.x + offset2.x , reflection_ypos + offset2.y ) );
        reflection.a = length(reflection_ypos);
        
        gl_FragColor =  v_color * diffuse_final * mix(refraction, reflection, reflection.a);
        gl_FragColor.a = v_color.a * diffuse_final.a;
    }
    else {
        gl_FragColor = v_color * diffuse_final * refraction;
    }
}

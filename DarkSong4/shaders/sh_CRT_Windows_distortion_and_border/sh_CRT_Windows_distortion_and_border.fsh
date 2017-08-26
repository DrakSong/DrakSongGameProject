varying vec2 v_vTexcoord;

uniform vec4 u_crt_sizes;
uniform float distortion;
uniform bool distort;
uniform bool border;

    #define TEX2D(c) pow(abs(texture2D(gm_BaseTexture, (c))), vec4(inputGamma))          
    float PI = 3.141592653589;
    float inputGamma = 2.4;
    float outputGamma = 2.8;

    vec2 overscan = vec2(0.99, 0.99);
    vec2 aspect = vec2(u_crt_sizes.x/u_crt_sizes.x, u_crt_sizes.y/u_crt_sizes.x);
    float cornersize = 0.03;
    float cornersmooth = 80.0;
     
    float corner(vec2 coord)
    {
        coord = (coord - vec2(0.5)) * overscan + vec2(0.5);
        coord = min(coord, vec2(1.0)-coord) * aspect;
        vec2 cdist = vec2(cornersize);
        coord = (cdist - min(coord,cdist));
        float dist = sqrt(dot(coord,coord));
        return clamp((cdist.x-dist)*cornersmooth,0.0, 1.0);
    }

    vec2 radialDistortion(vec2 coord)
    {
        vec2 cc = coord - 0.5;
        float dist = dot(cc, cc) * distortion;
        return (coord + cc * (1.0 + dist) * dist);
    }
    
void main()
{
    vec2 one = 1.0 / u_crt_sizes.xy;
    vec2 _xy;
    
    if (distort == true)
        { _xy = radialDistortion(v_vTexcoord); }
    else
        { _xy = v_vTexcoord; }
        
    vec2 uv_ratio = fract(_xy * u_crt_sizes.xy) - vec2(0.5);

    float cval = corner(_xy);
    
    _xy = (floor(_xy * u_crt_sizes.xy) + vec2(0.5)) / u_crt_sizes.xy;

    vec3 mul_res  = TEX2D(_xy).rgb;
    
    if (border == true)
        { mul_res = pow(abs(mul_res), vec3(1.0 / (2.0 * inputGamma - outputGamma)))* vec3(cval); }
    else
        { mul_res = pow(abs(mul_res), vec3(1.0 / (2.0 * inputGamma - outputGamma))); }
    
    gl_FragColor = vec4(mul_res, 1.0);
}

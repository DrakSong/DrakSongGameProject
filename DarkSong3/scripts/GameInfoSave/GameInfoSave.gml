
var  F = json_decode(GameVarInfoCreat())

var  G = json_encode( global.GameInfo);
  G = json_decode(G)
 ds_map_delete(G,"实时变量")
  //G[?'实时变量'] = F; 
 ds_map_add_map(G,"实时变量",F);
 ds_map_secure_save(G,"GameInfo.fuck")
 ds_map_destroy(G);
 ds_map_destroy(F);

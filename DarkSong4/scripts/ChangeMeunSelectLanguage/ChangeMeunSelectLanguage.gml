///  @desc  -干啥来着
///  @arg type 进行选项的语言修改
var Csv =  load_csv("MeunSelect.csv");
var W,H;

ds_map_clear(global.MeunSelectMap);
 W = global.Language;
 for (H=1; H<ds_grid_height(Csv); H+=1)
 {
    ds_map_add(global.MeunSelectMap,Csv[#0,H],Csv[#W,H])
}


var i;
for (i=0; i<ds_grid_width(Csv); i+=1)
{
   ds_list_add(global.LanguageList,ds_grid_get(Csv,i,0))
};

ds_grid_destroy(Csv);
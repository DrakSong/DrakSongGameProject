/// @description Insert description here
// You can write your code in this editor
var List = TextList[| TextNo]
var str = List[? "Text"]

count += 1 count = min(count, string_length(str));
//逐渐播放时 按下确定全部显示
if (string_length(str) > count) and(KeyCheck("确认","按下")  ) {

    count = string_length(str);
    //exit;
}

//逐渐播放结束后 下确定 下一句
if (string_length(str) = count) and(TextNo < ds_list_size(TextList) - 1) and KeyCheck("确认","按下")

{
    TextNo++;
    count = 0;
    //exit;
}
//都播放结束 关闭
if (string_length(str) = count) and(TextNo = ds_list_size(TextList) - 1) and   KeyCheck("确认","按下")

{
    instance_destroy();
}
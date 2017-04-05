///array_smooth_1d(array,neighboors);
var _array = argument0, _length = array_length_1d(_array), _narray, _mean, _nboors = argument1;
for(var _i=_length-1;_i>=0;_i--){
 if is_real(_array[_i]) {
  _mean = _array[_i]; //The original value
  //Neighboors to the left
  for(var _j=1;_j<=_nboors;_j++){
   //Stop
   if _i-_j < 0 {
    break;
   }
   //or add to total
   if is_real(_array[_i-_j]) {
    _mean += _array[_i-_j];
   }
  }
  //Neighboors to the right
  for(var _j=1;_j<=_nboors;_j++){
   //Stop
   if _i+_j >= _length {
    break;
   }
   //or add to total
   if is_real(_array[_i+_j]) {
    _mean += _array[_i+_j];
   }
  }
  //Get the new array value
  _narray[_i] = _mean/(1+2*_nboors);
 } else {
  //Parse old value if it is not a real value
  _narray[_i] = _array[_i];
 }
}
return _narray;
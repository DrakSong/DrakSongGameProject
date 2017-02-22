///Get audio volume

//Get length of audio and copy part of buffer
len = async_load[? "data_len"];
buffer_seek(audio_buffer,buffer_seek_start,0);
buffer_copy(async_load[? "buffer_id"], 0, len, audio_buffer, 0);

//Alpha used for lowpass
var alpha = 0.003;
/** Looping through PCM output **/
for (var i = 0;i < len/16; i++) {
    var us = buffer_read(audio_buffer, buffer_s16);
    us = abs(us);
    
    /** Lowpass **/
    if (us_old == -1) us_old = us;
    us = alpha * us + (1.0 - alpha) * us_old;
    us_old = us;
    /**/
    
    microphone_volume = us;
    if (drawing)
        ds_list_insert(graph,0,microphone_volume);
    
}

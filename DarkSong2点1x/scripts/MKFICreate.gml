///Begin audio recording - DISABLE DRAWING HERE!!

//Disable or enable drawing of the graph
drawing = false;

microphone_volume = 0;
us_old = -1;
//Begin audio recording and create buffer and graph
if (audio_get_recorder_count() == 0) {
    //There is no microphone or recording is not supported.
    exit;
}
audio_record = audio_start_recording(0);
if (drawing)
    graph = ds_list_create();
audio_buffer = buffer_create(4800*2, buffer_fixed, 2);


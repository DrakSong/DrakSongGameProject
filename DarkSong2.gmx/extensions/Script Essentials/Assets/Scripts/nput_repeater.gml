///nput_repeater()
//Call this ONCE EVERY STEP (a persistent master controller is recommended).
//This will allow up, down, left and right inputs to be "repeatable";
//ie. holding it down will also trigger a press artificially. Good for menus.
//Nput is created by Andrew McCluskey (nalgames.com)


for( var i=K_LEFT;i<=K_DOWN;i+=1 )
{
    if( nput(i,P_HELD) )
    {
        global.InputRptVal[i]--;
        
        if( global.InputRptVal[i]==-1 )
        {
            if( global.InputRptCdn[i]==global.InputRptSet[i] )
            {
                global.InputRptCdn[i]=16;
            }
            else
            {
                global.InputRptCdn[i]=max(global.InputRptCdn[i]-2,4);
            }
            
            global.InputRptVal[i]=global.InputRptCdn[i];
        }
    }
    else
    {
        global.InputRptCdn[i]=global.InputRptSet[i];
        global.InputRptVal[i]=global.InputRptSet[i];
    }
}

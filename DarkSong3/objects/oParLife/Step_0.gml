///运动处理
//判断陆空
if (onGround) {  
    tempAccel = groundAccel;
    tempFric  = groundFric;
} else {
    tempAccel = airAccel;
    tempFric  = airFric;
}
//复位靠墙壁
// Reset wall cling
if ((!cRight && !cLeft) || onGround) {
    canStick = true;
    sticking = false;
}   
//贴墙壁的时候
// Cling to wall
if (((kRight && cLeft) || (kLeft && cRight)) && canStick && !onGround) {
    alarm[0] = clingTime;
    sticking = true; 
    canStick = false;       
}
//处理重力
// Handle gravity
if (!onGround) {
    if ((cLeft || cRight) && vy >= 0) {
        // Wall slide
        vy = Approach(vy, vyMax, gravSlide); //贴墙减速与否
    } else {
        // Fall normally
        vy = Approach(vy, vyMax, gravNorm);
    }
}

///左右移动
if !(state = RUN )
if kLeft and kRight {kLeft = false ; kRight = false;}//处理左右按下时候漂移的问题

if (state != ROLL) {
//左
// Left 
if (kLeft && !kRight && !sticking ) {
    if !attacking
    facing = -1;
    state  = RUN;
    //应用加速向左
    // Apply acceleration left
    if (vx > 0)
        vx = Approach(vx, 0, tempFric);   
    vx = Approach(vx, -vxMax, tempAccel);
    //右
// Right
} else if (kRight && !kLeft && !sticking) {
 if !attacking
    facing = 1;
    state  = RUN;
    //应用加速向右
    // Apply acceleration right
    if (vx < 0)
        vx = Approach(vx, 0, tempFric);   
    vx = Approach(vx, vxMax, tempAccel);
}
}
//摩擦
// Friction
if (!kRight && !kLeft) {
    vx = Approach(vx, 0, tempFric);
    
    if (state != ROLL)
        state = IDLE;
} 

///跳跃部分
// 贴墙跳跃关闭)
if (kJump && cLeft && !onGround) and SlideJumpON  {
        yscale = 1.33;
        xscale = 0.67;

        if (kLeft) {
                vy = -jumpHeight * 1.2;
                vx = jumpHeight * .66 * 0.618;
        } else {
                vy = -jumpHeight * 1.1;
                vx = vxMax * 0.618;
        }
}

if (kJump && cRight && !onGround) and SlideJumpON {
        yscale = 1.33;
        xscale = 0.67;

        if (kRight) {
                vy = -jumpHeight * 1.2;
                vx = -jumpHeight * .66 * 0.618;
        } else {
                vy = -jumpHeight * 1.1;
                vx = -vxMax * 0.618;
        }
}
//跳跃
// Jump 
if (kJump) {
        //地面起跳
        if oGameSystem.Debug
        {
        
          vy = -jumpHeight;

                                yscale = 1.33;
                                xscale = 0.67;
        }
        else
        {
        if (onGround ) {
                // Fall thru platform
                {
                        if (kDown) {
                                if (place_meeting(x, y + 1, oParJumpThru)) and ! (place_meeting(x, y + 1, oBlock))++y;
                        } else {
                                
                                vy = -jumpHeight;

                                yscale = 1.33;
                                xscale = 0.67;
                               
                        }
                }
        }
        //空中二段跳
         if !(onGround) and TowJump and TowJumpON
        {
        vy = -jumpHeight;
        
                                yscale = 1.33;
                                xscale = 0.67;
        TowJump = false;
        }
        }
        // Variable jumping
} else if (kJumpRelease) {
        if (vy < 0) vy *= 0.25;
}

// Jump state
if (!onGround) state = JUMP;
// Run particles
else if (random(100) > 85 && abs(vx) > 0.5) instance_create(x, y, oParticle);//粒子特效

//落地刷新二段跳
if (onGround) TowJump = true;
//交换墙滑动过程中面临
// Swap facing during wall slide
if (cRight && !onGround) and false facing = -1;
else if (cLeft && !onGround) and false facing = 1;

///滚动部分
// Roll
if (onGround && !attacking) {
        if (state != ROLL) {
                if (kRollL) {
                        facing = -1;

                        image_index = 0;
                        image_speed = 0.5;
                            RollTrue  = true;
                        sprite_index = sRoll;
 
                        state = ROLL;
                } else if (kRollR) {
                        facing = 1;

                        image_index = 0;
                        image_speed = 0.5;
                        sprite_index = sRoll;
                         RollTrue  = true;
                        state = ROLL;
                       
                }
        }
}
//if  RollTrue  = true
// Roll speed
if (state == ROLL) {
//if kRight and kLeft
     
        image_speed = RollSpeed
        vx = facing *   RollLong// 6 * (1 - 0.618);
        
        // Break out of roll
        if (!onGround || (cLeft || cRight)) {
                state = IDLE;
                if (!attacking) {alarm[1] = -1; }
        }
}

///人物弹性化调整处理
/// Squash + stretch
xscale = Approach(xscale, 1, 0.05);
yscale = Approach(yscale, 1, 0.05);

/// 选精灵

//else
if (!attacking) {
    switch (state) {
        case IDLE: 
            image_speed = 0.1;
            
            if (blocking)
                sprite_index = sIdle ;
            else
                sprite_index = sIdle;
        break;
        
        case RUN: 
            image_speed = 0.2; 
            
            if (blocking)
                sprite_index = sRun ;
            else
                sprite_index = sRun;
        break;
        
        case JUMP:
            // Mid jump   
            if (!(place_meeting(x, y + 2, oParSolid) && vy != 0) && vy >= -1.0 && vy <= 1.0) {  
                if (blocking)
                    sprite_index = sNoSP//sJumpM ;
               else
                    sprite_index = sJumpM;  
           } else { 
                // Rise + fall
                if (vy <= 0) {
                    if (blocking)
                        sprite_index = sNoSP//sJumpU ;
                    else  
                        sprite_index = sJumpU;  
                } else {
                    if (blocking)
                        sprite_index = sJumpD ;
                    else
                        sprite_index = sJumpD;
                }
            }
             
            // When against a wall   (封印)
            if (cRight || cLeft)and false
                if (blocking)
                    sprite_index = sNoSP//sSlide ;
                else
                   sprite_index = sNoSP//sSlide;  
        break;
        
        case ROLL:
            // Don't do stuff here    
           
        break;
    }
}

    


///关闭控制
if kControl = false scrConOFF();
//if o




//if STI show_message("?")


#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{// your code here

    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle += delta; // delta is 1/60th of a second
    
    if(timeSinceObstacle > 2.0f)
    {
        //add newobstacle
        [self addObstacle];
        
        timeSinceObstacle =0.0f;
    }
}
// put new methods here

-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
    [character flap];
    
    
    
}


@end

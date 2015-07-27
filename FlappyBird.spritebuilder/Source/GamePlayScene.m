#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{// your code here

    character = (Character*)[CCBReader load:@"Character"];
    [PhysicsNode addChild:character];
}

-(void)update:(CCTime)delta
{
    // put update code here
}
// put new methods here

-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
    [Character flap];
    
    
}


@end

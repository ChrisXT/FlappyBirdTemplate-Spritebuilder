#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    Character = (Character*)[CCBReader load:@"Character"];
    [PhysicsNode addChild:Character];// your code here
}

-(void)update:(CCTime)delta
{
    // put update code here
}

-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
    [Character flap];
    
    
}
// put new methods here

@end

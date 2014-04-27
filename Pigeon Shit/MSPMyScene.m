//
//  MSPMyScene.m
//  Pigeon Shit
//
//  Created by Matt Smicinski on 4/26/14.
//  Copyright (c) 2014 MSquaredProductions. All rights reserved.
//

#import "MSPMyScene.h"

@implementation MSPMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithWhite:1.0f alpha:1.0f];
        SKSpriteNode *pidgeon = [SKSpriteNode spriteNodeWithImageNamed:@"pigeon.jpg"];
        pidgeon.size = CGSizeMake(50, 50);
        pidgeon.position = CGPointMake(50, 300);
        
        [self addChild:pidgeon];
        
        SKSpriteNode *car = [SKSpriteNode spriteNodeWithImageNamed:@"lambo.jpg"];
        car.xScale = -1;
        car.size = CGSizeMake(150, 50);
        car.position = CGPointMake(350, 160);
        
        [self addChild:car];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end

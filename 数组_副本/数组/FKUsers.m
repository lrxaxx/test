//
//  FKUsers.m
//  数组
//
//  Created by 李睿鑫 on 2024/5/10.
//

#import "FKUsers.h"

@implementation FKUsers
@synthesize name;
@synthesize pass;
- (id) initWithName:(NSString *)aName pass:(NSString *)aPass
{
    if(self = [super init]) {
        name = aName;
        pass = aPass;
    }
    return self;
}
- (void) say:(NSString *)content
{
    NSLog(@"%@说:%@", self.name, content);
}
- (BOOL) isEqual :(id) other
{
    if(self == other) {
        return YES;
    }
    if([other class] == FKUsers.class) {
        FKUsers* target = (FKUsers*) other;
        return [self.name isEqualToString:target.name] && [self.pass isEqualToString:target.pass];
    }
    return NO;
}
- (NSString*) description
{
    return [NSString stringWithFormat: @"<FKUsers[name = %@,pass = %@>",self.name,self.pass];
}

@end

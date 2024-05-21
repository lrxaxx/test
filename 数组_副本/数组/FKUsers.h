//
//  FKUsers.h
//  数组
//
//  Created by 李睿鑫 on 2024/5/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKUsers : NSObject
@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSString* pass;
-(id) initWithName: (NSString*) aName pass: (NSString*) aPass;
-(void) say: (NSString*) content;
@end

NS_ASSUME_NONNULL_END

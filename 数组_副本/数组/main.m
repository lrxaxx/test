//
//  main.m
//  数组
//
//  Created by 李睿鑫 on 2024/5/9.
//

#import <Foundation/Foundation.h>
#import "FKUsers.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray* array = [NSArray arrayWithObjects:
                          [[FKUsers alloc] initWithName: @"sun" pass: @"123"],
                          [[FKUsers alloc] initWithName: @"bai" pass: @"345"],
                          [[FKUsers alloc] initWithName: @"zhu" pass: @"654"],
                          [[FKUsers alloc] initWithName: @"tang" pass: @"178"],
                          [[FKUsers alloc] initWithName: @"niu" pass: @"155"],
                          nil];
        FKUsers* newUsers = [[FKUsers alloc] initWithName: @"zhu" pass: @"654"];
        NSUInteger pos = [array indexOfObject:newUsers];
        NSLog(@"newUsers的位置为：%ld",pos);
        [array makeObjectsPerformSelector:@selector(say:) withObject:@"我最牛"];
        NSString* content = @"我更牛";
        [array enumerateObjectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 2)] options:NSEnumerationReverse usingBlock:^(id obj,NSUInteger idx, BOOL* stop)
         {
            NSLog(@"正在处理第%ld个元素：%@",idx, obj);
            [obj say: content];
        }];
    }
    return 0;
}



/*NSArray* array = [NSArray arrayWithObjects:@"多特蒙德", @"皇家马德里"
                  , @"拜仁慕尼黑", @"巴黎圣日耳曼", @"欧洲冠军联赛", nil];
NSLog(@"第一个元素：%@", [array objectAtIndex:0]);
NSLog(@"索引为1的元素是：%@", [array objectAtIndex:1]);
NSLog(@"最后一个元素：%@",[array lastObject]);
NSArray* arr1 = [array objectsAtIndexes:[NSIndexSet
                                         indexSetWithIndexesInRange:NSMakeRange(1, 2)]];
NSLog(@"%@",arr1);
NSLog(@"皇家马德里的位置：%ld", [array indexOfObject:@"皇家马德里"]);
NSLog(@"在2-5范围皇家马德里的位置为：%ld",[array indexOfObject:@"皇家马德里" inRange:NSMakeRange(1, 2)]);
array = [array arrayByAddingObject:@"Reus"];
array = [array arrayByAddingObjectsFromArray:[NSArray arrayWithObjects:@"messi", @"jee", nil]];
for(int i = 0; i < array.count; i++) {
    NSLog(@"%@",[array objectAtIndex:i]);
}
NSArray* arr2 = [array subarrayWithRange:NSMakeRange(5, 3)];
[arr2 writeToFile:@"myFile.txt" atomically:YES];*/
/*NSArray* array = [NSArray arrayWithContentsOfFile:@"myFile.txt"];
NSEnumerator* en = [array objectEnumerator];
id object;
while(object = [en nextObject]) {
    NSLog(@"%@",object);
}
NSLog(@"逆序遍历：");
en = [array reverseObjectEnumerator];
while(object = [en nextObject]) {
    NSLog(@"%@",object);
}*/

/*NSString* NSCollectionToString(NSArray* array)
{
    NSMutableString* reslut = [NSMutableString stringWithString:@"["];
    for(id obj in array) {
        [reslut appendString:[obj description]];
        [reslut appendString:@","];
    }
    NSUInteger len = [reslut length];
    [reslut deleteCharactersInRange:NSMakeRange(len - 2, 2)];
    [reslut appendString:@"]"];
    return reslut;
}*/
/*NSMutableArray* array = [NSMutableArray arrayWithContentsOfFile:@"myFile.txt"];
[array addObject:@"wahaha"];
NSLog(@"最后追加一个元素后：%@",NSCollectionToString(array));
[array addObjectsFromArray:[NSArray arrayWithObjects:@"xiyangyang",@"meiyangyang", nil]];
NSLog(@"最后追加的两个元素后：%@",NSCollectionToString(array));
[array insertObject:@"feiyangyang" atIndex:2];
NSLog(@"在索引为2处插入一个元素后：%@",NSCollectionToString(array));
[array insertObjects:[NSArray arrayWithObjects:@"huitailang",@"lanyangyang", nil] atIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(3, 2) ]];
NSLog(@"插入多个元素后：%@",NSCollectionToString(array));
for (NSString* arr9 in array) {
    NSLog(@"%@",arr9);
}
NSString* arr10 = [array componentsJoinedByString:@"*"];
NSLog(@"%@",arr10);
[array removeLastObject];
NSLog(@"在删除最后一个元素后：%@",NSCollectionToString(array));
[array removeObjectAtIndex:5];
NSLog(@"再删除索引为5的元素后：%@",NSCollectionToString(array));
[array removeObjectsInRange:NSMakeRange(2, 3)];
NSLog(@"在删除索引2～5的元素后：%@",NSCollectionToString(array));*/

/*NSArray* array = [NSArray arrayWithObjects:
[[FKUsers alloc] initWithName: @"sun" pass: @"123"],
[[FKUsers alloc] initWithName: @"bai" pass: @"345"],
[[FKUsers alloc] initWithName: @"zhu" pass: @"654"],
[[FKUsers alloc] initWithName: @"tang" pass: @"178"],
[[FKUsers alloc] initWithName: @"niu" pass: @"155"],
                  nil];
FKUsers* newUsers = [[FKUsers alloc] initWithName: @"zhu" pass: @"654"];
NSUInteger pos = [array indexOfObject:newUsers];
NSLog(@"newUsers的位置为：%ld",pos);
[array makeObjectsPerformSelector:@selector(say:) withObject:@"我最牛"];
NSString* content = @"我更牛";
[array enumerateObjectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 2)] options:NSEnumerationReverse usingBlock:^(id obj,NSUInteger idx, BOOL* stop)
{
    NSLog(@"正在处理第%ld个元素：%@",idx, obj);
    [obj say: content];
}];*/

/*NSSet* set1 = [NSSet setWithObjects:@"喜羊羊",@"美羊羊",@"沸羊羊", nil];
NSLog(@"NSSEet集合中的元素有%ld个",[set1 count]);
NSLog(@"set1是%@",NSCollectionToString(set1));
NSSet* set2 = [NSSet setWithObjects:@"懒羊羊",@"灰太狼",@"美羊羊", nil];
NSLog(@"set2是%@",NSCollectionToString(set2));
set1 = [set1 setByAddingObject:@"红太狼"];
NSLog(@"set1是%@",NSCollectionToString(set1));
NSSet* s = [set1 setByAddingObjectsFromSet:set2];
NSLog(@"s是%@",NSCollectionToString(s));
BOOL a = [set1 intersectsSet:set2];
NSLog(@"%d",a);
BOOL b = [set1 isSubsetOfSet:set2];
NSLog(@"%d",b);
BOOL c = [set1 containsObject:@"喜羊羊"];
NSLog(@"%d",c);
NSLog(@"set1中取出一个元素：%@",[set1 anyObject]);
NSLog(@"set1中取出一个元素：%@",[set1 anyObject]);*/

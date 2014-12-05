//
//  MSSandBoxCache.m
//  iOSCache
//
//  Created by GaoYu on 14/12/6.
//  Copyright (c) 2014年 moshou. All rights reserved.
//

#import "MSSandBoxCache.h"

@implementation MSSandBoxCache

-(NSString *)createFolderWithDirectory:(NSSearchPathDirectory)directory folderName:(NSString *)folderName{
    
    NSArray *pathArray = NSSearchPathForDirectoriesInDomains(directory, NSUserDomainMask, YES);
    NSString *path = pathArray[0];
    NSString *folder = [NSString stringWithFormat:@"%@/%@",path,folderName];
    BOOL existDic = NO;
    BOOL exist = [[NSFileManager defaultManager] fileExistsAtPath:folder isDirectory:&existDic];
    if (!(exist == YES && existDic == YES)) {
        [[NSFileManager defaultManager] createDirectoryAtPath:folder withIntermediateDirectories:YES attributes:nil error:nil];
    }
    return folder;
}

-(void)saveImageToFolderPath:(NSString *)path image:(UIImage *)image imageName:(NSString *)imageName{
    
    NSString *filePath = [path stringByAppendingPathComponent:[NSString stringWithFormat:@"/%@.png", imageName]];
    [UIImagePNGRepresentation(image) writeToFile:filePath atomically:YES];
}

-(void)saveTextTOFolderPath:(NSString *)path content:(id)content textName:(NSString *)textName{
    NSString *filePath = [path stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.txt",textName]];
    [content writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
}
@end

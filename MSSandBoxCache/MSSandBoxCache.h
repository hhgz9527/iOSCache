//
//  MSSandBoxCache.h
//  iOSCache
//
//  Created by GaoYu on 14/12/6.
//  Copyright (c) 2014年 moshou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    Documents,
    Library,
    Caches,
} FolderStyle;

@interface MSSandBoxCache : NSObject

/**
 *  Create folder
 *
 *  @param directory  folder directory
 *  @param folderName folder name
 *
 *  @return folder path
 */
-(NSString *)createFolderWithDirectory:(NSSearchPathDirectory)directory folderName:(NSString *)folderName;

/**
 *  Save image to folder
 *
 *  @param path      save path
 *  @param image     image
 *  @param imageName file name
 */
-(void)saveImageToFolderPath:(NSString *)path image:(UIImage *)image imageName:(NSString *)imageName;


/**
 *  Save txt to folder
 *
 *  @param path     save path
 *  @param content  support NSArray,NSDictionary...
 *  @param textName file name
 */
-(void)saveTextTOFolderPath:(NSString *)path content:(id)content textName:(NSString *)textName;


@end

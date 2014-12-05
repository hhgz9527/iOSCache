//
//  ViewController.m
//  iOSCache
//
//  Created by GaoYu on 14/12/5.
//  Copyright (c) 2014年 moshou. All rights reserved.
//

#import "ViewController.h"
#import "MSSandBoxCache.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MSSandBoxCache *cache = [[MSSandBoxCache alloc] init];
    
    //create folder
    NSString *filePath = [cache createFolderWithDirectory:NSLibraryDirectory folderName:@"test"];
    //use terminal, open filePath
    NSLog(@"%@",filePath);

    //save image to folder
    [cache saveImageToFolderPath:filePath image:[UIImage imageNamed:@"xcode"] imageName:@"xcode"];
    
    //save text(or NSArray,NSDictionary...) to folder
    [cache saveTextTOFolderPath:filePath content:@"use termainal open folder path" textName:@"text"];
    
    //get text
    NSString *filePath2 = [filePath stringByAppendingPathComponent:@"text.txt"];
    NSString *textContent = [[NSString alloc] initWithContentsOfFile:filePath2 encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@",textContent);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

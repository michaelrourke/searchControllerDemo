/*
 Copyright (C) 2017 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The data model object describing the product displayed in both main and results tables.
 */

#import "APLProduct.h"

@implementation APLProduct

+ (APLProduct *)productWithType:(NSString *)type name:(NSString *)name year:(NSNumber *)year price:(NSNumber *)price {
	APLProduct *newProduct = [[self alloc] init];
	newProduct.hardwareType = type;
	newProduct.title = name;
    newProduct.yearIntroduced = year;
    newProduct.introPrice = price;
    
	return newProduct;
}

+ (NSString *)deviceTypeTitle {
    return NSLocalizedString(@"Device", @"Device type title");
}
+ (NSString *)desktopTypeTitle {
    return NSLocalizedString(@"Desktop", @"Desktop type title");
}
+ (NSString *)portableTypeTitle {
    return NSLocalizedString(@"Portable", @"Portable type title");
}

+ (NSArray *)deviceTypeNames {
    static NSArray *deviceTypeNames = nil;
    static dispatch_once_t once;

    dispatch_once(&once, ^{
        deviceTypeNames = @[[APLProduct deviceTypeTitle], [APLProduct portableTypeTitle], [APLProduct desktopTypeTitle]];
    });

    return deviceTypeNames;
}

+ (NSString *)displayNameForType:(NSString *)type {
    static NSMutableDictionary *deviceTypeDisplayNamesDictionary = nil;
    static dispatch_once_t once;

    dispatch_once(&once, ^{
        deviceTypeDisplayNamesDictionary = [[NSMutableDictionary alloc] init];
        for (NSString *deviceType in self.deviceTypeNames) {
            NSString *displayName = NSLocalizedString(deviceType, @"dynamic");
            deviceTypeDisplayNamesDictionary[deviceType] = displayName;
        }
    });

    return deviceTypeDisplayNamesDictionary[type];
}
@end


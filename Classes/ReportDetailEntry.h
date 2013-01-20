//
//  ReportDetailEntry.h
//  AppSales
//
//  Created by Ole Zorn on 26.07.11.
//  Copyright 2011 omz:software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Product;

@interface ReportDetailEntry : NSObject {
	
	float revenue;
	float percentage;
	NSString *subtitle;
	NSString *country;
	Product *product;
}

@property (nonatomic, assign) float revenue;
@property (nonatomic, assign) float percentage;
@property (nonatomic, retain) NSString *subtitle;
@property (nonatomic, retain) NSString *country;
@property (nonatomic, retain) Product *product;
@property (nonatomic, assign) int sales;

+ (id)entryWithRevenue:(float)r percentage:(float)p subtitle:(NSString *)aSubtitle country:(NSString *)countryCode product:(Product *)aProduct;
+ (id)entryWithRevenue:(float)r percentage:(float)p subtitle:(NSString *)aSubtitle country:(NSString *)countryCode product:(Product *)aProduct sales:(int)sales;

@end
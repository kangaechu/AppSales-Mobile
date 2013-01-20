//
//  ReportDetailEntry.m
//  AppSales
//
//  Created by Ole Zorn on 26.07.11.
//  Copyright 2011 omz:software. All rights reserved.
//

#import "ReportDetailEntry.h"
#import "Product.h"

@implementation ReportDetailEntry

@synthesize revenue, percentage, subtitle, country, product, sales;

+ (id)entryWithRevenue:(float)r percentage:(float)p subtitle:(NSString *)aSubtitle country:(NSString *)countryCode product:(Product *)aProduct
{
	ReportDetailEntry *entry = [[[self alloc] init] autorelease];
	entry.revenue = r;
	entry.percentage = p;
	entry.subtitle = aSubtitle;
	entry.country = countryCode;
	entry.product = aProduct;
	entry.sales = INT_MAX;
	return entry;
}

+ (id)entryWithRevenue:(float)r percentage:(float)p subtitle:(NSString *)aSubtitle country:(NSString *)countryCode product:(Product *)aProduct sales:(int)sales
{
   ReportDetailEntry *entry = [self entryWithRevenue:r percentage:p subtitle:aSubtitle country:countryCode product:aProduct];
   entry.sales = sales;
   return entry;
}

- (NSComparisonResult) compare:(ReportDetailEntry *)entry {
   if(self.revenue == entry.revenue) {
      if(self.sales == entry.sales) return NSOrderedSame;
      return (self.sales > entry.sales) ?  NSOrderedAscending : NSOrderedDescending;
   } else {
      return (self.revenue > entry.revenue) ?  NSOrderedAscending : NSOrderedDescending;
   }
}

- (void)dealloc
{
	[subtitle release];
	[country release];
	[product release];
	[super dealloc];
}

@end
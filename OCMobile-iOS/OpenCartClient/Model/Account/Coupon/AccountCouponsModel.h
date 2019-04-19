//
//  AccountCouponsModel.h
//  OpenCartClient
//
//  Created by Sam Chen on 7/7/16.
//  Copyright © 2016 opencart.cn. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "AccountCouponModel.h"

@interface AccountCouponsModel : JSONModel

@property(nonatomic) NSArray<AccountCouponModel> *coupons;

@end

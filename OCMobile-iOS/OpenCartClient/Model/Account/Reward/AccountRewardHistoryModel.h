//
//  AccountRewardHistoryModel.h
//  OpenCartClient
//
//  Created by Sam Chen on 7/8/16.
//  Copyright © 2016 opencart.cn. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol AccountRewardHistoryModel
@end

@interface AccountRewardHistoryModel : JSONModel

@property(nonatomic) NSString *name;
@property(nonatomic) NSString *dateAdded;
@property(nonatomic) NSInteger points;

@end

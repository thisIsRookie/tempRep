//
//  ReturnReasonsModel.h
//  OpenCartClient
//
//  Created by Sam Chen on 7/7/16.
//  Copyright © 2016 opencart.cn. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "ReturnReasonModel.h"

@interface ReturnReasonsModel : JSONModel

@property(nonatomic) NSArray<ReturnReasonModel> *reasons;

@end

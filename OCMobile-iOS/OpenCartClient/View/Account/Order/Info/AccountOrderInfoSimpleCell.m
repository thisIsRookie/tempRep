//
//  AccountOrderInfoSimpleCell.m
//  OpenCartClient
//
//  Created by Sam Chen on 4/28/16.
//  Copyright © 2016 opencart.cn. All rights reserved.
//

#import "AccountOrderInfoSimpleCell.h"

@interface AccountOrderInfoSimpleCell()
@property (strong, nonatomic) UILabel *titleLabel, *valueLabel;
@end

@implementation AccountOrderInfoSimpleCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.accessoryType = UITableViewCellAccessoryNone;
        self.separatorInset = UIEdgeInsetsZero;
        self.layoutMargins = UIEdgeInsetsZero;

        if (!_titleLabel) {
            _titleLabel = [UILabel new];
            _titleLabel.font = [UIFont boldSystemFontOfSize:12];
            _titleLabel.textColor = [UIColor colorWithHexString:@"333333" alpha:1];

            [self.contentView addSubview:_titleLabel];
            [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.contentView).offset(12);
                make.bottom.equalTo(self.contentView).offset(-12);
                make.leading.equalTo(self.contentView).offset(10);
            }];
        }

        if (!_valueLabel) {
            _valueLabel = [UILabel new];
            _valueLabel.font = [UIFont systemFontOfSize:12];
            _valueLabel.textColor = [UIColor colorWithHexString:@"333333" alpha:1];

            [self.contentView addSubview:_valueLabel];
            [_valueLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(_titleLabel);
                make.trailing.equalTo(self.contentView).offset(-10);
            }];
        }
    }

    return self;
}

- (void)setTitle:(NSString *)title value:(NSString *)value {
    _titleLabel.text = title;
    _valueLabel.text = value;
}

@end

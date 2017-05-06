//
//  BMAudioPlayerDemoCellTableViewCell.m
//  BMMutexAudioManager
//
//  Created by 李志强 on 2017/5/6.
//  Copyright © 2017年 Li Zhiqiang. All rights reserved.
//

#import "BMAudioPlayerDemoCellTableViewCell.h"

@interface BMAudioPlayerDemoCellTableViewCell()

@property (nonatomic, strong) UIButton *controlButton;
@property (nonatomic, strong) UISlider *voiceSlider;

@end

@implementation BMAudioPlayerDemoCellTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self configUI];
    }
    return self;
}

#pragma mark - Init Method

- (void)configUI {
    [self addSubview:self.controlButton];
    [self addSubview:self.voiceSlider];
}

#pragma mark - Lazy Load

- (UIButton *)controlButton {
    if (nil == _controlButton) {
        _controlButton = [[UIButton alloc] initWithFrame:CGRectMake(30, 10, 25, 25)];
        [_controlButton setBackgroundColor:[UIColor redColor]];
    }
    return _controlButton;
}

- (UISlider *)voiceSlider {
    if (nil == _voiceSlider) {
        _voiceSlider = [[UISlider alloc] initWithFrame:CGRectMake(70, 10, 200, 25)];
    }
    return _voiceSlider;
}

@end
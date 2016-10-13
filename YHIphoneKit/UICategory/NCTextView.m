//
//  NCTextView.m
//  NiusaoCustomer
//
//  Created by clare.bin on 16/2/26.
//  Copyright © 2016年 hhn. All rights reserved.
//

#import "NCTextView.h"

@interface NCTextView ()

@property(nonatomic, strong) UIImageView *backgroundImageView;

@end

@implementation NCTextView
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        self.font = [UIFont systemFontOfSize:13];
        [self setPlaceholder:@""];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(textChanged:)
                                                     name:UITextViewTextDidChangeNotification
                                                   object:self];
        self.backgroundColor = [UIColor clearColor];
        self.backgroundImageView = [[UIImageView alloc] initWithFrame:self.bounds];
        self.backgroundImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self insertSubview:self.backgroundImageView atIndex:0];
        self.backgroundImage = [UIImage imageNamed:@"textview_background"];


        if ([self respondsToSelector:@selector(setTextContainerInset:)]) {
            // by default text view's have a 5pts padding to the left and right.
            self.textContainerInset = UIEdgeInsetsMake(15.f, 15.f - 5, 15.f, 15.f - 5);
        }
    }
    return self;
}

- (void)setText:(NSString *)text {
    [super setText:text];
    [self textChanged:nil];
}

- (void)setBackgroundImage:(UIImage *)backgroundImage {
    self.backgroundImageView.image = backgroundImage;
}

- (UIImage *)backgroundImage {
    return self.backgroundImageView.image;
}

- (void)setPlaceholder:(NSString *)placeholder {
    self.placeholderLabel.text = placeholder;
    [self setNeedsLayout];
}

- (NSString *)placeholder {
    return [self.placeholderLabel text];
}

- (UILabel *)placeholderLabel {
    if (!_placeholderLabel) {
        _placeholderLabel = [[UILabel alloc] initWithFrame:CGRectMake(15.f, 15.f, self.width - 15.f - 15.f, self.height - 15.f - 15.f)];
        _placeholderLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _placeholderLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _placeholderLabel.backgroundColor = [UIColor clearColor];
        _placeholderLabel.numberOfLines = 0;
        _placeholderLabel.alpha = 0;
        _placeholderLabel.textColor = [UIColor lightGrayColor];
        _placeholderLabel.font = [UIFont systemFontOfSize:13];
        [self insertSubview:_placeholderLabel atIndex:0];
    }
    return _placeholderLabel;
}

- (void)drawRect:(CGRect)rect {
    if ([self.placeholder length] > 0) {
        self.placeholderLabel.text = self.placeholder;
        [self.placeholderLabel setAlpha:[self.text length] == 0 ? 1 : 0];
        [self sendSubviewToBack:self.placeholderLabel];
    }
    [self sendSubviewToBack:self.backgroundImageView];
    [super drawRect:rect];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.backgroundImageView.frame = CGRectMake(self.contentOffset.x, self.contentOffset.y, _backgroundImageView.width, _backgroundImageView.height);
    self.placeholderLabel.frame = CGRectMake(15.f, 15.f, self.width - 15.f - 15.f, self.height - 15.f - 15.f);
    [self.placeholderLabel sizeToFit];
}

#pragma mark - notification

- (void)textChanged:(NSNotification *)notification {
    if (notification.object != self) return;
    if ([self.placeholder length] > 0) {
        [self.placeholderLabel setAlpha:[self.text length] == 0 ? 1 : 0];
    }
    if ([[[UIDevice currentDevice] systemVersion] integerValue] >= 7) {
        CGSize textViewSize = [self sizeThatFits:CGSizeMake(self.frame.size.width, FLT_MAX)];
        self.contentSize = CGSizeMake(self.contentSize.width, textViewSize.height);
        CGPoint bottomOffset = CGPointMake(0, self.contentSize.height - self.bounds.size.height);
        if (bottomOffset.y > 0 && bottomOffset.y - self.contentOffset.y <= self.font.lineHeight * 2 + self.textContainerInset.top + self.textContainerInset.bottom) {
            [self setContentOffset:bottomOffset animated:NO];
        }
        [self scrollRangeToVisible:self.selectedRange];
    }
}

@end

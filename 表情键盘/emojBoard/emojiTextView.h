//
//  sendWeiboTextView.h
//  YCSideslip
//
//  Created by saber on 16/4/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EmotionName.h"

@interface emojiTextView : UITextView

@property(nonatomic,copy)NSString *placeholder;

@property(nonatomic,assign)BOOL hidePlaceholder;

-(void)appendWithEmotion:(EmotionName *)emotion;

-(NSString *)sendHttpString;

@end

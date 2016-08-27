//
//  ViewController.m
//  表情键盘
//
//  Created by saber on 16/8/26.
//  Copyright © 2016年 futaihua. All rights reserved.
//

#import "ViewController.h"

#import "ZYemoji.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet emojiTextView *textView;

@property (weak, nonatomic) IBOutlet UIButton *emojBtn;

@property(nonatomic,strong)emojiKeyboard *EmojiKeyboard;

- (IBAction)emojiBoardClick:(id)sender;

@end

@implementation ViewController

-(emojiKeyboard *)EmojiKeyboard{
    if (_EmojiKeyboard == nil) {
        emojiKeyboard *keyboard = [[emojiKeyboard alloc]init];
        CGRect frame = keyboard.frame;
        frame.size = CGSizeMake(ZYScreenWidth, 216);
        keyboard.frame = frame;
        self.EmojiKeyboard = keyboard;
    }
    return _EmojiKeyboard;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //监听表情键盘的 选中和删除
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(selectEmotion:) name:emotionDidSelectedNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(deleteEmotion:) name:emotionDidDeletedNotification object:nil];
}

- (IBAction)emojiBoardClick:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    
    if (self.textView.inputView) {
        
        self.textView.inputView = nil;
        
    }else{
        
        self.textView.inputView = self.EmojiKeyboard;
        
    }
    [self.textView resignFirstResponder];
    
    [self.textView becomeFirstResponder];
}

#pragma mark - 选中表情的动作
-(void)selectEmotion:(NSNotification *)note{
    
    NSDictionary *dic = note.userInfo;
    EmotionName *emotionModel = dic[selectedEmotion];
    
    [self.textView appendWithEmotion:emotionModel];
    
}

#pragma mark - 删除表情的动作
-(void)deleteEmotion:(NSNotification *)note{
    [self.textView deleteBackward];
}

@end















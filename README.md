# ZYemojiKeyboard
A simple emotion keyboard.Comes with three kinds of emotion keyboard.

add emotion step:
1.put a new emotion picture in the "EmotionIcons" folder;
2.Modify several folder paths in "ZYemojiKeyboardConst".

suggestion:the dictionary key of plist file in new emotion foler keep the same with dictionary key of plist. 
注意：建议新添加的表情包的plist文件的字典的键与自带plist字典的键保持一致，否则得自行重新创建模型.
plist中字典键的说明
chs：表情代表的汉字
cht：繁体表情代表的汉字
gif：表情gif图的名称
png：表情图片名称
code：系统自带emoji的编码（根据字典中有无此键判断是否为系统自带emoji）

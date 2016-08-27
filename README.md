# ZYemojiKeyboard
自己做的一个简单的表情键盘

自带了三种表情键盘。
增加表情步骤：
1.将新表情图片包放于EmotionIcons文件夹中
2.修改ZYemojiKeyboardConst中几个路径

注意：建议新添加的表情包的plist文件的字典的键与自带plist字典的键保持一致，否则得自行重新创建模型.
plist中字典键的说明
chs：表情代表的汉字
cht：繁体表情代表的汉字
gif：表情gif图的名称
png：表情图片名称
code：系统自带emoji的编码（根据字典中有无此键判断是否为系统自带emoji）

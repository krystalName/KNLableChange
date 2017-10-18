
## 写一个用于改变行间距, 字体间距的类别

更改字体间距。适用于UILable,UITextView,UITextField

### 效果图如下

![](https://github.com/krystalName/KNLableChange/blob/master/lable.png)

使用代码如下。 简单一句话就能实现


``` objc 
  //参数是内容,行间距。字体间距
 self.tileLable.attributedText = [UILabel changeSpaceForLabel:@"安达看见你哭暗示大家看谁看见电脑开机啊啥的年纪看书的框架暗示
 健康啊啥的年纪看得见卡萨诺啊的年纪看那就开电脑开机啊" withLineSpace:10 WordSpace:4];
 
```
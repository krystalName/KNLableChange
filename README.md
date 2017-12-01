
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

新增更改字体颜色。字体大小的类别
### 效果图如下

![](https://github.com/krystalName/KNLableChange/blob/master/lableFontAndColor.png)

实现代码

```objc
    //参数是 内容。字体。颜色。 开始位置。结束位置
    self.tileLable.attributedText = [UILabel ChageLableColorAndFontWithString:@"提示:这是文字" WihtFont:[UIFont systemFontOfSize:19] WithColor:[UIColor redColor] WithStart:0 WithEnd:3];
    
```

#### 新增添加字体删除线。下划线。 使用代码如下

``` objc

//添加删除线
self.tileLable.attributedText = [UILabel AddDeleteLineWithTitle:@"打死那就看你就啊说的那句卡上～ 就啊可是能看到" AndColor:[UIColor redColor] WithStart:1 WithEnd:5];
    
 //添加下划线
self.tileLable.attributedText = [UILabel AddUnderLineWithTitle:@"打死那就看你就啊说的那句卡上～ 就啊可是能看到" AddColorL:[UIColor redColor] WirhStart:1 WithEnd:5];
```

### 新添获取图片主色调的分类  效果如下

![](https://github.com/krystalName/KNLableChange/blob/master/ImageMainColor.png)

``` objc
#import "UIColor+ImageColor.h"

     //设置一张图片
    UIImage *image = [UIImage imageNamed:@"120"];
    
    //添加View
    [self.view addSubview:self.bgView];
    [self.demoImageView setImage:image];
    
    //使用分类。改变bgView 的颜色
    [self.bgView setBackgroundColor:[UIColor getImageMainColor:image]];
    
```

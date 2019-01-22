# co5emoji
一个简陋（但是能跑）的 hexo 自定义 emoji 插件 (๑•̀ㅂ•́)ﻭ✧

![](https://co5.me/lib/co5emoji/dist/img/cmx-00.png)

## 安装

在 `主题/source/lib` 下 `git clone https://github.com/shioko/co5emoji.git`。

## 配置与渲染

目前只写了 swig 格式的 layout，在 Next 主题下可用，其它格式的 layout 我努力学习一下……

**Next 主题配置步骤**：

1. 将插件目录中的 `layout/co5emoji.swig` 复制到next主题下的 `next/layout/_custom` 文件夹中；
2. 在主layout文件底下加上 `{% include '_custom/co5emoji.swig' %}`；
3. 在主题配置文件中添加 `co5emoji: true`；
4. hexo clean 重新生成，就可以在本地预览啦~

### 一个曲线救国的办法

~~虽然我在研究其它格式的 layout ，但是请不要对我的学习效率抱有任何期待~~

其它主题的用户可以 **在正确安装插件后** 尝试在文章末尾添加以下代码启用 emoji：

```
<script src="/lib/co5emoji/dist/co5emoji.js"></script>
<link rel="stylesheet" type="text/css" href="/lib/co5emoji/dist/styl.css">
```

## 使用方法

在正文中使用 `:-emojiname-:` 来插入表情，例 `:-cmx-doge-:`。

请不要在正文标题 / 小标题中使用，否则会产生奇怪的错误，包括但不限于“生成失败”和“出现奇怪的链接”。

目前暂时无法在评论插件中插入表情，正在研究中\_(:з」∠)\_

## 添加自定义表情

1. 将自定义的表情文件放入 `co5emoji/dist/img` 文件夹中；
2. 在 `co5emoji/dist/co5emoji.js` 的 emojilist 中添加你自定义的图片文件名，不建议使用中文 / 空格或其它特殊符号；
3. 在 `co5emoji/dist/style.css` 文件中添加对应的背景图片，格式如下：

```
.co5emoji#【自定义图片名】 {
	background-image: url(img/【自定义图片名】.png)
}
```

png可以替换为任何后缀。

## 其它声明

`img`文件夹中自带的表情图片是我为 [长毛象中文站](https://cmx.im) 绘制的站娘表情包，可以随意使用，但请不要抹去水印 (´･ω･`)
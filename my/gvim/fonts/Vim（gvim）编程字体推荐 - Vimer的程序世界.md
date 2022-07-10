网上从来不缺编程字体推荐的文章，当然vim（gvim）字体的推荐文章也是多不胜数，但是大部分都是想当然的认为哪些字体好用就介绍出来，甚至都没有自己亲自试过，也没有考虑过用户使用19英寸的显示器和14英寸的笔记本时对字体的要求到底有什么不同，鉴于以上几点，我决定写这样一篇文章，真正介绍vim（gvim）中最适合的编程字体。 注：由于vimrc中中文字体的设置需要用到中文，所以请务必保证vimrc的编码是gbk格式，如果不是gbk格式，可以通过1.打开vimrc。2.:set fenc=gbk 3.:w。的操作来解决。

一.17~19（或更大）英寸屏幕    

1）英文字体：    

名字：Bitstream Vera Sans Mono    

大小：10px        

在vimrc中的配置如下：

```
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI
```

优点：        

a）0 O o  1 l ; : 区别非常明显，并且还有一点优势是大家经常会忘记的;:和中文的字体；：区别也很明显，十分适合编程        

b）字体圆滑，支持cleartype,加上配色非常舒服，不会有锯齿感    

缺点：        

说真的，没有。    

截图：

[![Bitstream Vera Sans Mono](http://www.vimer.cn/wp-content/uploads/2009/11/1.png "Bitstream Vera Sans Mono")](http://www.vimer.cn/wp-content/uploads/2009/11/1.png)    

下载：     [Bitstream Vera Sans Mono](http://www.vimer.cn/wp-content/uploads/2009/11/VeraMono.ttf)    

2）中文字体    

名字：幼圆    

大小：10.5（呵呵，真的是10.5，而不是10或者11，只能通过配置文件来实现）    

在vimrc中的配置如下：

```
set gfw=幼圆:h10.5:cGB2312
```

优点：        

a）词库全        

b）字体光滑，且支持cleartype        

c）字体偏移与Bitstream Vera Sans Mono持平    

截图：

[![幼圆（10.5px）](http://www.vimer.cn/wp-content/uploads/2009/11/5.png "幼圆（10.5px）")](http://www.vimer.cn/wp-content/uploads/2009/11/5.png)

下载：     [幼圆](http://www.huage.biz/soft/52744.htm)(由于字体过大，所以使用外链，并不能保证可用，如果链接失效，大家百度或者google一下就行)

二.12（或更小）~14英寸屏幕    

1）英文字体：    

名字：Arial monospaced for SAP    

大小：9px        

在vimrc中的配置如下：

```
set guifont=Arial_monospaced_for_SAP:h9:cANSI
```

优点：        

a）0 O o  1 l ; : 也是区别非常明显        

b）字体小且圆滑，支持cleartype,最重要的是它的比划只有一个像素，所以在小屏幕上看起来非常精致。而在12~14英寸屏幕上不使用Bitstream Vera Sans Mono的主要原因就在于，Bitstream Vera Sans Mono的比划太粗，在那么小的屏幕上显得很是臃肿。    

缺点：        

a）有个很大的问题就是，Arial monospaced for SAP这个字体中的\*很靠上，而且()等符号和字母并没有持平，所以看起来很是别扭，所以笔者自己更改了一下，下面会放出下载（原版和修改版都有）            

截图：

笔者优化版：

[![Arial monospaced for SAP（优化版）](http://www.vimer.cn/wp-content/uploads/2009/11/xiugai.png "Arial monospaced for SAP（优化版）")](http://www.vimer.cn/wp-content/uploads/2009/11/xiugai.png)

下载：     [Arial monospaced for SAP(优化版)](http://www.vimer.cn/wp-content/uploads/2009/11/arimonnew.ttf)     [Arial monospaced for SAP(原版)](http://www.vimer.cn/wp-content/uploads/2009/11/arimon__.ttf)    

2）中文字体    

名字：幼圆    

大小：10    

在vimrc中的配置如下：

```
set gfw=幼圆:h10:cGB2312
```

优点：        

a）词库全        

b）字体光滑，且支持cleartype        

c）也只有这个字体能够在12~14英寸屏上依旧显的很精致，和Arial monospaced for SAP相互映衬，感觉非常好    

截图：

[![幼圆（10px）](http://www.vimer.cn/wp-content/uploads/2009/11/4.png "幼圆（10px）")](http://www.vimer.cn/wp-content/uploads/2009/11/4.png)

下载：     [幼圆](http://www.huage.biz/soft/52744.htm)(由于字体过大，所以使用外链，并不能保证可用，如果链接失效，大家百度或者google一下就行)

好啦，到此为止，我所一直使用的字体就介绍到这里了。下面说一下网上盛传的几款字体，根据我在vim（gvim）的真实使用，我谈如下几点体会：

1）关于YaHeiMono     这个字体，组合了微软雅黑, 微软consolas，听起来确实很不错，但是真正用到vim（gvim）中，你会发现，consolas被压缩了，至于原因，是这样的：     我试过将原版的consolas和原版的微软雅黑分别配置到vim（gvim）的英文字体和中文字体中（当然，用的是gvim的重编译版，支持所有字体），但出现的效果就是，微软雅黑明显要比英文consolas偏下一点，整个字体非常难看。如果大家不信，可以尝试一下，呵呵

2）关于中文字体，如果大家又想要微软雅黑的效果，又不想出现我在第一条里出现的问题，又不想重新编译gvim，那么可以试一下[方正准圆简体](http://font.knowsky.com/down/6513.html)，这款字体的光滑程度和微软不相上下，而且vim（gvim）默认支持哦，但唯一有缺憾的就是这款字体有时候会有点毛边，不过在9号字的时候，没有大碍，10号的话就有点问题了…… OK啦，这篇文章就写到这里，再说一遍哦，我推荐的字体只是测试过Vim（gvim），在别的编辑器上可能效果并不是很好（因为我只用gvim/vim）…… 大家有更好的字体建议，欢迎给我留言啊~~

版权所有，转载请注明出处。[https://www.vimer.cn](https://www.vimer.cn/)
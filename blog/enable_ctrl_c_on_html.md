1. Open target html url in the browser
2. Copy address behind:
```
javascript:!function e(t){function n(){}function o(e){e[i].removeChild(e)}function r(e){return[].slice.call(t.querySelectorAll(e))}function c(t){function n(){s(function(){if(!o)try{var n=t.contentDocument;n.body.childNodes.length&&(o=1,e(n))}catch(e){o=0}},100)}a[l](function(e){t['on'+e]=null});var o;n(),t.onload=n}for(var i='parentNode',l='forEach',a='contextmenu dragstart selectstart select copy beforecopy mouseup mousedown'.split(' '),u=setTimeout(n,0);u>=0;u--)clearTimeout(u);for(u=setInterval(n,1e8);u>=0;u--)clearInterval(u);var s=setTimeout;setTimeout=setInterval=n,r('script')[l](o);var m=[];r('iframe,frame')[l](function(e){m.push(e),e[i].replaceChild(t.createElement('script'),e)});var f=t.documentElement.innerHTML;t.open(),t.write('<!DOCTYPE html>'),t.close(),t.documentElement.innerHTML=f,r('script')[l](function(e){e[i].replaceChild(m.shift(),e)}),r('*')[l](c),c(t),a[l](function(e){t.addEventListener(e,function(e){e.stopPropagation()},!0)});var p=t.createElement('style');p.innerHTML='*{-webkit-user-select:text!important;-moz-user-select:text!important;user-select:text!important;}',t.body.appendChild(p)}(document);
```
3. Replace into the address bar of the target page in the browser
4. Check the address in the address bar if `javascript:` is disappears, type it yourself

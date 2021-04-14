var DynamciLoadUtil = {
    // 动态加载外部js文件，并执行回调
    loadJS: function(url, callback){
        var script = document.createElement('script');
        script.type = 'text/javascript';
        script.src = url;
        if(typeof callback == 'function'){
            script.onload = script.onreadystatechange = function(){
                if(!this.readyState || this.readyState == 'loaded'
                    || this.readyState == 'complete'){
                    callback();
                    script.onload = script.onreadystatechange = null;
                }
            }
        }
        document.body.appendChild(script);
        //document.getElementsByTagName('body')[0].appendChild(script);
    },
    // 行内方式动态加载js代码
    loadJSText: function(jsText){
        var script = document.createElement('script');
        script.type = 'text/javascript';
        try {
            // Firefox,Safari,Chrome,Opera支持
            script.appendChild(document.createTextNode(jsText));
        } catch(ex){
            // IE早期的浏览器，需要使用script的text属性来指定js代码
            script.text = jsText;
        }
        document.body.appendChild(script);
    },
    // 动态加载外部CSS文件
    loadCSS:function(url){
        var link = document.createElement('link');
        link.rel = 'stylesheet';
        link.href = url;
        document.getElementsByTagName('head')[0].appendChild(link);
    },
    // 使用<style>标签包含嵌入式CSS
    loadCSSText: function(cssText){
        var style = document.createElement('style');
        try{
            // Firefox,Safari,Chrome,Opera支持
            style.appendChild(document.createTextNode(cssText));
        } catch(ex){
            // IE早期浏览器，需要使用style元素的styleSheet属性的cssText属性
            style.styleSheet.cssText = cssText;
        }
    }
}
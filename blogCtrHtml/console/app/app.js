//开启悬浮提示功能
Ext.QuickTips.init();
//创建应用程序的实例
Ext.application({
    name: 'blog',
    appFolder: 'app',
    controllers: ["login.LoginController"],
    autoCreateViewport: true,
    launch: function () {
        // 页面加载完成之后执行
        console.log('app.js launch');
    }
});
/*
Ext.onReady(function() {
    //开启悬浮提示功能
    Ext.QuickTips.init();
    //开启动态加载
    // Ext.Loader.setConfig({
    //     enabled : true,
    // });

});
*/
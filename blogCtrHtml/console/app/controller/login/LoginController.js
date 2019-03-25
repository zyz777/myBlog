
Ext.define('blog.controller.login.LoginController', {
    extend: 'Ext.app.Controller',
    views: ['Viewport', 'login.LoginView'],
    init: function () {
        console.log('login.LoginController init()');
        this.control(
            {
                "button": {
                    click: function (btn) {
                        var id = btn.id;
                        switch (id) {
                            case 'loginBtnSubmit':
                                console.info('提交...');
                                this.submit(btn);
                                break;
                            case 'loginBtnReset':
                                console.info('重置...');
                                this.reset(btn);
                                break;
                        }

                        if (id == 'loginBtnSubmit') {
                            this.submit(btn);
                        } else if (id == '') {
                            this.reset(btn);
                        }
                    }
                }
            },
        );
    },
    submit: function (btn) {
        console.log('submit');
        var form = Ext.widget('loginView').items.items[0].getForm();
        if(form.isValid()){
            form.submit({
                url: 'file-upload.php',
                waitMsg: '正在提交...',
                success: function(fp, o) {
                    msg('Success', tpl.apply(o.result));
                    // Ext.Msg.alert('Success', action.result.msg);
                },
                failure: function(form, action) {
                    var status = action.response.status;
                    var statusText = action.response.statusText;
                    console.log('111');
                    Ext.Msg.alert('失败', status + " " + statusText);
                }
            });
        }
    },
    reset: function (btn) {
        console.log('reset');
        var form = Ext.widget('loginView').items.items[0].getForm();
        form.reset();
    }
});

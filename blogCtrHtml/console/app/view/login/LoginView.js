var formPanel = Ext.create("Ext.form.FormPanel", {
    // id: 'loginView_form',
    labelAlign: 'right',
    labelWidth: 50,
    frame: true,
    defaultType: 'textfield',
    items: [
        {
            fieldLabel: '用户名',
            name: 'userName',
            allowBlank: false
        },
        {
            fieldLabel: '密&nbsp;&nbsp;&nbsp;码',
            name: 'password',
            inputType: 'password',
            allowBlank: false
        }
    ]
});

Ext.define('blog.view.login.LoginView', {
    alias: 'widget.loginView', //取别名, 可以用于 xtype
    extend: Ext.Window,

    title: '<h2>zyz777 blog 后台管理系统</h2>',
    autoShow: true,
    layout: 'fit',
    // width:500,
    autoWidth: true,
    autoHeight: true,
    closeAction: 'destroy',
    closable: false,
    resizable: false,
    items: [formPanel],
    buttons: [
        {
            text: '登录',
            id: 'loginBtnSubmit',
            itemId: 'itemSubmit'
            /*handler: function(){
                var form = formPanel.getForm();
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
                            Ext.Msg.alert('失败', status + " " + statusText);
                        }
                    });
                }
            }*/
        },
        {
            text: '重置',
            id: 'loginBtnReset',
            itemId: 'itemReset'
            /*handler: function(btn) {
                formPanel.getForm().reset();
            }*/
        }
    ]
});
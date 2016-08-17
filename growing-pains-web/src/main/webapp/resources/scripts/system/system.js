/**
 * @author xingmiao
 */
var systemManager = function () {

    var tableWrapper;

    return {
        logout: function () {
            $ajax({
                type: 'POST',
                url: environment.basePath + "/system/logout.json",
                data: {},
                success: function (data) {
                    //错误等信息提示
                    if (data.status != 0) {
                        Metronic.alert({
                            type: 'danger',
                            icon: 'warning',
                            message: data.message,
                            container: tableWrapper,
                            place: 'prepend'
                        });
                        return false;
                    }
                    location.href = environment.basePath + "/";
                }
            });
        },

        login: function () {
            $ajax({
                type: 'POST',
                url: environment.basePath + "/system/login.json",
                data: {
                    userName: $("#userName").val(),
                    password: $("#password").val()
                },
                success: function (data) {
                    //错误等信息提示
                    if (data.status != 0) {
                        $("#loginError").html(systemManager.errorHtml(data.message));
                        return false;
                    }
                    location.href = environment.basePath + "/";
                }
            });
        },

        registerPage: function () {
            $('#loginModal').modal('hide');
            $('#registerModal').modal('show');
        },

        register: function () {
            var error = $("#registerError");

            var userName = $("#registerUserName");
            if (userName.val() == null || userName.val().length <= 0) {
                error.html(systemManager.errorHtml('用户名不能为空'));
                return;
            }

            var password = $("#registerPassword");
            if (password.val() == null || password.val().length <= 0) {
                error.html(systemManager.errorHtml('密码不能为空'));
                return;
            }

            var passwordAgain = $("#registerPasswordAgain");
            if (passwordAgain.val() == null || passwordAgain.val().length <= 0) {
                error.html(systemManager.errorHtml('确认密码不能为空'));
                return;
            }
            if (password.val() != passwordAgain.val()) {
                error.html(systemManager.errorHtml('两次输入密码不相同'));
                return;
            }

            var invitationCode = $("#invitationCode");
            if (invitationCode.val() == null || invitationCode.val().length <= 0) {
                error.html(systemManager.errorHtml('邀请码不能为空'));
                return;
            }

            $ajax({
                type: 'POST',
                url: environment.basePath + "/system/register.json",
                data: {
                    userName: userName.val(),
                    password: password.val(),
                    invitationCode: invitationCode.val()
                },
                success: function (data) {
                    //错误等信息提示
                    if (data.status != 0) {
                        error.html(systemManager.errorHtml(data.message));
                        return false;
                    }

                    $('#registerModal').modal('hide');
                    var modal = $("#basic-modal");
                    var body = $("#basic-modal-body");
                    body.html("注册成功, 5s后自动关闭, 请重新登录");
                    modal.on('hide.bs.modal', function () {
                        location.href = environment.basePath + "/";
                    });
                    modal.modal('show');
                    setTimeout(function(){modal.modal("hide")}, 5000);
                }
            });
        },

        errorHtml: function (message) {
            return '<div class="Metronic-alerts alert alert-danger fade in" style="height: 35px; padding: 8px">'
                + '<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>'
                + '<i class="fa-lg fa fa-warning"></i>  ' + message + '</div>';
        }
    };
}();

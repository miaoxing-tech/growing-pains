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
                        var html = '<div class="Metronic-alerts alert alert-danger fade in" style="height: 35px; padding: 8px">'
                            + '<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>'
                            + '<i class="fa-lg fa fa-warning"></i>  ' + data.message + '</div>';
                        $("#loginError").html(html);
                        return false;
                    }
                    location.href = environment.basePath + "/";
                }
            });
        }
    };
}();

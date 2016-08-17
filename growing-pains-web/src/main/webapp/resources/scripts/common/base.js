function $ajax(ajaxOption) {
    var _successFn = ajaxOption.success;
    ajaxOption.success = function (data) {
        try {
            if (_$ajaxResultExecute(data)) {
                if (data.msg) {
                    var bool = data.msg.indexOf("sorry");
                    if (bool >= 0) {
                        window.location = environment.basePath;
                    }
                }
                if (_successFn) {
                    _successFn(data);
                }
            }
        } catch (e) {
            console.error(e);
        }
    };
    var _ajax = $.extend(true, {}, _$ajaxDefaultOption, ajaxOption);
    $.ajax(_ajax);
}

function _$ajaxResultExecute(data) {
    if (data == null) {
        alert("返回数据为空");
        return false;
    }
    if (data.code == -500 || data.code == -501 || data.code == -502) {
        alert(data.msg);
        return false;
    }
    return true;
}

var _$ajaxDefaultOption = {
    cache: false,
    error: function (xhr, errSta, errThr) {
        alert('服务器或网络异常，请稍后执行此操作！');
    },
    complete: function () {
        hideLoading();
    },
    beforeSend: function () {
        showLoading();
    }
};

function showLoading() {
    var $over = $("#loadingOver"), $layout = $("#loadingLayout");
    if ($over.length == 0) {
        var _popupHtml =
            '<div id="loanMng_loadingOver" style="display: none;position: absolute;top: 0;left: 0;width: 100%;height: 100%;background-color: #f5f5f5;opacity:0.5;z-index: 1000;"></div>' +
            '<div id="loanMng_loadingLayout" style="display: none;position: absolute;top: 40%;left: 40%;width: 20%;height: 20%;z-index: 1001;text-align:center;">' +
            '	<img src="' + environment.basePath + '/resources/img/loading.gif" alt="" />' +
            '</div>';

        $(document.body).append(_popupHtml);
        $over = $("#loadingOver");
        $layout = $("#loadingLayout");
    }
    $over.show();
    $layout.show();
}

function hideLoading() {
    var $over = $("#loadingOver"), $layout = $("#loadingLayout");
    if ($over.length == 0) {
        return false;
    }
    $over.hide();
    $layout.hide();
}
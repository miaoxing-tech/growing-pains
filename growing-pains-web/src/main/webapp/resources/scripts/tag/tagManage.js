/**
 * @author xingmiao
 */
var tagManager = function () {

    var tableWrapper;

    var _$tagName;

    var _$tagDesc;

    var _validateTagName = function () {
        if (_$tagName.val() == null || _$tagName.val().length <= 0) {
            $("#tagNameHelp").css("color", "red").html("标签名不能为空").show();
            return false;
        }
        return true;
    };

    var _validateTagDesc = function () {
        if (_$tagDesc.val() == null || _$tagDesc.val().length <= 0) {
            $("#tagDescHelp").css("color", "red").html("标签描述不能为空").show();
            return false;
        }
        return true;
    };

    return {
        init: function () {
            // 赋值
            _$tagName = $("#tagName");
            _$tagDesc = $("#tagDesc");
            // 检验
            _$tagName.on("blur", _validateTagName);
            _$tagDesc.on("blur", _validateTagDesc);
        },

        add: function () {
            $("#tagNameHelp").hide();
            $("#tagDescHelp").hide();
            if (!_validateTagName()) {
                return false;
            }
            if (!_validateTagDesc()) {
                return false;
            }
            $ajax({
                type: 'POST',
                url: environment.basePath + "/blogTag/addTag.json",
                data: {
                    "name": _$tagName.val(),
                    "desc": _$tagDesc.val()
                },
                success: function (data) {
                    var modal = $("#basic-modal");
                    var body = $("#basic-modal-body");

                    //错误等信息提示
                    if (data.status != 0) {
                        body.html(data.message);
                        modal.modal('show');
                        return false;
                    }

                    body.html("新增标签成功");
                    modal.on('hide.bs.modal', function () {
                        location.href = environment.basePath + "/blogTag/listPage.htm";
                    });
                    modal.modal('show');
                }
            });
        },

        delete: function () {
            var checkedList = [];
            //是否选中
            var checkedRadio = $("input[name='checkTagId']:checked");
            checkedRadio.each(
                function (i) {
                    checkedList[i] = $(this).val();
                });
            if (checkedList.length == 0) {
                Metronic.alert({
                    type: 'danger',
                    icon: 'warning',
                    message: "您还没有选中标签",
                    container: tableWrapper,
                    place: 'prepend'
                });
                return;
            }

            $ajax({
                type: 'POST',
                url: environment.basePath + "/blogTag/deleteTag.json",
                data: {
                    "tagId": checkedList
                },
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

                    var modal = $("#basic-modal");
                    var body = $("#basic-modal-body");
                    body.html("删除标签成功");
                    modal.on('hide.bs.modal', function () {
                        location.href = environment.basePath + "/blogTag/listPage.htm";
                    });
                    modal.modal('show');
                }
            });
        },

        editPage: function () {
            var checkedList = [];
            //是否选中
            var checkedRadio = $("input[name='checkTagId']:checked");
            checkedRadio.each(
                function (i) {
                    checkedList[i] = $(this).val();
                });
            if (checkedList.length == 0) {
                Metronic.alert({
                    type: 'danger',
                    icon: 'warning',
                    message: "您还没有选中标签",
                    container: tableWrapper,
                    place: 'prepend'
                });
                return;
            } else if (checkedList.length > 1) {
                Metronic.alert({
                    type: 'danger',
                    icon: 'warning',
                    message: "只能修改一个标签",
                    container: tableWrapper,
                    place: 'prepend'
                });
                return;
            }
            location.href = environment.basePath + "/blogTag/updatePage.htm?tagId=" + checkedList[0];
        },

        edit: function () {
            $("#tagNameHelp").hide();
            $("#tagDescHelp").hide();
            var modal = $("#basic-modal");
            var body = $("#basic-modal-body");

            var id = $("#tagId");
            if (id.val() == null || id.val().length <= 0) {
                body.html("标签id不存在");
                modal.modal('show');
                return false;
            }

            if (!_validateTagName()) {
                return false;
            }
            if (!_validateTagDesc()) {
                return false;
            }
            $ajax({
                type: 'POST',
                url: environment.basePath + "/blogTag/updateTag.json",
                data: {
                    "id": id.val(),
                    "name": _$tagName.val(),
                    "desc": _$tagDesc.val()
                },
                success: function (data) {
                    //错误等信息提示
                    if (data.status != 0) {
                        body.html(data.message);
                        modal.modal('show');
                        return false;
                    }

                    body.html("修改标签成功");
                    modal.on('hide.bs.modal', function () {
                        location.href = environment.basePath + "/blogTag/listPage.htm";
                    });
                    modal.modal('show');
                }
            });
        }
    };
}();

/**
 * @author xingmiao
 */
var blogManager = function () {

    var tableWrapper;

    var _$title;

    var _$content;

    var _validateTitle = function () {
        if (_$title.val() == null || _$title.val().length <= 0) {
            $("#titleHelp").css("color", "red").html("博客标题不能为空").show();
            return false;
        }
        return true;
    };

    var _validateContent = function () {
        if (_$content.val() == null || _$content.val().length <= 0) {
            $("#contentHelp").css("color", "red").html("博客内容不能为空").show();
            return false;
        }
        return true;
    };

    return {
        init: function () {
            // 赋值
            _$title = $("#title");
            _$content = $("#content");
            // 检验
            _$title.on("blur", _validateTitle);
            _$content.on("blur", _validateContent);
        },

        add: function () {
            $("#titleHelp").hide();
            $("#contentHelp").hide();
            if (!_validateTitle()) {
                return false;
            }
            if (!_validateContent()) {
                return false;
            }

            var checkedList = [];
            //是否选中
            var checkedRadio = $("input[name='tagCheckbox']:checked");
            checkedRadio.each(
                function (i) {
                    checkedList[i] = $(this).val();
                });

            $ajax({
                type: 'POST',
                url: environment.basePath + "/blog/addBlog.json",
                data: {
                    "title": _$title.val(),
                    "content": _$content.val(),
                    "tagId": checkedList
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

                    body.html("新增博客成功");
                    modal.on('hide.bs.modal', function () {
                        location.href = environment.basePath + "/blog/listPage.htm";
                    });
                    modal.modal('show');
                    setTimeout(function(){modal.modal("hide")}, 5000);
                }
            });
        },

        deleteConfirm: function (blogId) {
            $("#deleteBlogId").val(blogId);
            $("#confirm-modal").modal('show');
        },

        delete: function () {
            var deleteBlogId = $("#deleteBlogId").val();
            if (deleteBlogId == null) {
                Metronic.alert({
                    type: 'danger',
                    icon: 'warning',
                    message: "待删除的博客不存在。",
                    container: tableWrapper,
                    place: 'prepend'
                });
                return false;
            }

            $ajax({
                type: 'POST',
                url: environment.basePath + "/blog/deleteBlog.json",
                data: {
                    "blogId": deleteBlogId
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
                    body.html("删除博客成功");
                    modal.on('hide.bs.modal', function () {
                        location.href = environment.basePath + "/blog/listPage.htm";
                    });
                    modal.modal('show');
                    setTimeout(function(){modal.modal("hide")}, 5000);
                }
            });
        },

        viewPage: function (blogId) {
            var modal = $("#basic-modal");
            var body = $("#basic-modal-body");

            if (blogId == null) {
                Metronic.alert({
                    type: 'danger',
                    icon: 'warning',
                    message: "博客不存在。",
                    container: tableWrapper,
                    place: 'prepend'
                });
                return false;
            }

            location.href = environment.basePath + "/blog/viewPage.htm?blogId=" + blogId;
        },

        edit: function () {
            $("#titleHelp").hide();
            $("#contentHelp").hide();
            if (!_validateTitle()) {
                return false;
            }
            if (!_validateContent()) {
                return false;
            }

            var modal = $("#basic-modal");
            var body = $("#basic-modal-body");

            var id = $("#blogId");
            if (id.val() == null || id.val().length <= 0) {
                body.html("博客id不存在");
                modal.modal('show');
                return false;
            }

            var checkedList = [];
            //是否选中
            var checkedRadio = $("input[name='tagCheckbox']:checked");
            checkedRadio.each(
                function (i) {
                    checkedList[i] = $(this).val();
                });

            $ajax({
                type: 'POST',
                url: environment.basePath + "/blog/updateBlog.json",
                data: {
                    "id": id.val(),
                    "title": _$title.val(),
                    "content": _$content.val(),
                    "tagId": checkedList
                },
                success: function (data) {
                    //错误等信息提示
                    if (data.status != 0) {
                        body.html(data.message);
                        modal.modal('show');
                        return false;
                    }

                    body.html("修改博客成功");
                    modal.on('hide.bs.modal', function () {
                        location.href = environment.basePath + "/blog/listPage.htm";
                    });
                    modal.modal('show');
                    setTimeout(function(){modal.modal("hide")}, 5000);
                }
            });
        }
    };
}();

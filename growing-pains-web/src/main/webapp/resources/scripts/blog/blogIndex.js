/**
 * @author xingmiao
 */
var blogIndexManager = function () {

    var tableWrapper;

    return {
        getBlogs: function () {
            $ajax({
                type: 'GET',
                url: environment.basePath + "/blog/newestBlogList.json",
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

                    blogIndexManager.initTable(data.data);
                    return true;
                }
            });
        },

        initTable: function (data) {
            var html = '';
            if (data != null) {
                $.each(data, function (idx, obj) {
                    html += '<tr>';
                    html += '<td>';
                    html += '<a href="#" onclick="blogManager.viewPage(' + obj.blogContentEntity.id + ');">';
                    html += obj.blogContentEntity.title;
                    html += '</a>';
                    html += '</td>';
                    html += '<td>';
                    html += getFormatDateByLong(obj.blogContentEntity.createTime, "yyyy-MM-dd hh:mm:ss");
                    html += '</td>';
                    html += '<td>';
                    html += obj.userName;
                    html += '</td>';
                    html += '<td>';
                    html += '<a href="#" class="btn default btn-xs green-stripe" onclick="blogManager.viewPage(' + obj.blogContentEntity.id + ');">VIEW</a>';
                    html += '</td>';
                    html += '</tr>';
                });

            } else {
                html += '<tr><td colspan="11">这里还木有博客 =。=</td></tr>';
            }

            $("#blogTable").html(html);
        },

        init: function () {
            blogIndexManager.getBlogs();
        }
    };
}();

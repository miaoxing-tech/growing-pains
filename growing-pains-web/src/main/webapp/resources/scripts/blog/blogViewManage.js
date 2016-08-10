/**
 * @author xingmiao
 */
var blogViewManager = function () {

    var tableWrapper;

    return {
        getBlog: function (blogId) {
            $ajax({
                type: 'GET',
                url: environment.basePath + "/blog/getSingleBlog.json",
                data: {
                    "blogId": blogId
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
                    $("#blog-title").html(data.data.title);
                    $("#create-time").html('<i class="fa fa-calendar"></i>' +
                        '<a>' + getFormatDateByLong(data.data.createTime, "yyyy-MM-dd hh:mm:ss") + '</a>');
                    operate.initMarkdown(data.data.content);
                    return true;
                }
            });
        },

        getTags: function (blogId) {
            $ajax({
                type: 'GET',
                url: environment.basePath + "/blog/getSingleBlogTags.json",
                data: {
                    "blogId": blogId
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

                    if (data.data != null && data.data.length == 0) {
                        return false;
                    }

                    var i;
                    var html = '<i class="fa fa-tags"></i>';
                    for (i = 0; i < data.data.length; i++) {
                        var tag = data.data[i];
                        html = html + '<a>' + tag.name + '</a>';
                    }
                    $("#tags").html(html);
                    return true;
                }
            });
        },

        init: function (blogId) {
            blogViewManager.getBlog(blogId);
            blogViewManager.getTags(blogId);
        }
    };
}();

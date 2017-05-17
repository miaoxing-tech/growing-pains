/**
 * @author xingmiao
 */
var metronicShowManager = function () {

    var tableWrapper;

    var pageSize = 10;

    return {
        getBlogs: function (blogUserName, pageNum) {
            $ajax({
                type: 'GET',
                url: environment.basePath + "/blog/blogList.json",
                data: {
                    "userName": blogUserName,
                    "pageNum": pageNum,
                    "pageSize": pageSize
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

                    metronicShowManager.initListData(data.data, pageNum, blogUserName);
                    return true;
                }
            });
        },

        initListData: function (data, pageNum, blogUserName) {
            var html = '';
            if (data != null && data.list != null) {
                $.each(data.list, function (idx, obj) {
                    html += '<br />';
                    html += '<h1 style="margin-top:0;">' + obj.blogContentEntity.title + '</h1>';
                    html += '<br />';
                    html += '<div class="blog-tag-data">';
                    html += '<div class="row">';
                    html += '<div class="col-md-6">';

                    html += '<a class="btn blue" href="#" onclick="blogManager.viewPage(' + obj.blogContentEntity.id + ');">';
                    html += '阅读博客 <i class="m-icon-swapright m-icon-white"></i>';
                    html += '</a>';

                    html += '</div>';
                    html += '<div class="col-md-6 blog-tag-data-inner">';
                    html += '<ul class="list-inline blog-tags">';

                    html += '<li>';
                    var i;
                    if (obj.blogTagEntityList.length > 0) {
                        html += '<i class="fa fa-tags" style="color: #78cff8"></i>';
                        for (i = 0; i < obj.blogTagEntityList.length; i++) {
                            var tag = obj.blogTagEntityList[i];
                            html += '<a style="color: #555">' + tag.name + '</a>';
                        }
                    }
                    html += '</li>';
                    html += '&nbsp;&nbsp;&nbsp;';
                    html += '<li>';
                    html += '<i class="fa fa-calendar"></i>';
                    html += getFormatDateByLong(obj.blogContentEntity.createTime, "yyyy-MM-dd hh:mm:ss");
                    html += '</li>';
                    html += '</ul>';
                    html += '</div>';
                    html += '</div>';
                    html += '</div>';
                    html += '<hr>';
                });

            } else {
                html += '<tr><td colspan="11">这个家伙很懒, 什么都没有留下 =。=</td></tr>';
            }

            $("#blogList").html(html);
            metronicShowManager.initPageFoot(pageNum, Math.ceil(data.total / pageSize), blogUserName);
        },

        initPageFoot: function (pageNum, maxPage, blogUserName) {
            var html = '';

            if (maxPage > 0 || pageNum > 0) {
                var prev = pageNum - 1 > 0 ? pageNum - 1 : 1;
                var next = pageNum + 1 > maxPage ? maxPage : pageNum + 1;

                html += '<li>';
                html += '<a href="#" onclick="metronicShowManager.getBlogs(\'' + blogUserName + '\', ' + prev + ');">';
                html += '<i class="fa fa-angle-left"></i>';
                html += '</a>';
                html += '</li>';
                var i;
                for (i = 1; i < maxPage + 1; i++) {
                    if (i == pageNum) {
                        html += '<li class="active">';
                    } else {
                        html += '<li>';
                    }
                    html += '<a href="#" onclick="metronicShowManager.getBlogs(\'' + blogUserName + '\', ' + i + ');">' + i + '</a>';
                    html += '</li>';
                }
                html += '<li>';
                html += '<a href="#" onclick="metronicShowManager.getBlogs(\'' + blogUserName + '\', ' + next + ');">';
                html += '<i class="fa fa-angle-right"></i>';
                html += '</a>';
                html += '</li>';
            }

            $("#blogPagination").html(html);
        },

        init: function (blogUserName) {
            metronicShowManager.getBlogs(blogUserName, 1);
        }
    };
}();

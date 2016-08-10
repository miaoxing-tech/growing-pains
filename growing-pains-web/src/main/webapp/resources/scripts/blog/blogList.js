var TableAjax = function () {

    var tableContainer;
    var tableWrapper;
    var table;

    var initPickers = function () {
        //init date pickers
        $('.date-picker').datepicker({
            rtl: Metronic.isRTL(),
            autoclose: true
        });
    };

    var handleRecords = function () {

        var grid = new Datatable();
        $("#title").val("");

        grid.init({
            src: $("#datatable_ajax"),
            onSuccess: function (grid, response) {
                // grid:        grid object
                // response:    json object of server side ajax response
                // execute some code after table records loaded
            },
            onError: function (grid) {
                // execute some code on network or other general error
            },
            onDataLoad: function (grid) {
                // execute some code on ajax data load
            },
            loadingMessage: 'Loading...',
            dataTable: {
                "bStateSave": true,
                "lengthMenu": [
                    [10, 20, 50, 100, 150, -1],
                    [10, 20, 50, 100, 150, "All"]
                ],
                "pageLength": 10, // default record count per page
                "ajax": {
                    "url": environment.basePath + "/blog/myBlogList.json",
                    "type": "GET",
                    "data": function (data) {
                        var title = $("#title").val();
                        if (title != "" && title != null) {
                            data = {
                                "title": title
                            }
                        } else {
                            data = {};
                        }
                        Metronic.blockUI({
                            message: 'Loading...',
                            target: tableContainer,
                            overlayColor: 'none',
                            cenrerY: true,
                            boxed: true
                        });
                        return data;
                    },
                    "dataSrc": function (res) {
                        if (res.status != 0) {
                            Metronic.alert({
                                type: 'danger',
                                icon: 'warning',
                                message: res.message,
                                container: tableWrapper,
                                place: 'prepend'
                            });
                            Metronic.unblockUI(tableContainer);
                            return {};
                        }

                        var addResult = function (result, data) {
                            var array = [
                                data.title, getFormatDateByLong(data.createTime, "yyyy-MM-dd hh:mm:ss"),
                                getFormatDateByLong(data.updateTime, "yyyy-MM-dd hh:mm:ss"),
                                '<button type="button" class="btn default" onclick="blogManager.viewPage(' + data.id + ');">VIEW</button> ' +
                                '<a class="btn green" href="/blog/updatePage.htm?blogId=' + data.id + '">EDIT</a> ' +
                                '<button type="button" class="btn red" onclick="blogManager.deleteConfirm(' + data.id + ');">DELETE</button> '
                            ];
                            result.push(array);
                            return result;
                        };

                        var result = [];
                        for (var i = 0, ien = res.data.list.length; i < ien; i++) {
                            result = addResult(result, res.data.list[i]);
                        }

                        var group = $('.group-checkable');
                        group.attr("checked", false);
                        $.uniform.update(group);

                        Metronic.unblockUI(tableContainer);

                        return result;
                    }
                },
                "order": [
                    [1, "asc"]
                ]
            }
        });

        grid.getTableWrapper().on('click', '.table-group-action-submit', function (e) {
            e.preventDefault();
            var action = $(".table-group-action-input", grid.getTableWrapper());
            grid.setAjaxParam("customActionType", "group_action");
            grid.setAjaxParam("customActionName", action.val());
            grid.setAjaxParam("title", $("#title"));
            grid.getDataTable().ajax.reload();
            grid.clearAjaxParams();
        });
    };

    return {
        init: function () {
            initPickers();
            handleRecords();
        }
    };

}();
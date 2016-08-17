<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<div class="modal fade" id="basic-modal" tabindex="-1" role="basic" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">温馨提示</h4>
            </div>
            <div class="modal-body" id="basic-modal-body">
            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn default">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<a id="tip" class="btn default" data-toggle="modal" href="#basic-modal" style="display: none;"></a>
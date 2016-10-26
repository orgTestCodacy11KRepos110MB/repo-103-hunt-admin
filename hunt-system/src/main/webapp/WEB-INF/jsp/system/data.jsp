<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<script type="text/javascript" src="/static/js/system/data.js"></script>
<script type="text/javascript" src="/static/js/system/common.js"></script>
<div id="data-tool-bar" style="padding: 10px">
    <a href="#" class="easyui-menubutton" menu="#save" data-options="iconCls:'icon-add'" style="width:70px">新增</a>
    <a href="#" class="easyui-linkbutton" id="update-data" data-options="iconCls:'icon-edit'" style="width:70px">修改</a>
    <a href="#" class="easyui-linkbutton" id="delete-data" data-options="iconCls:'icon-remove'"
       style="width:70px">删除</a>
    <a href="#" class="easyui-linkbutton" id="flash-data" data-options="iconCls:'icon-reload'" style="width:70px">刷新</a>
</div>
<div id="data_grid" style="padding: 10px">

</div>
<div id="save">
    <div data-options="iconCls:'icon-add' " id="save-data" style="width:70px">字典</div>
    <div data-options="iconCls:'icon-add'" id="save-dataGroup" style="width:70px">字典组</div>
</div>

<div id="save-data-dialog">

    <form action="#" id="save-data-form">
        <input type="hidden" id="id" name="id">
        <div style="float: left;height: 300px;">
            <p style="padding: 10px;">&nbsp;&nbsp;名称:<input name="keyName" id="keyName"
                                                            style="width: 300px;height: 35px"
                                                            data-options="required:true"
                                                            class="easyui-textbox easyui-validatebox"></p>
            <p style="padding: 10px ;">&nbsp;&nbsp;&nbsp;值:<input name="keyValue" id="keyValue"
                                                            style="width: 300px;height: 35px"
                                                            data-options="required:true"
                                                            class="easyui-textbox easyui-validatebox"></p>
            <p style="padding: 10px;"> &nbsp;&nbsp;描述:<input name="description" id="description"
                                                             style="width: 300px;height: 130px"
                                                             data-options="required:true,multiline:true"
                                                             class="easyui-textbox easyui-validatebox">
            </p>
        </div>
        <div style="float: right; width: 40%; height:326px;">
            <table class="easyui-datagrid" id="data-group" data-options="
                   url:'/system/dataGroup/list',
                   idField: 'id',
                   method:'get',
                   fitColumns:true,
                   fit:true,
                   singleSelect:true,
                ">
                <thead frozen="true">
                <tr>
                    <th data-options="field:'ck', checkbox: true">选择</th>
                </tr>
                </thead>
                <thead>
                <tr>
                    <th data-options="field:'name',width:200">字典组名称</th>
                </tr>
                </thead>
            </table>
        </div>
    </form>
</div>
</div>

<div id="save-data-group-dialog">
    <div>
        <form id="save-data-group-form" style="padding: 10px;">
            <div style="float: left;">
                <p style="padding: 10px;">&nbsp;&nbsp;名称:<input name="name" id="group_name"
                                                                style="width: 300px;height: 35px"
                                                                data-options="required:true"
                                                                class="easyui-textbox easyui-validatebox"></p>
                <p style="padding: 10px;"> &nbsp;&nbsp;描述:<input name="description" id="group_description"
                                                                 style="width: 300px;height: 130px"
                                                                 data-options="required:true,multiline:true"
                                                                 class="easyui-textbox easyui-validatebox">
                </p>
            </div>
        </form>
    </div>
</div>

﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nav_list.aspx.cs" Inherits="HT.Admin.admin.settings.nav_list" %>

<%@ Import Namespace="HT.Utility" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <title>后台导航管理</title>
    <link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
    <link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="../../scripts/artdialog/dialog-plus-min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/common.js"></script>
    <style>
        .ltable td {
            text-align: left;
        }
    </style>
</head>
<body class="mainbody">
    <form id="form1" runat="server">
        <!--导航栏-->
        <div class="location">
            <a href="javascript:history.back(-1);" class="back"><i></i><span>返回上一页</span></a>
            <a href="../center.aspx" class="home"><i></i><span>首页</span></a>
            <i class="arrow"></i>
            <span>后台导航管理</span>
        </div>
        <!--/导航栏-->

        <!--工具栏-->
        <div id="floatHead" class="toolbar-wrap">
            <div class="toolbar">
                <div class="box-wrap">
                    <a class="menu-btn"></a>
                    <div class="l-list">
                        <ul class="icon-list">
                            <li><a class="add" href="nav_edit.aspx?action=<%=HTEnums.ActionEnum.Add %>"><i></i><span>新增</span></a></li>
                            <li><a class="all" href="javascript:;" onclick="checkAll(this);"><i></i><span>全选</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--/工具栏-->

        <!--列表-->
        <div class="table-container">
            <asp:Repeater ID="rptList" runat="server" OnItemDataBound="rptList_OnItemDataBound">
                <HeaderTemplate>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ltable">
                        <tr>
                            <th width="6%">选择</th>
                            <th align="left" width="16%" style="text-align: left !important;">调用名称</th>
                            <th align="left" style="text-align: left !important;">标题</th>
                            <th width="8%">显示</th>
                            <th width="65">排序</th>
                            <th width="12%">操作</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td style="text-align: center">
                            <asp:CheckBox ID="chkId" CssClass="checkall" runat="server" Style="vertical-align: middle;" />
                            <asp:HiddenField ID="hidId" Value='<%#Eval("id")%>' runat="server" />
                            <asp:HiddenField ID="hidLayer" Value='<%#Eval("classlayer") %>' runat="server" />
                        </td>
                        <td style="white-space: nowrap; word-break: break-all; overflow: hidden;"><%#Eval("name")%></td>
                        <td style="white-space: nowrap; word-break: break-all; overflow: hidden;">
                            <asp:Literal ID="LitFirst" runat="server"></asp:Literal>
                            <a href="nav_edit.aspx?action=<%#HTEnums.ActionEnum.Edit %>&id=<%#Eval("id") %>"><%#Eval("title") %></a>
                            <%#Eval("linkurl").ToString() == "" ? "" : "(链接：" + Eval("linkurl") + ")" %>
                        </td>
                        <td style="text-align: center !important;"><%#Convert.ToInt32(Eval("isshow")) == 1 ? "√" : "×"%></td>
                        <td style="text-align: center !important;">
                            <%#Eval("sortid")??"99" %>
                        </td>
                        <td style="text-align: center !important;">
                            <a href="nav_edit.aspx?action=<%#HTEnums.ActionEnum.Add %>&id=<%#Eval("id")%>">添加子级</a>
                            <a href="nav_edit.aspx?action=<%#HTEnums.ActionEnum.Edit %>&id=<%#Eval("id")%>">修改</a>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    <%#rptList.Items.Count == 0 ? "<tr><td align=\"center\" colspan=\"8\">暂无记录</td></tr>" : ""%>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
        <!--/列表-->

    </form>
</body>
</html>
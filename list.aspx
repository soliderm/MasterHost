<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="ASPNetFileUpDownLoad.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ASP.Net Up & Download Files</title>
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div id="tabFiles">
    <form id="frmDefault" enctype="multipart/form-data" runat="server">
    <div style="width: 500px">

    <div style="margin-top: 0px; clear: both">
        <asp:GridView ID="gvFiles" CssClass="GridViewStyle" 
            AutoGenerateColumns="false" runat="server" AllowPaging="True"  pagesize=8>
            <FooterStyle CssClass="GridViewFooterStyle" />
            <RowStyle CssClass="GridViewRowStyle" />    
            <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
            <PagerStyle CssClass="GridViewPagerStyle" />
            <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
            <HeaderStyle CssClass="GridViewHeaderStyle" />
                <Columns>    
                    <asp:boundfield datafield="Name" headertext="文件名"/>
                    <asp:boundfield datafield="ContentType" headertext="类型"/>
                    <asp:boundfield datafield="Size" headertext="大小（字节）"/>
                    <asp:boundfield datafield="LastTime" headertext="时间"/>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink runat="server"
                             NavigateUrl='<%# Eval("ID", "GetFile.aspx?ID={0}") %>'
                            Text="下载">
                        </asp:HyperLink>       
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</form>
    </div>

</body>
</html>

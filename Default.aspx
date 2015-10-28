<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="ASPNetFileUpDownLoad.Default" %>

<!DOCTYPE html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="Default.css"/>
	
    <title></title>

    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="main.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div id="tabFiles" align="left">
    <form id="frmDefault" enctype="multipart/form-data" runat="server">
    <div style="width: 500px">
    <div style="clear: both; width: 100%">
        <input type="file" name="fileInput" />
        <asp:Button ID="btnUpload" Text="上传文件" runat="server" 
            onclick="btnUpload_Click" />
    </div>
    <div style="margin-top: 5px; clear: both">
        <asp:GridView ID="gvFiles" CssClass="GridViewStyle" 
            AutoGenerateColumns="false" runat="server" AllowPaging="false" >
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


</>
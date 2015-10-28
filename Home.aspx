<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="User_Login_CS.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        欢迎
        <asp:LoginName ID="LoginName1" runat="server" Font-Bold="true" />
        <br />
        <br />
        <asp:Label ID="lblLastLoginDate" runat="server" />
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </div>
    </form>
	
	<a href="filer.aspx">公共空间</a>
	<a href="default.aspx">个人空间</a>

    /////.cs
    /////
    ///// select * form folder talbe where username=username
    /////  filepath 相对路径
    /////   filename 


    ///// 打开： select  * forder  where owerner=user  and folder=folder
       if !EOF  //是文件夹创建者
       {  select * form log_upload_table where path=foldername}
       else  // 不是文件夹创建时
       {
       select * from log_upload_table where username=user
       }


  <!--  <iframe id="listframe" src="default.aspx" width="100%" height="800" scrolling="no"  frameborder="0" border="0" marginwidth="0" marginheight="0"  allowtransparency="yes"></iframe> -->



</body>
</html>

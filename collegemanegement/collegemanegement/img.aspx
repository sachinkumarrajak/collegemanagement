﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="img.aspx.cs" Inherits="collegemanegement.img" %>

<%@ Register assembly="DevExpress.Web.v15.2, Version=15.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <dx:ASPxImageSlider ID="ASPxImageSlider1" runat="server" ImageSourceFolder="~/properties" ForeColor="#000099" style="top: 5px; left: 29px; position: absolute; width: 595px; height: 205px">
            <SettingsAutoGeneratedImages ImageCacheFolder="~/Thumb/" />
        </dx:ASPxImageSlider>
    
    </div>
    </form>
</body>
</html>

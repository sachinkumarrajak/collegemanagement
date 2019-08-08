<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ph.aspx.cs" Inherits="collegemanegement.ph" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 421px;
            font-weight: bold;
            text-align: right;
        }
        .auto-style2
        {
            width: 244px;
        }
        #Text1
        {
            width: 219px;
            height: 24px;
        }
        .auto-style3
        {
            width: 421px;
            font-weight: bold;
            text-align: right;
            height: 31px;
        }
        .auto-style4
        {
            width: 244px;
            height: 31px;
        }
        .auto-style5
        {
            height: 31px;
        }
        .auto-style6
        {
            width: 421px;
            font-weight: bold;
            text-align: right;
            height: 32px;
        }
        .auto-style7
        {
            width: 244px;
            height: 32px;
        }
        .auto-style8
        {
            height: 32px;
        }
        .auto-style9
        {
            width: 421px;
            font-weight: bold;
            text-align: right;
            height: 29px;
        }
        .auto-style10
        {
            width: 244px;
            height: 29px;
        }
        .auto-style11
        {
            height: 29px;
        }
        #Text2
        {
            width: 219px;
            height: 24px;
        }
        #Radio1
        {
            width: 31px;
        }
        .auto-style12
        {
            font-weight: bold;
        }
        #Select1
        {
            width: 63px;
            top: 103px;
            left: 438px;
            position: absolute;
            height: 29px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 99%; top: 137px; left: 16px; position: absolute; height: 69px;">
            <tr>
                <td class="auto-style1">ID:-</td>
                <td class="auto-style2">
                    <input id="Text1" type="text" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">NAME:-</td>
                <td class="auto-style4">
                    <input id="Text2" type="text" /></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style6">GENDER:-</td>
                <td class="auto-style7">
                    <input id="Radio1" name="rdomale" value="bca"  type="radio" class="auto-style12" /><b>MALE </b>
                    <input id="Radio2" name="rdomale" value="bca" type="radio" /> <b>FEMALE</b></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9">DOB:-</td>
                <td class="auto-style10">
                    <select id="Select1" name="D1">
                        <option></option>
                         <option>bihar</option>
        <option>jharkhand</option>
                    </select>&nbsp; </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style1">EMAIL:-</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">PHONE:-</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">ADDRESSS</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">STATE:-</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">CITY:-</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="VB" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, 
PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dxe" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, 
PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dxcb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxe:ASPxRadioButtonList ID="ASPxRadioButtonList1" runat="server" ClientInstanceName="rbl"
            OnSelectedIndexChanged="ASPxRadioButtonList1_SelectedIndexChanged" >
            <ClientSideEvents SelectedIndexChanged="function(s, e) { e.processOnServer=true; }" />
            <Items>
                <dxe:ListEditItem Text="FirstName LastName, Company" Value="Format1" />
                <dxe:ListEditItem Text="LastName FirstName, Company" Value="Format2" />
            </Items>
        </dxe:ASPxRadioButtonList>
        <br />
        <dxe:ASPxComboBox ID="ASPxComboBox1" runat="server" DataSourceID="AccessDataSource1" IncrementalFilteringMode="Contains"
            TextFormatString="{0} {1}, {2} Company" ValueType="System.String" Width="450px">
            <Columns>
                <dxe:ListBoxColumn Caption="First Name" FieldName="FirstName" Name="FirstName" />
                <dxe:ListBoxColumn Caption="Last Name" FieldName="LastName" Name="LastName" />
                <dxe:ListBoxColumn Caption="Company" FieldName="Company" Name="Company" />
            </Columns>
        </dxe:ASPxComboBox>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Contacts.mdb" 
            SelectCommand="SELECT [FirstName], [LastName], [Company] FROM [Customers]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>

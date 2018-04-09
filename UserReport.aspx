<%@ Page Title="Admin report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserReport.aspx.cs" Inherits="HelloWorldManager.UserReport" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <asp:GridView  runat="server" ID="gvUserReport" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            <asp:BoundField DataField="Address1" HeaderText="Address1" />
            <asp:BoundField DataField="Address2" HeaderText="Address2" />
            <asp:BoundField DataField="City" HeaderText="City" />
            <asp:BoundField DataField="State" HeaderText="State" />
            <asp:BoundField DataField="Zip" HeaderText="Zip" />
            <asp:BoundField DataField="Country" HeaderText="Country" />
            <asp:BoundField DataField="DateCreated" HeaderText="Date" />
        </Columns>
    </asp:GridView>

</asp:Content>

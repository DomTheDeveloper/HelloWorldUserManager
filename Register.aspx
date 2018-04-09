<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HelloWorldManager.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table>
        <tr>
            <td>
                <asp:RequiredFieldValidator runat="server" CssClass="errorMessage"
                    ControlToValidate="txtFirstName" ID="rfdFirstName"
                    ErrorMessage="*" />
                First Name
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtFirstName" MaxLength="150" />
            </td>
        </tr>

        <tr>
            <td>
                <asp:RequiredFieldValidator runat="server" CssClass="errorMessage"
                    ControlToValidate="txtLastName"  ID="rfdLastName"
                    ErrorMessage="*" />
                Last Name
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtLastName" MaxLength="150" />
            </td>
        </tr>

        <tr>
            <td>
                <asp:RequiredFieldValidator runat="server" CssClass="errorMessage"
                    ControlToValidate="txtAddress1" ID="rfdAddress1"
                    ErrorMessage="*" />
                Address 1
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtAddress1" MaxLength="150" />
            </td>
        </tr>

        <tr>
            <td>
                &nbsp;
                Address 2
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtAddress2" MaxLength="150" />
            </td>
        </tr>

        <tr>
            <td>
                <asp:RequiredFieldValidator runat="server" CssClass="errorMessage"
                    ControlToValidate="txtCity" ID="rfdCity"
                    ErrorMessage="*" />
                City
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtCity" />
            </td>
        </tr>

        <tr>
            <td>
                <asp:RequiredFieldValidator runat="server" CssClass="errorMessage"
                    ControlToValidate="ddlState" ID="rfdState"
                    ErrorMessage="*" InitialValue="-1" />
                State
            </td>
            <td>
                <asp:DropDownList ID="ddlState" runat="server">
	                <asp:ListItem Value="-1">No selection</asp:ListItem>
	                <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                <asp:ListItem Value="CA">California</asp:ListItem>
	                <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                <asp:ListItem Value="FL">Florida</asp:ListItem>
	                <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                <asp:ListItem Value="ME">Maine</asp:ListItem>
	                <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                <asp:ListItem Value="MT">Montana</asp:ListItem>
	                <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                <asp:ListItem Value="NY">New York</asp:ListItem>
	                <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                <asp:ListItem Value="TX">Texas</asp:ListItem>
	                <asp:ListItem Value="UT">Utah</asp:ListItem>
	                <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                <asp:ListItem Value="WA">Washington</asp:ListItem>
	                <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>
                <asp:RequiredFieldValidator runat="server" CssClass="errorMessage"
                    ControlToValidate="txtZip" ID="rfdZip"
                    ErrorMessage="*" />
                Zip
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtZip" MaxLength="9" />
                    <asp:RegularExpressionValidator CssClass="errorMessage"
                        ControlToValidate="txtZip" runat="server"
                        ErrorMessage="Invalid zip code" ID="rxvZip"
                        ValidationExpression="^\d{5}(\d{4})?$">
                    </asp:RegularExpressionValidator>
                
            </td>
        </tr>

        <tr>
            <td>
                <asp:RequiredFieldValidator runat="server" CssClass="errorMessage"
                    ControlToValidate="ddlCountry" InitialValue="-1" ID="rfdCountry"
                    ErrorMessage="*" />
                Country
            </td>
            <td>
                <asp:DropDownList runat="server" ID="ddlCountry">
                    <asp:ListItem Text="No selection" Value="-1" />
                    <asp:ListItem Text="United States" Value="US" />
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>

            </td>
            <td>
                <asp:Button runat="server" Text="Register" ID="btnRegister" OnClick="btnRegister_Click" />
            </td>
        </tr>
    </table>

</asp:Content>

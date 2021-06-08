<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<script runat="server">

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // 1- Create Connection Object

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename==|DataDirectory|midtermdatabase.mdf";Integrated Security = True";


            // 2- Create Insert statement
               <%@ Page Language="C#" %>
 string strInsert = String.Format("INSERT INTO Member VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", txtFirstName.Text, txtLastName.Text,rbGender.SelectedValue, txtEmail.Text, ddlMajor.Text, txtEmail.Text, txtStudentId.Text, txtPassword.Text,txtConfirmPassword.Text);


            // 3- Create SQL command
            SqlCommand cmdInsert = new SqlCommand(strInsert, conn);

            // 4- Open the database
            conn.Open();

            // 5- Execute the SQL Command
            cmdInsert.ExecuteNonQuery();

            // 6- Close the database
            conn.Close();


            lblMsg.Text = "Welcome " + txtFirstName.Text + " Your Account has been successfully created!!";
        }
    

    protected void btnClear_Click(object sender, EventArgs e)
    {

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtFirstName_TextChanged(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #00FFFF;
        }
        .auto-style2 {
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 191px;
            height: 26px;
        }
        .auto-style5 {
            height: 29px;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
            height: 69px;
        }
        .auto-style8 {
            height: 53px;
        }
        .auto-style9 {
            height: 26px;
            width: 234px;
        }
        .auto-style10 {
            width: 234px;
        }
        .auto-style11 {
            height: 29px;
            width: 234px;
        }
        .auto-style12 {
            height: 26px;
            width: 102px;
        }
        .auto-style13 {
            width: 102px;
        }
        .auto-style14 {
            height: 29px;
            width: 102px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style7" colspan="4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red" Text="Sign Up Form" BackColor="Aqua"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Blackadder ITC" Font-Size="Medium" ForeColor="Red" style="font-size: x-large" Text="Please fill in all fields then click on register:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtFirstName" runat="server" OnTextChanged="txtFirstName_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="fname" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Required Field" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid first name" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z])|([A-Z][a-z])" ControlToValidate="txtFirstName"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="fname0" runat="server" ControlToValidate="txtLastName" ErrorMessage="Required Field" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="invalid last name" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z])|([A-Z][a-z])" ControlToValidate="txtLastName"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:RadioButtonList ID="rbGender" runat="server" RepeatDirection="Horizontal" Width="208px">
                        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <br />
                    <span class="auto-style6">e.g. user@domain.com</span></td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="fname1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required Field" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblLastName4" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="fname3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Required Field" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="should be between 6 and 13" ValidationExpression="\w{6,13}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="fname4" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Required Field" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="4">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
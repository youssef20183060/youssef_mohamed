<%@ Page Language="C#"  %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>
<script runat="server">

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // 1- Create Connection Object
        SqlConnection conn = new SqlConnection();
       conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename==|DataDirectory|midtermdatabase.mdf";Integrated Security=True";

        // 2- Create SQL Select statement
        string strSelect = "SELECT * FROM Member "
            + " WHERE Username = '" + TextBox1.Text + "' AND Password = '"
            + TextBox2.Text + "'";

        // 3- Create SQL Select Command
        SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

        // 4- Create data reader object
        SqlDataReader reader;

        // 5- Open the database
        conn.Open();

        // 6- Execute Select command

        reader = cmdSelect.ExecuteReader();

        if (reader.Read())
            lblMsg.Text = "User Found !!!";
            else
            lblMsg.Text = "User Not Found !!!";

        // 7- close the database
        conn.Close();

    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 251px;
        }
        .auto-style3 {
            width: 251px;
            height: 43px;
        }
        .auto-style4 {
            height: 43px;
        }
        .auto-style5 {
            width: 251px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" BackColor="White" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red" Text="Sign in form"></asp:Label>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" id="account id">
                        <asp:Label ID="accountid" runat="server" Font-Size="Large" Text="Account ID" ForeColor="Blue"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Password" ForeColor="Blue"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="login" runat="server" Text="Login" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

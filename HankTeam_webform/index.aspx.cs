using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string gerconfig = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection Connection = new SqlConnection(gerconfig);
        SqlCommand command = new SqlCommand("INSERT INTO testTable(user_name,user_age,user_date) VALUES(@TextBox_name,@TextBox_age,@TextBox_date)", Connection);
        
        command.Parameters.Add("@TextBox_name",SqlDbType.NVarChar);
        command.Parameters["@TextBox_name"].Value = TextBox_name.Text;
        command.Parameters.Add("@TextBox_age", SqlDbType.NVarChar);
        command.Parameters["@TextBox_age"].Value = TextBox_age.Text;
        command.Parameters.Add("@TextBox_date", SqlDbType.NVarChar);
        command.Parameters["@TextBox_date"].Value = TextBox_date.Text;
        Connection.Open();
        command.ExecuteNonQuery();
        Connection.Close();
        Response.Write("<Script language='Javascript'>alert('新增成功') </Script > ");
        Response.AddHeader("Refresh", "0");
    }
}
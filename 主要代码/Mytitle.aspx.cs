using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace WebApplicationFinal_LJY
{
    public partial class Mytitle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        protected string getSelectString_mytitle()
        //将用户填写的姓名拼凑成查询语句
        {
            string msg1 = Session["username"].ToString();

            return "select 称号 from 用户 where 姓名='"+msg1+"'";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=d:\Users\LJY\source\repos\WebApplicationFinal_LJY\App_Data\Northwind.mdf;Integrated Security=True";

            SqlConnection connection = new SqlConnection(cs);
            SqlCommand command = connection.CreateCommand();
            command.CommandText = getSelectString_mytitle();
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                reader.Read();
                Label1.Text = reader[0].ToString();
            }
            catch { }
            finally
            {
                connection.Close();
            }
        }
    }
}
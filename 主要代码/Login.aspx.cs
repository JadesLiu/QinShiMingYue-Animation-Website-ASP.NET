using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Windows.Forms;
namespace WebApplicationFinal_LJY
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }
        protected string getSelectString()
        //将用户填写的姓名，密码拼凑成查询语句
        {
            string msg1 = TextBox1.Text.ToString();
            string msg2 = TextBox2.Text.ToString();
            return "select 识别字符串 from 用户 where 姓名='" + msg1 + "'and 密码='" + msg2 + "'";
        }

        protected void Button1_Click(object sender, EventArgs e)
        //登录按钮点击后，将第一个文本框与第二个文本框的值送入查询语句中，若在数据库中查询出相应的行(HasRows)，则表示用户存在且密码正确，否则登录失败
        {
            string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=d:\Users\LJY\source\repos\WebApplicationFinal_LJY\App_Data\Northwind.mdf;Integrated Security=True";

            SqlConnection connection = new SqlConnection(cs);
            SqlCommand command = connection.CreateCommand();
            command.CommandText = getSelectString();

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                reader.Read();

                if (reader.HasRows)
                //由于数据库中设置了标志字符串，所以有查询结果即表示用户存在
                {
                    string text = reader[0].ToString();
                    MessageBox.Show("登录成功！");
                    Label1.Text = "秦迷" + TextBox1.Text.ToString()+"，欢迎回来~我们等你很久了！";
                    Session["username"] = TextBox1.Text.ToString();
                }
                else{
                //没有结果表示用户名不存在或密码错误
                    MessageBox.Show("用户名不存在或密码不正确，请重试或注册！");                  
                }
            }
            catch { }
            finally
            {
                connection.Close();
            }
        }
    }
}
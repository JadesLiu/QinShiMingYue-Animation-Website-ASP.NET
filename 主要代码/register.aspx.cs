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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected string getValue()
        //将六个信息整合并加入换行符成为一个字符串
        {
            string msg1 = "姓名：" + TextBox1.Text + "\n";
            string msg2 = "密码：" + TextBox5.Text + "\n";
            string msg3 = "性别：" + RadioButtonList1.SelectedValue + "\n";
            string msg4 = "生日：" + TextBox2.Text + "\n";
            string msg5 = "出生地：" + TextBox3.Text + "\n";
            string msg6 = "联系电话：" + TextBox4.Text + "\n";

            return msg1 + msg2 + msg3 + msg4 + msg5 + msg6;
        }

        protected string getSqlString()
        //将用户填写的数据的字符串拼凑起来成为一个插入查询语句
        {
            string msg1 = TextBox1.Text.ToString();
            string msg2 = TextBox5.Text.ToString();
            string msg3 = RadioButtonList1.SelectedValue.ToString();
            string msg4 = TextBox2.Text;
            string msg5 = TextBox3.Text.ToString();
            string msg6 = TextBox4.Text;
            string msg7 = msg1 + msg2;
            return "insert into 用户 Values('"+ msg1 + "','"+ msg2 + "','" + msg3 + "','" + msg4 + "','" + msg5 + "'," + msg6 +",'"+msg7+"','暂无')";
        }
        protected void Button1_Click(object sender, EventArgs e)
        //确认提示框，第一个显示内容，第二个提示框标题
        {
            DialogResult result = MessageBox.Show(getValue(), "请确认信息", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);

            string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=d:\Users\LJY\source\repos\WebApplicationFinal_LJY\App_Data\Northwind.mdf;Integrated Security=True";

            SqlConnection connection = new SqlConnection(cs);
            SqlCommand command = connection.CreateCommand();
            command.CommandText = getSqlString();
            try
            {
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch { }
            finally
            {
                connection.Close();
            }
            MessageBox.Show("提交成功！");

        }


    }
}
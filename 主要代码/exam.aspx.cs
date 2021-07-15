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
    public partial class exam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected string Total_score()
        //使用convert把得到的value由字符串转换为int，后计算值*20
        {
            int score = 0;
            score = 10 * (Convert.ToInt32(RadioButtonList1.SelectedValue) + Convert.ToInt32(RadioButtonList2.SelectedValue) + Convert.ToInt32(RadioButtonList3.SelectedValue) + Convert.ToInt32(RadioButtonList4.SelectedValue) + Convert.ToInt32(RadioButtonList5.SelectedValue) + Convert.ToInt32(RadioButtonList6.SelectedValue) +Convert.ToInt32(RadioButtonList7.SelectedValue) +Convert.ToInt32(RadioButtonList8.SelectedValue) +Convert.ToInt32(RadioButtonList9.SelectedValue) +Convert.ToInt32(RadioButtonList10.SelectedValue));
            return score.ToString();
        }
        protected string getValue()
        //使用convert把得到的value由字符串转换为int，判断是否为0，若为0，则表示选项错误，1表示选项正确
        {
            string msg1 = "第一题：" + ((Convert.ToInt32(RadioButtonList1.SelectedValue) == 0) ? "错误" : "正确") + "\n";
            string msg2 = "第二题：" + ((Convert.ToInt32(RadioButtonList2.SelectedValue) == 0) ? "错误" : "正确") + "\n";
            string msg3 = "第三题：" + ((Convert.ToInt32(RadioButtonList3.SelectedValue) == 0) ? "错误" : "正确") + "\n";
            string msg4 = "第四题：" + ((Convert.ToInt32(RadioButtonList4.SelectedValue) == 0) ? "错误" : "正确") + "\n";
            string msg5 = "第五题：" + ((Convert.ToInt32(RadioButtonList5.SelectedValue) == 0) ? "错误" : "正确") + "\n";
            string msg6 = "第六题：" + ((Convert.ToInt32(RadioButtonList6.SelectedValue) == 0) ? "错误" : "正确") + "\n";
            string msg7 = "第七题：" + ((Convert.ToInt32(RadioButtonList7.SelectedValue) == 0) ? "错误" : "正确") + "\n";
            string msg8 = "第八题：" + ((Convert.ToInt32(RadioButtonList8.SelectedValue) == 0) ? "错误" : "正确") + "\n";
            string msg9 = "第九题：" + ((Convert.ToInt32(RadioButtonList9.SelectedValue) == 0) ? "错误" : "正确") + "\n";
            string msg10 = "第十题：" + ((Convert.ToInt32(RadioButtonList10.SelectedValue) == 0) ? "错误" : "正确") + "\n";

            return msg1 + msg2 + msg3 + msg4 + msg5 + msg6 + msg7 + msg8 + msg9 + msg10;
        }
        protected void Button1_Click(object sender, EventArgs e)
        //确认提示框，第一个显示内容，第二个提示框标题
        {
            DialogResult result = MessageBox.Show(getValue(), "请查看答案", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);
            MessageBox.Show("评分标准：\n 90—100分——达人秦迷\n 75—89分——活跃秦迷\n 60—74分——见习秦迷\n 60分以下——菜鸟秦迷");
            MessageBox.Show("你的分数为：" + Total_score());
            MessageBox.Show("恭喜你，成为了：" + Score_level(Convert.ToInt32(Total_score())) + "!");
            
            string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=d:\Users\LJY\source\repos\WebApplicationFinal_LJY\App_Data\Northwind.mdf;Integrated Security=True";

            SqlConnection connection = new SqlConnection(cs);
            SqlCommand command = connection.CreateCommand();
            command.CommandText = getUpdateString();
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
            MessageBox.Show("你的称号已经修改啦，请到“我的称号”中查看！");
        }
        protected string getUpdateString()
        //将用户填写的姓名，密码拼凑成查询语句
        {
            string msg1 = Session["username"].ToString();
            
            return "Update 用户 set 称号='"+ Score_level(Convert.ToInt32(Total_score()))+"'where 姓名='" + msg1 + "'";
        }
        protected string Score_level(int score)
        {
            if (score >= 90)
                return "达人秦迷";
            else if (score >= 75 && score < 90)
                return "活跃秦迷";
            else if (score >= 60 && score < 75)
                return "见习秦迷";
            else
                return "菜鸟秦迷";
        }
    }
}
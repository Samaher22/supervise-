using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supervise_
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["supervise"].ConnectionString); //to connect with db
        SqlCommand comm, comm1,comm2 ;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String q = "select name from [user] where email=@un";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", TextBox2.Text);
            conn.Open();
            object res = comm.ExecuteScalar();
            if (res == null)
            {

                String q1 = "insert into [user] values(@name,@email,@pass,@phno,@utype)";
                comm1 = new SqlCommand(q1, conn);
                comm1.Parameters.AddWithValue("@name", Name1.Text);
                comm1.Parameters.AddWithValue("@email", TextBox2.Text);
                comm1.Parameters.AddWithValue("@pass", TextBox3.Text);
                comm1.Parameters.AddWithValue("@phno", TextBox5.Text);
                comm1.Parameters.AddWithValue("@utype", "student");
                int res1 = comm1.ExecuteNonQuery();
                if (res1 == 1)
                {
                String q2 = "insert into student values(@id,@name,@phno,@email,@gn,@gpa,@cmp,@web,@pm)";
                comm2 = new SqlCommand(q2, conn);
                comm2.Parameters.AddWithValue("@id", TextBox6.Text);
                comm2.Parameters.AddWithValue("@name", Name1.Text);
                comm2.Parameters.AddWithValue("@phno", TextBox5.Text);
                comm2.Parameters.AddWithValue("@email", TextBox2.Text);
                comm2.Parameters.AddWithValue("@gn", RadioButtonList4.SelectedValue.ToString());
                comm2.Parameters.AddWithValue("@gpa", Convert.ToDecimal(TextBox7.Text));
                comm2.Parameters.AddWithValue("@cmp", RadioButtonList1.SelectedValue.ToString());
                comm2.Parameters.AddWithValue("@web", RadioButtonList2.SelectedValue.ToString());
                comm2.Parameters.AddWithValue("@pm", RadioButtonList3.SelectedValue.ToString());
                int res2 = comm2.ExecuteNonQuery();
                conn.Close();
                    if(res2 == 1) { 
                    Label1.Text = "Thanks for signing up, please login";
                    }
                    else
                    { 
                        Label1.Text = "Error while inserting into student table, try again";
                    }
                }
                else
                {
                    Label1.Text = "Error while  inserting into user table signing up, try again";
                }
            }

            else
            {
                Label1.Text = "User Already available";
            }
        }
    }
}
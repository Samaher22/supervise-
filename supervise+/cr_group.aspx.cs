using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace supervise_
{
    public partial class cr_group : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["supervise"].ConnectionString); //to connect with db
        SqlCommand comm, comm1, comm2;//to execute query

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String q = "select pj_title from [Group] where student_gh= @un";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", Session["n"].ToString());
            conn.Open();
            object res = comm.ExecuteScalar();
            if (res == null)
            {

                String q1 = "insert into [group] (year,pj_title,pj_scope,pj_descrp,pj_idea,student_gh,status) values(@year,@title,@scope,@descrp,@idea,@student,@status)";
                comm1 = new SqlCommand(q1, conn);
                comm1.Parameters.AddWithValue("@year", DateTime.Now.Year.ToString());
                comm1.Parameters.AddWithValue("@title", TextBox1.Text);
                comm1.Parameters.AddWithValue("@scope", TextBox3.Text);
                comm1.Parameters.AddWithValue("@descrp", TextBox4.Text);
                comm1.Parameters.AddWithValue("@idea", TextBox2.Text);
                comm1.Parameters.AddWithValue("@student", Session["n"].ToString());
                comm1.Parameters.AddWithValue("@status", "send a request to a supervisor");
                int res1 = comm1.ExecuteNonQuery();
                if (res1 == 1)
                {
                   
                        Label1.Text = "the group is created";
                    
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
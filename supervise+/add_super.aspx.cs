using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supervise_
{
    public partial class add_super : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["supervise"].ConnectionString); //to connect with db
        SqlCommand comm, comm1, comm2;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String q = "select name from [user] where email=@un";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", email1.Text);
            conn.Open();
            object res = comm.ExecuteScalar();
            if (res == null)
            {

                String q1 = "insert into [user] values(@name,@email,@pass,@phno,@utype)";
                comm1 = new SqlCommand(q1, conn);
                comm1.Parameters.AddWithValue("@name", Name1.Text);
                comm1.Parameters.AddWithValue("@email", email1.Text);
                comm1.Parameters.AddWithValue("@pass", pass.Text);
                comm1.Parameters.AddWithValue("@phno", phone.Text);
                comm1.Parameters.AddWithValue("@utype", "supervise");
                int res1 = comm1.ExecuteNonQuery();
                if (res1 == 1)
                {
                    String q2 = "insert into supervisor values(@name,@email,@phno,@year,@count,@back,@int,@rank,@gn)";
                    comm2 = new SqlCommand(q2, conn);
                    comm2.Parameters.AddWithValue("@name", Name1.Text);
                    comm2.Parameters.AddWithValue("@email", email1.Text);
                    comm2.Parameters.AddWithValue("@phno", phone.Text);
                    comm2.Parameters.AddWithValue("@year", DateTime.Now.Year.ToString());
                    comm2.Parameters.AddWithValue("@count", Convert.ToInt64(count.Text));
                    comm2.Parameters.AddWithValue("@back", bg1.Text);
                    comm2.Parameters.AddWithValue("@int",int1.Text );
                    comm2.Parameters.AddWithValue("@rank", rank.Text);
                    comm2.Parameters.AddWithValue("@gn", gender.SelectedValue.ToString());
                    int res2 = comm2.ExecuteNonQuery();
                    conn.Close();
                    if (res2 == 1)
                    {
                        Label1.Text = "Supervise added successfully, please login";
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
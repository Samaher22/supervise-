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
    public partial class send_req : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["supervise"].ConnectionString); //to connect with db
        SqlCommand comm, comm1;//to execute query
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String q = "select pj_title from [group] where sup_Id=@un";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@un", DropDownList1.SelectedValue);
            conn.Open();
            object res = comm.ExecuteScalar();
            if (res == null)
            {

                String q1 = "UPDATE [Group] SET sup_id = @id, status =@status WHERE  student_gh = @name";
                comm1 = new SqlCommand(q1, conn);
                comm1.Parameters.AddWithValue("@id", DropDownList1.SelectedValue);
                comm1.Parameters.AddWithValue("@status", "Under Processing");
                comm1.Parameters.AddWithValue("@name", Session["n"].ToString());
                int res1 = comm1.ExecuteNonQuery();
                if (res1 == 1)
                {

                    Label1.Text = "the request is sended successfull";
                }
                else
                {
                    Label1.Text = "Error while  inserting into user table signing up, try again";
                }
            }

            else
            {
                Label1.Text = "the request is Already available";
            }
        }
    }
    
}
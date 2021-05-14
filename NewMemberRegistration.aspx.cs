using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace WAPP
{
    public partial class NewMemberRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddCont_Btn_Click(object sender, EventArgs e)
        {
            
            try
            {
            con.Open();
            string query = "INSERT INTO memberdetail (member_name, member_phone, member_email, member_address, member_gender, member_dob) values (@member_name, @member_phone, @member_email, @member_address, @member_gender, @member_dob)";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@member_name", member_name.Text);
            cmd.Parameters.AddWithValue("@member_phone", member_phone.Text);
            cmd.Parameters.AddWithValue("@member_email", member_email.Text);
            cmd.Parameters.AddWithValue("@member_address", member_address.Text);
            cmd.Parameters.AddWithValue("@member_gender", member_gender.Text);
            cmd.Parameters.AddWithValue("@member_dob", member_dob.Text);

            cmd.ExecuteNonQuery();

            Response.Redirect("displayRegisteredMember.aspx");
            con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }

        }



    }
}
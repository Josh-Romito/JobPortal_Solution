using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divOutput.Visible = false;
            divForm.Visible = true;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            litValueFullName.Text = "<strong>Full Name: </strong>" + tbFullName.Text;
            litValueAge.Text = "<strong>Age: </strong>" + tbAge.Text;
            litValueGender.Text = "<strong>Gender: </strong>" + rblGender.SelectedValue;
            litValueNationality.Text = "<strong>Nationality: </strong>" + tbNationality.Text;
            litValueDomain.Text = "<strong>Domain: </strong>" + ddlDomain.SelectedValue;
            litValueExperience.Text = "<strong>Experience: </strong>" + tbExperience.Text;
            litValueDegree.Text = "<strong>Degree: </strong>" + tbDegree.Text;

            if (cbRelocation.Checked)
            {
                litValueRelocation.Text = "<strong>Relocation: </strong>" + "Yes";
            }
            else
            {
                litValueRelocation.Text = "<strong>Relocation: </strong>" + "No";
            }

            litValueObjective.Text = "<strong>Objective: </strong>" + tbObjective.Text;

            if (fileResume.PostedFile != null && fileResume.PostedFile.ContentLength > 0)
            {
                string[] fileNameParts = fileResume.PostedFile.FileName.Split("\\".ToCharArray());
                fileResume.SaveAs(Server.MapPath("~/Uploads/" + fileNameParts[fileNameParts.Length - 1]));
                litValueResume.Text = "<strong>Resume: </strong>" + fileNameParts[fileNameParts.Length - 1] + " was uploaded successfully.";
            }
            else
            {
                litValueResume.Text = "<strong>Resume: </strong>" + "No resume was uploaded.";  
            }

            divForm.Visible = false;
            divOutput.Visible = true;
        }
    }
}
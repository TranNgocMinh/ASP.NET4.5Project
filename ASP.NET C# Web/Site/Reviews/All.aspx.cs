using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ngocminhtranModel;
public partial class Reviews_All : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (ngocminhtranEntities myEntities = new ngocminhtranEntities())
        {
            var authorizedReviews = from review in myEntities.Reviews
                                    where review.Authorized == true
                                    orderby review.CreateDateTime descending
                                    select review;
            GridView1.DataSource = authorizedReviews;
            GridView1.DataBind();
        }
    }
}
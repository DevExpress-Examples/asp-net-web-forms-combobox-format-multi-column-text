using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page {

    protected void ASPxRadioButtonList1_SelectedIndexChanged(object sender, EventArgs e) {
        if (ASPxRadioButtonList1.SelectedIndex == 0) { 
            ASPxComboBox1.TextFormatString = "{0} {1}, {2} Company";   
        }
        if (ASPxRadioButtonList1.SelectedIndex == 1) { 
            ASPxComboBox1.TextFormatString = "{1} {0}, {2} Company";
        }      
    }
}

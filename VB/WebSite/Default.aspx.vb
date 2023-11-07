Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub ASPxRadioButtonList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
		If ASPxRadioButtonList1.SelectedIndex = 0 Then
			ASPxComboBox1.TextFormatString = "{0} {1}, {2} Company"
		End If
		If ASPxRadioButtonList1.SelectedIndex = 1 Then
			ASPxComboBox1.TextFormatString = "{1} {0}, {2} Company"
		End If
	End Sub
End Class

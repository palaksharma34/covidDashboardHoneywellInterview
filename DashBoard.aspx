<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="CovidDashboardHoneyWell.ASPX.DashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Covid Dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grdCovidData"
                runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="Data as on" HeaderStyle-Width="6%">
                        <ItemTemplate>
                            <%# Eval("dtDataAddedOn")%>
                        </ItemTemplate>
                        <HeaderStyle Width="6%"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Location" HeaderStyle-Width="6%">
                        <ItemTemplate>
                            <%# Eval("txtLocation")%>
                        </ItemTemplate>
                        <HeaderStyle Width="6%"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cases" HeaderStyle-Width="6%">
                        <ItemTemplate>
                            <%# Eval("intNoOfCases")%>
                        </ItemTemplate>
                        <HeaderStyle Width="6%"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Recovered" HeaderStyle-Width="6%">
                        <ItemTemplate>
                            <%# Eval("intNoOfCured")%>
                        </ItemTemplate>
                        <HeaderStyle Width="6%"></HeaderStyle>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div>
            <label id="lblTopCases" text="Top 3 Cases" runat="server" visible="true"></label>
        </div>
    </form>
</body>
</html>

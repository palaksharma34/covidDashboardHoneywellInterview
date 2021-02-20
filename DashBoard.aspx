<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="CovidDashboardHoneyWell.ASPX.DashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Covid Dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" CssClass="tooltipContent" BackColor="#FFFFFF"
                Style="display: block; margin: 0px 0px 0px 10px; border: 2px solid #999; width: 220px;">

                <asp:GridView ID="grdCovidData"
                    runat="server" Height="169px" style="margin-bottom: 0px">
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
            </asp:Panel>
        </div>
        </br>
        <div>
            <label id="lblTopCases" text="Highest Cases In:" runat="server" style="cursor: pointer; color: rgb(64,152,254); text-decoration: underline" visible="true"></label>
            </br>

            <asp:Panel ID="pnlTpCases" runat="server" CssClass="tooltipContent" BackColor="#FFFFFF"
                Style="display: block; margin: 0px 0px 0px 10px; border: 2px solid #999; width: 220px;">
                <div id="div13" runat="server">
                    <asp:Label ID="lblTopData1" runat="server" Font-Bold="true" Font-Italic="true" ForeColor="#0084ff"></asp:Label>
                    <br></br>
                    <asp:Label ID="lblTopData2" runat="server" Font-Bold="true" Font-Italic="true" ForeColor="#0084ff"></asp:Label>
                    <br></br>
                    <asp:Label ID="lblTopData3" runat="server" Font-Bold="true" Font-Italic="true" ForeColor="#0084ff"></asp:Label>
                    <br></br>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>

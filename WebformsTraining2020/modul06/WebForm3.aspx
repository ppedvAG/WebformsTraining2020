﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebformsTraining2020.modul06.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <label>Suchbegriff PLZ/Ort</label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>
                <div class="col">
                    <asp:Button ID="Button1" OnClick="Button1_Click"
                        CssClass="btn btn-outline-primary"
                        runat="server" Text="suchen" />

                </div>
            </div>
            <div class="row">
                <div class="col">
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-primary">Suchergebnisse</li>
                        <%foreach (var item in Liste)
                            {%>
                        <li class="list-group-item">
                            <h5><%=item.Ort %><span class="badge badge-secondary float-right">
                                <%=item.PLZ %>
                            </span></h5>

                        </li>
                        <% } %>
                    </ul>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

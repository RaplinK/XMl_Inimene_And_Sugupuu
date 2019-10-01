<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="XML_inimene_Konstantinov.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inimeste leht</title>
</head>
<body>
    <h1>XML ja XSLT funktsioonide kasutamine</h1>
    <form id="form1" runat="server">
        <div>
            <asp:xml id="xml4" runat="server" documentsource="~/sugupuu.xml" transformsource="~/forsugupuu.xslt" />
            <pre>
            <asp:xml id="xml5" runat="server" documentsource="~/sugupuu.xml" transformsource="~/forsugupuu2.xslt" />
            </pre>
            <br />
            Otsitav tekst
            <asp:TextBox ID="kast1" runat="server"/>
            <asp:Button runat="server" Text="Sisesta"/>
        </div>
    </form>
</body>
</html>

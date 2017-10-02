<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="PageSon.aspx.cs" Inherits="BanSacVietPro.Page.PageSon" EnableEventValidation="false" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 74px;
        }
    html {
      overflow-y: scroll;
    }

    input, textarea {
      font-size: 12px;
      margin-top: -4px;
      padding: 5px 10px 5px ;
      background: none;
      background-color:#ebebeb;
      color: #62717A;
      border-radius: 3px;
    }
.btnSee {
  width:100px;
  border: none;
  display: block;
  text-align: center;
  cursor: pointer;
  text-transform: uppercase;
  outline: none;
  overflow: hidden;
  position: relative;
  color: #fff;
  font-weight: 700;
  font-size: 15px;
  background-color: #222;
  padding: 17px 60px;
  margin: 0 0 0 auto;
  box-shadow: 0 5px 15px rgba(0,0,0,0.20);
    text-decoration: none;
}
 
.btnSee .Seemore {
  position: relative; 
  z-index: 1;
}
 
.btnSee:after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  height: 490%;
  width: 140%;
  background: #78c7d2;
  -webkit-transition: all .5s ease-in-out;
  transition: all .5s ease-in-out;
  -webkit-transform: translateX(-98%) translateY(-25%) rotate(45deg);
  transform: translateX(-98%) translateY(-25%) rotate(45deg);
}
 
.btnSee:hover:after {
  -webkit-transform: translateX(-9%) translateY(-25%) rotate(45deg);
  transform: translateX(-9%) translateY(-25%) rotate(45deg);
}

/***********************/
#p{
    margin-top:50px;
}
.title{
    font-size:15pt;
}
.IMG{
}
.Mota{
    vertical-align:text-top;
}
        .auto-style2 {
            height: 74px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="IDTuor" DataSourceID="SqlDataSource1" ForeColor="#333333" OnItemCommand="DataList1_ItemCommand" Width="100%">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
            <table class="bootstrap" cellpadding="20px">
                <tr>
                    <td class="auto-style1">
                          <asp:LinkButton ID="LinkButton2" CssClass="IMG" runat="server" CommandName="DatTour"  CommandArgument='<%# Eval("IDTuor") %>'><asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# "../img/"+Eval("Hinh") %>' Width="300px" /></asp:LinkButton>
                        <br />
                        <asp:Label ID="Label3" CssClass="title" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" CssClass="Mota" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                        <br />
                        <asp:LinkButton ID="LinkButton1" CssClass="btnSee" runat="server" CommandName="DatTour" CommandArgument='<%# Eval("IDTuor") %>'>
                            <asp:Label ID="Label1" CssClass="Seemore" runat="server" Text="Label">See More...</asp:Label></asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TuorConnectionString3 %>" SelectCommand="SELECT t.IDTuor, t.LoaiTuor, t.Vung, t.Title, t.Hinh, t.MoTa, t.Gia, t.DiaDiem, t.TGBD, t.TGKT, t.SoCho, t.Page, lv.Vung AS lVung, lv.LoaiTuor AS LLoaiTour, lv.Mota AS LMota, lv.HinhAnh FROM Tuor AS t INNER JOIN LoaiVung AS lv ON t.Vung = lv.Vung WHERE (t.Vung = @Vung)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Vung" QueryStringField="id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div _designerregion="0">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

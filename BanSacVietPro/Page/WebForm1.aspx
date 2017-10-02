<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Miennam.aspx.cs" Inherits="BanSacVietPro.Page.Miennam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
}

/***********************/
#box{
    width:100%;
    margin-top:100px;
    padding-bottom:150px;
	background-image:url(../img/room.jpg);
	background-size:cover;
	text-align:center;
    float:left;
}
.item{
    width:100%;
    float:left;
}
.title{
    font-size:35pt;
    padding-top:50px;
    padding-bottom:50px;
}

.img{
    padding-top:50px;
    width:350px;
    text-align:center;
    border-right:2px solid white;
    float:left;
}

.info{
    padding:50px 50px 0 50px;
    margin-left:350px;
}
#p{
    margin-top:50px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <article id="box">
        <div class="title">Miền Nam</div>
         <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="100%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
             <AlternatingItemStyle BackColor="White" />
             <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
             <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
             <ItemTemplate>
                 <div class="item">
                      <div class="img">  
                 <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../img/miennam/dalat/" +Eval("anhTour") %>' height="200" width="300px" />
                 <hr />
                 tenTour:
                 <asp:Label ID="tenTourLabel" runat="server" Text='<%# Eval("tenTour") %>' />
                 </div>
                 <div class="info">
                 <br />
                 mota:
                 <asp:Label ID="motaLabel" runat="server" Text='<%# Eval("mota") %>' />
                 <br />
                <asp:HyperLink class="btnSee" runat="server">See More...</asp:HyperLink>
                
                 </div>
                 <br />
             </div>
             </ItemTemplate>
             <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
         </asp:DataList>
 
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanSacVietConnectionString %>" SelectCommand="SELECT [IDtour], [tenTour], [mota], [anhTour] FROM [Tour]"></asp:SqlDataSource>
    </article>
	</section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

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
 
.btnSee span {
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
    font-size:14pt;
    color:black;
    font-family:;
}
#p{
    margin-top:50px;
}
        .auto-style1 {
            left: 0px;
            top: 0px;
            width: 198px;
            height: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <article id="box">
        <div class="title">Miền Nam</div>
         <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" Width="100%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
             <AlternatingItemStyle BackColor="White" />
             <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
             <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
             <ItemTemplate>
                 <div class="item">
                      <div class="img">  
                 <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../img/miennam/dalat/" +Eval("Hinh") %>' height="200" width="300px" />
                 <hr />
                 <asp:Label ID="tenTourLabel" runat="server" Text='<%# Eval("Title") %>' />
                 </div>
                 <div class="info">
                 <br />
                 <asp:Label ID="motaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
                     <br />
                     
                 <br />
                 </div>
                     <asp:LinkButton class="btnSee" runat="server" href='<%# Eval("Page") %>'><span>see more</span></asp:LinkButton>
                 <br />
             </div>
             </ItemTemplate>
             <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
         </asp:DataList>
 
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TuorConnectionString2 %>" SelectCommand="SELECT * FROM [Tuor] WHERE ([Vung] LIKE '%' + @Vung + '%')">
             <SelectParameters>
                 <asp:QueryStringParameter Name="Vung" QueryStringField="id" Type="String" />
             </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
 
         <asp:SqlDataSource ID="BanSacViet" runat="server" ConnectionString="<%$ ConnectionStrings:TuorConnectionString %>" SelectCommand="SELECT [IDTuor], [LoaiTuor], [KhuVuc], [TenTour], [Title], [AnhTour], [Page] FROM [Tuor] WHERE ([KhuVuc] LIKE '%' + @KhuVuc + '%')">
             <SelectParameters>
                 <asp:Parameter DefaultValue="MienNam" Name="KhuVuc" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
 
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanSacVietConnectionString %>" SelectCommand="SELECT [IDtour], [tenTour], [anhTour], [mota], [Page] FROM [CTour] WHERE ([IDtour] LIKE '%' + @IDtour + '%')">
             <SelectParameters>
                 <asp:Parameter DefaultValue="MN" Name="IDtour" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
    </article>
	</section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

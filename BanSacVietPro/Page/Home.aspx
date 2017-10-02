<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BanSacVietPro.Page.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
$(document).ready(function() {
    $("#content").find("[id^='tab']").hide(); // Hide all content
    $("#tabs li:first").attr("id","current"); // Activate the first tab
    $("#content #tab1").fadeIn(); // Show first tab's content
     
    $('#tabs a').click(function(e) {
        e.preventDefault();
        if ($(this).closest("li").attr("id") == "current"){ //detection for current tab
         return;       
        }
        else{             
          $("#content").find("[id^='tab']").hide(); // Hide all content
          $("#tabs li").attr("id",""); //Reset id's
          $(this).parent().attr("id","current"); // Activate this
          $('#' + $(this).attr('name')).fadeIn(); // Show content for the current tab
        }
    });
});
    /*button*/
$(document).ready(function () {
    $('.submit').click(function () {
        $('button').html('');
        $('button').removeClass('submit');
        $('button').addClass('loader');
        setTimeout(function () {
            $('button').removeClass('loader');
            $('button').addClass('success');
            $('button').removeClass('submit');
            $('button').html('<i class="ion-checkmark-round"></i>');
        }, 2000);
    });
});
/***************/
</script>
<style>
/* tabsfolder*/
#tabs {
  overflow: hidden;
  width: 100%;
  margin: 0;
  padding: 0;
  list-style: none;
}
 
#tabs li {
  float: left;
  margin: 0 .5em 0 0;
}
 
#tabs a {
  position: relative;
  background: #ddd;
  background-image: linear-gradient(to bottom, #fff, #ddd);  
  padding: .7em 3.5em;
  float: left;
  text-decoration: none;
  color: #444;
  text-shadow: 0 1px 0 rgba(255,255,255,.8);
  border-radius: 5px 0 0 0;
  box-shadow: 0 2px 2px rgba(0,0,0,.4);
}
 
#tabs a:hover,
#tabs a:hover::after,
#tabs a:focus,
#tabs a:focus::after {
  background: #fff;
}
 
#tabs a:focus {
  outline: 0;
}
 
#tabs a::after {
  content:'';
  position:absolute;
  z-index: 1;
  top: 0;
  right: -.5em;  
  bottom: 0;
  width: 1em;
  background: #ddd;
  background-image: linear-gradient(to bottom, #fff, #ddd);  
  box-shadow: 2px 2px 2px rgba(0,0,0,.4);
  transform: skew(10deg);
  border-radius: 0 5px 0 0;  
}
 
#tabs #current a,
#tabs #current a::after {
  background: #fff;
  z-index: 3;
}
 
#content {
  background: #fff;
  padding: 2em;
  height: 220px;
  position: relative;
  z-index: 2; 
  border-radius: 0 5px 5px 5px;
  box-shadow: 0 -2px 3px -2px rgba(0, 0, 0, .5);
}#tabs {
  overflow: hidden;
  width: 100%;
  margin: 0;
  padding: 0;
  list-style: none;
}
 
#tabs li {
  float: left;
  margin: 0 .5em 0 0;
}
 
#tabs a {
  position: relative;
  background: #ddd;
  background-image: linear-gradient(to bottom, #fff, #ddd);  
  padding: .7em 3.5em;
  float: left;
  text-decoration: none;
  color: #444;
  text-shadow: 0 1px 0 rgba(255,255,255,.8);
  border-radius: 5px 0 0 0;
  box-shadow: 0 2px 2px rgba(0,0,0,.4);
}
 
#tabs a:hover,
#tabs a:hover::after,
#tabs a:focus,
#tabs a:focus::after {
  background: #fff;
}
 
#tabs a:focus {
  outline: 0;
}
 
#tabs a::after {
  content:'';
  position:absolute;
  z-index: 1;
  top: 0;
  right: -.5em;  
  bottom: 0;
  width: 1em;
  background: #ddd;
  background-image: linear-gradient(to bottom, #fff, #ddd);  
  box-shadow: 2px 2px 2px rgba(0,0,0,.4);
  transform: skew(10deg);
  border-radius: 0 5px 0 0;  
}
 
#tabs #current a,
#tabs #current a::after {
  background: #fff;
  z-index: 3;
}
 
#content {
  background: #fff;
  padding: 2em;
  height: auto;
  position: relative;
  z-index: 2; 
  border-radius: 0 5px 5px 5px;
  box-shadow: 0 -2px 3px -2px rgba(0, 0, 0, .5);
}
/**************/

        /* Form Login */
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
    /**********************/
    div.stars {
  width: 270px;
  display: inline-block;
}
 
input.star { display: none; }
label.star {
  float: right;
  padding: 10px;
  font-size: 36px;
  color: #444;
  transition: all .2s;
}
 
input.star:checked ~ label.star:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}
 
input.star-5:checked ~ label.star:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}
 
input.star-1:checked ~ label.star:before { color: #F62; }
 
label.star:hover { transform: rotate(-15deg) scale(1.3); }
 
label.star:before {
  content: '\f006';
  font-family: FontAwesome;
}
/**********************/
/* Select */
.dropdown {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.06)) repeat scroll 0 0 #F2F2F2;
    border-color: #FFFFFF #F7F7F7 #F5F5F5;
    border-image: none;
    border-radius: 3px;
    border-style: solid;
    border-width: 1px;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
    display: inline-block;
    height: 28px;
    overflow: hidden;
    position: relative;
    width: 150px;
}
.dropdown:before, .dropdown:after {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-color: #888888 rgba(0, 0, 0, 0);
    border-image: none;
    border-style: dashed;
    border-width: 4px;
    content: "";
    height: 0;
    pointer-events: none;
    position: absolute;
    right: 10px;
    top: 9px;
    width: 0;
    z-index: 2;
}
.dropdown:before {
    border-bottom-style: solid;
    border-top: medium none;
}
.dropdown:after {
    border-bottom: medium none;
    border-top-style: solid;
    margin-top: 7px;
}
.dropdown-select {
    background: none repeat scroll 0 0 rgba(0, 0, 0, 0) !important;
    border: 0 none;
    border-radius: 0;
    color: #62717A;
    font-size: 12px;
    height: 28px;
    line-height: 14px;
    margin: 0;
    padding: 6px 8px 6px 10px;
    position: relative;
    text-shadow: 0 1px #FFFFFF;
    width: 130%;
}
.dropdown-select:focus {
    color: #394349;
    outline: 2px solid #49AFF2;
    outline-offset: -2px;
    width: 100%;
    z-index: 3;
}
.dropdown-select > option {
    background: none repeat scroll 0 0 #F2F2F2;
    border-radius: 3px;
    cursor: pointer;
    margin: 3px;
    padding: 6px 8px;
    text-shadow: none;
}
/*********************/
/* button */
		@import url(https://fonts.googleapis.com/css?family=Montserrat:700);
		.submit{
			/* placing */
			display: block;
			margin-left: auto;
			margin-right: auto;
			/* end of placing */
			height: 60px;
			width: 150px;
			background-color: #FFF;
			border: 2px solid #1ECD97;
			border-radius: 50px;
			color: #1ECD97;
			font-size: 16px;
			font-family: Montserrat;
			transition: 0.4s;
			outline-style: none;
			cursor: pointer;
		}

		.submit:hover {
			background-color: #1ECD97;
			color: #FFF;
			transition: 0.4s;
		}

		.success {
			/* placing */
			margin-top: 150px;
			display: block;
			margin-left: auto;
			margin-right: auto;
			/* end of placing */
			height: 60px;
			width: 150px;
			background-color: #1ECD97;
			color: #FFF;
			border: 2px solid #1ECD97;
			border-radius: 50px;
			font-size: 16px;
			font-family: Montserrat;
			transition: 0.4s;
			outline-style: none;
			cursor: pointer;
		}

		.loader {
			/* placing */
			margin-top: 150px;
			display: block;
			margin-left: auto;
			margin-right: auto;
			/* end of placing */
			height: 60px;
			width: 60px;
			border-radius: 50%;
			background-color: transparent;
			border: 4px solid #eee;
			border-top: 4px solid #1ecd97;
			color: #FFF; /* Yes it's useless */
			outline-style: none;
			transform: rotate(360deg);
			transition: 0.6s;
		}

		i{
			font-size: 25px;
		}
/*****************************/
#SStar{
    background-color:black;
}
    .auto-style2 {
        text-align: center;
    }
.LBnt1{
    color:white;
  text-decoration: none;
}
.LBnt1:hover{
    color:white;
    font-weight:bold;
    text-decoration: none;
}
.LBnt2{
    color:black;
  text-decoration: none;
}
.LBnt2:hover{
    color:black;
    font-weight:bold;
    text-decoration: none;
}
.IMG1{
}
.IMG1:hover{
    opacity: 0.5;
}

.IMG2{
}
.IMG2:hover{
    opacity: 0.5;
}
    </style>





<section>
   	<article id="bootstrap">
			<div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:980px;height:380px;overflow:hidden;visibility:hidden;">
			<!-- Loading Screen -->
			<div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/spin.svg" />
			</div>
			<div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">
            <div>
                <img data-u="image" src="../img/011.jpg" />
            </div>
            <div>
                <img data-u="image" src="../img/012.jpg" />
            </div>
            <div>
                <img data-u="image" src="../img/013.jpg" />
            </div>
            <div>
                <img data-u="image" src="../img/014.jpg" />
            </div>
            <div>
                <img data-u="image" src="../img/015.jpg" />
            </div>
            <div>
                <img data-u="image" src="../img/016.jpg" />
            </div>
            <a data-u="any" href="https://www.jssor.com" style="display:none">slider in bootstrap</a>
			</div>
			<!-- Bullet Navigator -->
			<div data-u="navigator" class="jssorb053" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
            <div data-u="prototype" class="i" style="width:16px;height:16px;">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
            <path class="b" d="M11400,13800H4600c-1320,0-2400-1080-2400-2400V4600c0-1320,1080-2400,2400-2400h6800 c1320,0,2400,1080,2400,2400v6800C13800,12720,12720,13800,11400,13800z"></path>
            </svg>
            </div>
			</div>
			<!-- Arrow Navigator -->
			<div data-u="arrowleft" class="jssora093" style="width:50px;height:50px;top:0px;left:30px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <circle class="c" cx="8000" cy="8000" r="5920"></circle>
                <polyline class="a" points="7777.8,6080 5857.8,8000 7777.8,9920 "></polyline>
                <line class="a" x1="10142.2" y1="8000" x2="5857.8" y2="8000"></line>
            </svg>
        </div>
        <div data-u="arrowright" class="jssora093" style="width:50px;height:50px;top:0px;right:30px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <circle class="c" cx="8000" cy="8000" r="5920"></circle>
                <polyline class="a" points="8222.2,6080 10142.2,8000 8222.2,9920 "></polyline>
                <line class="a" x1="5857.8" y1="8000" x2="10142.2" y2="8000"></line>
            </svg>
        </div>
    </div>
    <script type="text/javascript">jssor_1_slider_init();</script>
    <!-- #endregion Jssor Slider End -->
		</article>
		<article id="check">
            <ul id="tabs">
                <li><a href="#" name="tab1">Tìm tour</a></li>
                <li><a href="#" name="tab2">Tìm Khách Sạn</a></li>
                <li><a href="#" name="tab3">Tìm Chuyến Bay</a></li>   
            </ul>
 
            <div id="content"> 
                <div id="tab1">
      
		<table id="search" Cellspacing="20px">
			<tr>
				<td>Nơi Khởi Hành</td>
				<td>Loại Tour</td>
				<td>Nơi Đến</td>
				<td>Ngày Khởi Hành</td>
				<td>Giá</td>
				<td rowspan="2">
					
						<button class="submit">Tìm Kiếm</button>
				</td>
			</tr>
			<tr>
				<td>
					<div class="dropdown">
					  <select name="Start" class="dropdown-select">
						<option value="">Select…</option>
						<option value="1">Hồ Chí Minh</option>
						<option value="2">Hà Nội</option>
						<option value="3">Vinh</option>
					  </select>
					</div>
				</td>
				<td>
					<div class="dropdown">
						<select name="Kind" class="dropdown-select">
							<option value="">Select…</option>
							<option value="1">Tour Trong Nước</option>
							<option value="2">Tour Ngoài Nước</option>
						</select>
					</div>
				</td>
				<td>
				<div class="dropdown">
						<select name="Final" class="dropdown-select">
							<option value="">Select…</option>
							<option value="1">nhớ xử lí JS</option>
							<option value="2">nhớ xử lí JS</option>
						</select>
					</div>
				</td>
				<td>
                  <input type="date"></td>
				<td>
					<div class="dropdown">
						<select name="Price" class="dropdown-select">
							<option value="">Select…</option>
							<option value="1">nhớ xử lí JS</option>
							<option value="2">nhớ xử lí JS</option>
						</select>
					</div>
				</td>
			</tr>
		</table>
	
            </div>
                <div id="tab2">...</div>
                <div id="tab3">...</div>
            </div>
		</article>
		<article style="margin-top:150px;">
        <div style="text-align:center;">
        <asp:Label ID="Label3" style="font-size:30pt;color:white;" runat="server" Text="Trong Nước"></asp:Label>
               <br />
           </div>
            <div class="auto-style2" style="text-align:center;padding-left:20px;">
            <asp:DataList ID="DataList2" runat="server" DataKeyField="Vung" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <table class="bootstrap" style="color:white;font-family:'Times New Roman';padding-left:80px;">
                        <tr>
                            <td>
                                 <asp:LinkButton ID="LinkButton2" runat="server" CommandName="See" CommandArgument='<%# Eval("Vung") %>' Font-Size="20pt" CssClass="IMG1"><asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# "../img/"+Eval("HinhAnh") %>' Width="300px" /></asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton" runat="server" CommandName="See"  Text='<%# Eval("Vung") %>' CommandArgument='<%# Eval("Vung") %>' Font-Size="20pt" CssClass="LBnt1"></asp:LinkButton>
                                <br />
                                <hr />
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Mota") %>' >

                                </asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                </asp:DataList>
		        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TuorConnectionString3 %>" SelectCommand="SELECT * FROM [LoaiVung] WHERE ([LoaiTuor] LIKE '%' + @LoaiTuor + '%')">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Trong nước" Name="LoaiTuor" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
		        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TuorConnectionString2 %>" SelectCommand="SELECT * FROM [LoaiVung] WHERE ([LoaiTuor] LIKE '%' + @LoaiTuor + '%')">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Nước ngoài" Name="LoaiTuor" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
		    </div>
		</article>
		<article id="see" style="margin-top:150px;">
             <div style="text-align:center;">
        <asp:Label ID="Label1" style="font-size:30pt;" runat="server" Text="Nước Ngoài"></asp:Label>
               <br />
           </div>
            <div class="auto-style3" style="text-align:center;padding-left:20px;" >
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Vung" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table class="bootstrap" style="font-family:'Times New Roman';padding-left:80px;">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="See" CommandArgument='<%# Eval("Vung") %>' Font-Size="20pt" CssClass="IMG2" ><asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# "../img/"+Eval("HinhAnh") %>' Width="300px" /></asp:LinkButton>
                                    <br />
                                    <asp:LinkButton ID="LinkButton" runat="server" CommandName="See" Text='<%# Eval("Vung") %>' CommandArgument='<%# Eval("Vung") %>' Font-Size="20pt" CssClass="LBnt2" ></asp:LinkButton>
                                    <br />
                                    <hr />
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Mota") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
			</div>
		</article>
    <article style="color:white;" id="SStar">
        <table>
            <form action="Thanks.aspx">
            <tr>
                <td> Rate US:</td>
                <td>
                    <div class="stars">
                    <input class="star star-5" id="star-5" type="radio" name="star"/>
                    <label class="star star-5" for="star-5"></label>
                    <input class="star star-4" id="star-4" type="radio" name="star"/>
                    <label class="star star-4" for="star-4"></label>
                    <input class="star star-3" id="star-3" type="radio" name="star"/>
                    <label class="star star-3" for="star-3"></label>
                    <input class="star star-2" id="star-2" type="radio" name="star"/>
                    <label class="star star-2" for="star-2"></label>
                    <input class="star star-1" id="star-1" type="radio" name="star"/>
                    <label class="star star-1" for="star-1"></label>
                    </div>    
                </td>
                <td><input type="submit" value="Rate" class="button-rate"></td>
            </tr>
            </form> 
        </table>
    </article>
	</section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

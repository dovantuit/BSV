<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="DatTour.aspx.cs" Inherits="BanSacVietPro.Page.DatTour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="IDTuor" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
            IDTuor:
            <asp:Label ID="IDTuorLabel" runat="server" Text='<%# Eval("IDTuor") %>' />
            <br />
            LoaiTuor:
            <asp:Label ID="LoaiTuorLabel" runat="server" Text='<%# Eval("LoaiTuor") %>' />
            <br />
            Vung:
            <asp:Label ID="VungLabel" runat="server" Text='<%# Eval("Vung") %>' />
            <br />
            Title:
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
            <br />
            Hinh:
            <asp:Label ID="HinhLabel" runat="server" Text='<%# Eval("Hinh") %>' />
            <br />
            MoTa:
            <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
            <br />
            Gia:
            <asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>' />
            <br />
            DiaDiem:
            <asp:Label ID="DiaDiemLabel" runat="server" Text='<%# Eval("DiaDiem") %>' />
            <br />
            TGBD:
            <asp:Label ID="TGBDLabel" runat="server" Text='<%# Eval("TGBD") %>' />
            <br />
            TGKT:
            <asp:Label ID="TGKTLabel" runat="server" Text='<%# Eval("TGKT") %>' />
            <br />
            SoCho:
            <asp:Label ID="SoChoLabel" runat="server" Text='<%# Eval("SoCho") %>' />
            <br />
            Page:
            <asp:Label ID="PageLabel" runat="server" Text='<%# Eval("Page") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TuorConnectionString3 %>" SelectCommand="SELECT * FROM [Tuor] WHERE ([IDTuor] = @IDTuor)">
        <SelectParameters>
            <asp:QueryStringParameter Name="IDTuor" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="mda-info clearfix">
    <div class="mda-info-img">
        <img src="../images/bandidau/images/CHÂU%20Á/Nhat%20Ban/Nhat%20ban%202017/tour-du-lich-nhat-ban-mua-la-do-gia-re-tu-sai-gon_du-lich-viet-450xx225.jpg" />
    </div>
    <h2><a href="#">Du Lịch Nhật Bản mùa lá đỏ 5 ngày giá tốt 2017 bay Cathay Pacific</a> </h2>
    <div class="mda-row">
        Mã tour:
    </div>
    <div class="mda-row">
        Thời gian: <span style="font-weight:bold">5 ngày</span>
    </div>
    <input id="total-all-hidden" type="hidden" value="29999000" />
    <div class="mda-row">
        Giá: <span id="total-all" style="font-weight:bold">29,999,000</span>đ</div>
    <div class="mda-row">
        Ngày khởi hành: <span style="font-weight:bold">21/11/2017</span> <a class="mda-day-other" href="https://dulichviet.com.vn/du-lich-nuoc-ngoai/du-lich-nhat-ban-mua-la-do-5-ngay-gia-tot-2017-bay-cathay-pacific">Ngày khác</a></div>
    <div class="mda-row">
        Nơi khởi hành: <span style="font-weight:bold">Hồ Chí Minh</span></div>
    <div class="mda-row">
        Số chỗ còn nhận: <span style="font-weight:bold">3</span></div>
    <span style="color:#B22222"><em>(***) Giá trên áp dụng cho vài chỗ đầu</em></span>
</div>
<div id="mda-guest-b" class="">
    <div class="form-group col-md-4">
        <label>
        HỌ TÊN *:<span id="bookNameError" class="error"></span></label>
        <input id="lname" class="form-control " data-error="#bookNameError" name="Name" type="text" />
    </div>
    <div class="form-group col-md-4">
        <label>
        Email*:<span id="bookEmailError" class="error"></span></label>
        <input id="email" class="user-email form-control " data-error="#bookEmailError" name="Mail" type="text" />
    </div>
    <div class="form-group col-md-4">
        <label>
        Số điện thoại *:<span id="bookPhoneError" class="error"></span></label>
        <input class="form-control numeric  " data-error="#bookPhoneError" name="Phone" type="text" />
    </div>
    <div class="form-group col-md-4">
        <label>
        Địa chỉ *:<span id="bookAddressError" class="error"></span></label>
        <input class=" form-control " data-error="#bookAddressError" name="AddressShow" type="text" />
    </div>
    <div class="form-group col-md-8">
        <label>
        Ghi chú:</label>
        <input id="fname" class="form-control" name="Note" type="text" />
    </div>
    <div class="form-group col-md-4">
        <label>
        Điểm khởi hành bạn muốn:</label>
        <select id="CityId" class="select2 col-md-3 form-control" name="CityId">
            <option value="1">Hồ Chí Minh</option>
            <option value="2">Hà Nội</option>
            <option value="3">An Giang</option>
            <option value="4">Bà Rịa - Vũng Tàu</option>
            <option value="5">Bắc Cạn</option>
            <option value="6">Bắc Giang</option>
            <option value="7">Bạc Liêu</option>
            <option value="8">Bắc Ninh</option>
            <option value="9">Bến Tre</option>
            <option value="10">Bình Định</option>
            <option value="11">Bình Dương</option>
            <option value="12">Bình Phước</option>
            <option value="13">Bình Thuận</option>
            <option value="14">Cà Mau</option>
            <option value="15">Cần Thơ</option>
            <option value="16">Cao Bằng</option>
            <option value="17">Đà Nẵng</option>
            <option value="18">Đắk Lắk</option>
            <option value="19">Đắk Nông</option>
            <option value="20">Điện Biên</option>
            <option value="21">Đồng Nai</option>
            <option value="22">Đồng Tháp</option>
            <option value="23">Gia Lai</option>
            <option value="24">Hà Giang</option>
            <option value="25">Hà Nam</option>
            <option value="26">Hà Tĩnh</option>
            <option value="27">Hải Dương</option>
            <option value="28">Hải Phòng</option>
            <option value="29">Hậu Giang</option>
            <option value="30">Hoà Bình</option>
            <option value="31">Hưng Yên</option>
            <option value="32">Khánh Hoà</option>
            <option value="33">Kiên Giang</option>
            <option value="34">Kon Tum</option>
            <option value="35">Lai Châu</option>
            <option value="36">Lâm Đồng</option>
            <option value="37">Lạng Sơn</option>
            <option value="38">Lào Cai</option>
            <option value="39">Long An</option>
            <option value="40">Nam Định</option>
            <option value="41">Nghệ An</option>
            <option value="42">Ninh Bình</option>
            <option value="43">Ninh Thuận</option>
            <option value="44">Phú thọ</option>
            <option value="45">Phú Yên</option>
            <option value="46">Quảng Bình</option>
            <option value="47">Quảng Nam</option>
            <option value="48">Quảng Ngãi</option>
            <option value="49">Quảng Ninh</option>
            <option value="50">Quảng Trị</option>
            <option value="51">Sóc Trăng</option>
            <option value="52">Sơn La</option>
            <option value="53">Tây Ninh</option>
            <option value="54">Thái Bình</option>
            <option value="55">Thái Nguyên</option>
            <option value="56">Thanh Hoá</option>
            <option value="57">Thừa Thiên - Huế</option>
            <option value="58">Tiền Giang</option>
            <option value="59">Trà Vinh</option>
            <option value="60">Tuyên Quang</option>
            <option value="61">Vĩnh Long</option>
        </select>
    </div>
    <div class="form-group col-md-4">
        <label>
        Điểm khởi hành của tour:</label>
        <select id="TourLocalSearchId" class="select2 col-md-3 form-control" name="TourLocalSearchId">
        </select>
    </div>
    <p class="clearfix">
    </p>
    <div class="form-group col-md-3">
        <label>
        Người lớn:
        </label>
        <input class="form-control mda-quantity tour-quantity1 q-adult1" max="3" min="1" name="QAdult" type="number" value="1" />
    </div>
    <div class="form-group col-md-3">
        <label>
        Trẻ em(5 - 11 tuổi) :
        </label>
        <input class="form-control mda-quantity tour-quantity1 q-child1" min="0" name="QChild" type="number" value="0" />
    </div>
    <div class="form-group col-md-3">
        <label>
        Trẻ nhỏ(nhỏ hơn 2 tuổi):
        </label>
        <input class="form-control mda-quantity tour-quantity1 q-infant1" min="0" name="QInfant" type="number" value="0" />
    </div>
</div>

</asp:Content>

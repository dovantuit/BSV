<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="BanSacVietPro.Page.WebForm2" %>
  
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
               body{
                   color:white;
               }    
                </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="IDDatTuor" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                IDDatTuor:
                <asp:Label ID="IDDatTuorLabel1" runat="server" Text='<%# Eval("IDDatTuor") %>' />
                <br />
                Sdt:
                <asp:TextBox ID="SdtTextBox" runat="server" Text='<%# Bind("Sdt") %>' />
                <br />
                SoChoDat:
                <asp:TextBox ID="SoChoDatTextBox" runat="server" Text='<%# Bind("SoChoDat") %>' />
                <br />
                ThoiGianDat:
                <asp:TextBox ID="ThoiGianDatTextBox" runat="server" Text='<%# Bind("ThoiGianDat") %>' />
                <br />
                IDAcc:
                <asp:TextBox ID="IDAccTextBox" runat="server" Text='<%# Bind("IDAcc") %>' />
                <br />
                IDTuor:
                <asp:TextBox ID="IDTuorTextBox" runat="server" Text='<%# Bind("IDTuor") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                IDDatTuor:
                <asp:TextBox ID="IDDatTuorTextBox" runat="server" Text='<%# Bind("IDDatTuor") %>' />
                <br />
                Sdt:
                <asp:TextBox ID="SdtTextBox" runat="server" Text='<%# Bind("Sdt") %>' />
                <br />
                SoChoDat:
                <asp:TextBox ID="SoChoDatTextBox" runat="server" Text='<%# Bind("SoChoDat") %>' />
                <br />
                IDAcc:
                <asp:TextBox ID="IDAccTextBox" runat="server" Text='<%# Bind("IDAcc") %>' />
                <br />
                IDTuor:
                <asp:TextBox ID="IDTuorTextBox" runat="server" Text='<%# Bind("IDTuor") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                IDDatTuor:
                <asp:Label ID="IDDatTuorLabel" runat="server" Text='<%# Eval("IDDatTuor") %>' />
                <br />
                Sdt:
                <asp:Label ID="SdtLabel" runat="server" Text='<%# Bind("Sdt") %>' />
                <br />
                SoChoDat:
                <asp:Label ID="SoChoDatLabel" runat="server" Text='<%# Bind("SoChoDat") %>' />
                <br />
                IDAcc:
                <asp:Label ID="IDAccLabel" runat="server" Text='<%# Bind("IDAcc") %>' />
                <br />
                IDTuor:
                <asp:Label ID="IDTuorLabel" runat="server" Text='<%# Bind("IDTuor") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TuorConnectionString3 %>" DeleteCommand="DELETE FROM [DatTuor] WHERE [IDDatTuor] = @original_IDDatTuor AND [Sdt] = @original_Sdt AND [SoChoDat] = @original_SoChoDat AND [ThoiGianDat] = @original_ThoiGianDat AND [IDAcc] = @original_IDAcc AND [IDTuor] = @original_IDTuor" InsertCommand="INSERT INTO [DatTuor] ([IDDatTuor], [Sdt], [SoChoDat], [ThoiGianDat], [IDAcc], [IDTuor]) VALUES (@IDDatTuor, @Sdt, @SoChoDat, getdate(),@IDAcc, @IDTuor)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [DatTuor]" UpdateCommand="UPDATE [DatTuor] SET [Sdt] = @Sdt, [SoChoDat] = @SoChoDat, [ThoiGianDat] = @ThoiGianDat, [IDAcc] = @IDAcc, [IDTuor] = @IDTuor WHERE [IDDatTuor] = @original_IDDatTuor AND [Sdt] = @original_Sdt AND [SoChoDat] = @original_SoChoDat AND [ThoiGianDat] = @original_ThoiGianDat AND [IDAcc] = @original_IDAcc AND [IDTuor] = @original_IDTuor">
            <DeleteParameters>
                <asp:Parameter Name="original_IDDatTuor" Type="Int32" />
                <asp:Parameter Name="original_Sdt" Type="String" />
                <asp:Parameter Name="original_SoChoDat" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_ThoiGianDat" />
                <asp:Parameter Name="original_IDAcc" Type="Int32" />
                <asp:Parameter Name="original_IDTuor" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IDDatTuor" Type="Int32" />
                <asp:Parameter Name="Sdt" Type="String" />
                <asp:Parameter Name="SoChoDat" Type="Int32" />
                <asp:Parameter Name="IDAcc" Type="Int32" />
                <asp:Parameter Name="IDTuor" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sdt" Type="String" />
                <asp:Parameter Name="SoChoDat" Type="Int32" />
                <asp:Parameter DbType="Date" Name="ThoiGianDat" />
                <asp:Parameter Name="IDAcc" Type="Int32" />
                <asp:Parameter Name="IDTuor" Type="Int32" />
                <asp:Parameter Name="original_IDDatTuor" Type="Int32" />
                <asp:Parameter Name="original_Sdt" Type="String" />
                <asp:Parameter Name="original_SoChoDat" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_ThoiGianDat" />
                <asp:Parameter Name="original_IDAcc" Type="Int32" />
                <asp:Parameter Name="original_IDTuor" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div _designerregion="0">
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    </asp:Content>

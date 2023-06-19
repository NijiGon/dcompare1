<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="dcompare1.Views.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid p-5" style="font-family: 'Nexa'; color: black; width: 90%; margin-top: 5%;">
        <h2><b>Hubungi Kami</b></h2>
        <select name="problems" id="problem" style="width: 50%; height: 40px; font-size: 18px; border-radius: 10px; margin-bottom: 10px;">
            <option value="bug">Saya menemukan Bug</option>
        </select>
        <select name="problems_specifics" id="problems_specifics" style="width: 50%; height: 40px; font-size: 18px; border-radius: 10px; margin-bottom: 10px;">
            <option value="accprob">Akun Saya Bermasalah</option>
        </select>
        <select name="reporting" id="reporting" style="width: 50%; height: 40px; font-size: 18px; border-radius: 10px; margin-bottom: 10px;">
            <option value="report">Saya ingin melaporkan postingan yang melanggar ketentuan</option>
        </select>
        <form action="">
            <div class="d-flex flex-column align-items-baseline">
                <textarea type="description" style="border-radius: 10px; width: 50%; height: 500px;" class="mb-3"></textarea>
                <asp:Button ID="btnLogout" class="rounded btn btn-dark mb-5" runat="server" Text="Kirim" />
            </div>
            <%--<input type="description" style="border-radius: 10px; width: 50%; height: 500px; margin-bottom: 100px;">--%>
            
        </form>
        
        <h2><b>Informasi Tambahan</b></h2>
        <button type="button" style="border-radius: 10px; width: 15%; background-color: #313131; padding-top: 5px; outline: none;"><b style="font-size: 24px; color: aliceblue;">FAQ</b></button>
    </div>
</asp:Content>

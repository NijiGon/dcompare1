﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="dcompare1.Views.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</head>
<body>
    <div class="d-flex position-absolute top-50 start-50 translate-middle w-100">
        <div class="container-fluid m-4 w-50 d-flex justify-content-center align-items-center">
            <div>
                <form runat="server">
                    <img src="../Asset/logo/WELCOME.png" class="w-75 mb-3" alt="Alternate Text" />
                    <div class="mb-3">
                        <label for="e-mail" class="form-label">Email</label>
                        <asp:TextBox ID="tbEmail" class="form-control" runat="server"></asp:TextBox>
                      </div>
                    <div class="mb-3">
                        <label for="pass" class="form-label">Password</label>
                        <%--<input type="password" class="form-control" id="pass"/>--%>
                        <asp:TextBox ID="tbPass" class="form-control" runat="server" TextMode="Password" ></asp:TextBox>
                      </div>
                    <%--<button type="submit" class="btn btn-primary w-100 bg">Masuk</button>--%>
                    <asp:Button ID="btnSubmit" runat="server" Text="Masuk" class="btn btn-primary w-100 bg" OnClick="btnSubmit_Click" />
                </form>
                <div>
                    <p class="text-center mt-3">belum punya akun? <a href="Register.aspx" class="fw-bold text-decoration-none text-black">Daftar</a></p>
                </div>
            </div>
        </div>
        <div class="vr"></div>
        <div class="d-flex justify-content-center w-50 align-items-center">
            <ul>
                <li>Set profil avatar anda secara pribadi</li>
                <li>Beri skor ulasan dan juga komentar pribadi anda</li>
                <li>Notifikasi terkait perangkat baru yang sedang tren</li>
                <li>Bantu kami menjadi lebih baik</li>
            </ul>
        </div>
    </div>
</body>
</html>
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="dcompare1.Views.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex flex-column justify-content-center align-items-center" style="min-height:82.15vh; padding: 100px 0px 0px 60px;">
        <p class="fs-4" style="font-family: Nexa-bold;">Profile</p>
        <div class="shadow ms-4 rounded-4 d-flex flex-column justify-content-center" style="width: 1000px; min-height: 350px;">
            <div class="profile-info ms-5 me-5">
                <div class="d-flex">
                    <div class="input-group mb-3 me-4">
                        <span class="input-group-text" id="basic-addon1">Nama depan</span>
                        <%--<input type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">--%>
                        <asp:TextBox type="text" class="form-control" placeholder="" ReadOnly="true" aria-label="Username" aria-describedby="basic-addon1" ID="tbFName" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Nama belakang</span>
                        <%--<input type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">--%>
                        <asp:TextBox type="text" class="form-control" placeholder="" ReadOnly="true" aria-label="Username" aria-describedby="basic-addon1" ID="tbLName" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Username</span>
                        <%--<input type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">--%>
                        <asp:TextBox type="text" class="form-control" placeholder="" ReadOnly="true" aria-label="Username" aria-describedby="basic-addon1" ID="tbUname" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Email</span>
                        <%--<input type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">--%>
                        <asp:TextBox type="text" class="form-control" placeholder="" ReadOnly="true" aria-label="Username" aria-describedby="basic-addon1" ID="tbEmail" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Password</span>
                        <%--<input type="password" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">--%>
                        <asp:TextBox type="password" class="form-control" placeholder="" ReadOnly="true" aria-label="Username" aria-describedby="basic-addon1" ID="tbPass" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <asp:Label ID="lbError" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div style="font-family: Nexa-reg;">
                    <asp:Button ID="btnEdit" class="rounded btn btn-secondary" runat="server" Text="Ubah" OnClick="btnEdit_Click" />
                    <asp:Button ID="btnSave" class="rounded btn btn-secondary" runat="server" Text="Simpan" OnClick="btnSave_Click" />
                    <asp:Button ID="btnLogout" class="rounded btn btn-danger" runat="server" Text="Keluar" OnClick="btnLogout_Click" />
                    <%--<button type="button" class="rounded btn btn-secondary">Edit</button>--%>
                    <%--<button type="button" class="rounded btn btn-secondary">Simpan</button>--%>
                </div>
            </div>
        </div>
        <div class="my-5" style="margin-left: 25px;">
            <p class="fs-4 d-flex flex-column align-items-center" style="font-family: Nexa-bold;">Review Anda</p>
            <%foreach (var r in reviews) { %>
            <div class="p-4 border rounded-4 shadow mb-2" style="background-color: #FFFFFF; width: 1000px;">
                <div class="">
                    <div class="d-flex">
                    <div class="mt-2">
                        <a href="Compare1.aspx?id=<%= r.Device1.Id %>" id="nb" class="fw-bold text-decoration-none text-black"><%= r.Device1.name %></a> 
                    </div>
                    </div>
                   
                    <p id="" style="text-align: left;"><%= r.comment %></p>
                    <div class="d-flex">
                        <%for (int i = 0; i < 5; i++) { %>
                        <%if (i > r.rating - 1) { %>
                        <svg xmlns="http://www.w3.org/2000/svg" style="margin-top: -3px" width="25" height="30" fill="" class="bi bi-star ms-1" viewBox="0 0 16 16">
                            <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                        </svg>
                        <%} else { %>
                        <svg class="ms-1" width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                        <defs>
                        <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#B132FF"/>
                        <stop offset="0.497917" stop-color="#0038FF"/>
                        <stop offset="1" stop-color="#00A3FF"/>
                        </linearGradient>
                        </defs>
                        </svg>
                        <%} %>
                        <%} %>
                        <p id="nb" class="fw-bold h3 ms-2" style="margin-top: -3px;"><%= r.rating %></p>
                    </div>
                </div>
            </div>
            <%} %>
        </div>
    </div>
</asp:Content>

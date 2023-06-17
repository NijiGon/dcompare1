<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="ViewDevices.aspx.cs" Inherits="dcompare1.Views.ViewDevices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex mb-5" style="padding: 90px 0px 0px 60px;">
        <div class="z-0">
            <div>
                <p class="fs-5" style="font-family: Nexa-bold;">Filter</p>
            </div>
            <div>
                <div class="border border-2 border-secondary-subtle p-3" style="font-family: Nexa-bold; width: 150%;">
                    <p>Harga</p>
                    <button class="border rounded-4 border-secondary p-2 d-flex justify-content-center w-100 bg-white mb-2">
                        Harga Maksimum
                    </button>
                    <button class="border rounded-4 border-secondary p-2 d-flex justify-content-center w-100 bg-white mb-2">
                        Harga Minimum
                    </button>
                    <div>
                        <div class="mb-3">
                            <asp:CheckBox ID="checkBox1" runat="server" CssClass="me-2" Style="width: 20px; height: 20px;" AutoPostBack="true" OnCheckedChanged="checkBox1_CheckedChanged" />
                            <label class="" for="checkBox1">Rp1.5 jt - Rp5.5 jt</label>
                        </div>
                        <div class="mb-3">
                            <asp:CheckBox ID="checkBox2" runat="server" CssClass="me-2" Style="width: 20px; height: 20px;" AutoPostBack="true" OnCheckedChanged="checkBox1_CheckedChanged" />
                            <label class="" for="checkBox2">Rp5.5 jt - Rp10 jt</label>
                        </div>
                        <div class="mb-3">
                            <asp:CheckBox ID="checkBox3" runat="server" CssClass="me-2" Style="width: 20px; height: 20px;" AutoPostBack="true" OnCheckedChanged="checkBox1_CheckedChanged" />
                            <label class="" for="checkBox3">Rp10 jt - Rp25 jt</label>
                        </div>
                        <div class="mb-3">
                            <asp:CheckBox ID="checkBox4" runat="server" CssClass="me-2" Style="width: 20px; height: 20px;" AutoPostBack="true" OnCheckedChanged="checkBox1_CheckedChanged" />
                            <label class="" for="checkBox4">Semua harga</label>
                        </div>
                    </div>
                </div>

                <div class="border border-2 border-secondary-subtle border-top-0 p-3" style="width: 150%; font-family: Nexa-bold;">
                    <p>Skor</p>
                    <div class="" style="margin-bottom: -10px;">
                        <asp:CheckBox ID="checkBox5" runat="server" CssClass="me-3" Style="width: 20px; height: 20px;" AutoPostBack="true" OnCheckedChanged="checkBox5_CheckedChanged" />
                        <label class="" for="checkBox5">
                            <div class="d-flex" style="margin-top: 5px;">
                                <svg class="me-2 d-flex justify-content-center align-content-center align-items-center" width="18" height="18" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="#6300E1"/>
                                </svg>
                                <p style="margin-top: -2px;">3-4</p>
                            </div>
                        </label>
                    </div>
                    <div class="" style="margin-bottom: -10px;">
                        <asp:CheckBox ID="checkBox6" runat="server" CssClass="me-3" Style="width: 20px; height: 20px;" AutoPostBack="true" OnCheckedChanged="checkBox5_CheckedChanged" />
                        <label class="" for="checkBox6">
                            <div class="d-flex" style="margin-top: 5px;">
                                <svg class="me-2 d-flex justify-content-center align-content-center align-items-center" width="18" height="18" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="#6300E1"/>
                                </svg>
                                <p style="margin-top: -2px;">4 ke atas</p>
                            </div>
                        </label>
                    </div>
                    <div class="" style="margin-bottom: -10px;">
                        <asp:CheckBox ID="checkBox7" runat="server" CssClass="me-3" Style="width: 20px; height: 20px;" AutoPostBack="true" OnCheckedChanged="checkBox5_CheckedChanged" />
                        <label class="" for="checkBox7">
                            <div class="d-flex" style="margin-top: 5px;">
                                <svg class="me-2 d-flex justify-content-center align-content-center align-items-center" width="18" height="18" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="#6300E1"/>
                                </svg>
                                <p style="margin-top: -2px;">5</p>
                            </div>
                        </label>
                    </div>
                    <div class="" style="margin-bottom: -10px;">
                        <asp:CheckBox ID="checkBox8" runat="server" CssClass="me-3" Style="width: 20px; height: 20px;" AutoPostBack="true" OnCheckedChanged="checkBox5_CheckedChanged" />
                        <label class="" for="checkBox8">
                            <div class="d-flex" style="margin-top: 5px;">
                                <svg class="me-2 d-flex justify-content-center align-content-center align-items-center" width="18" height="18" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="#6300E1"/>
                                </svg>
                                <p style="margin-top: -2px;">Semua rating</p>
                            </div>
                        </label>
                    </div>
                </div>
            </div>
        </div>

        <div class="" style="margin-left: 120px;">
            <div class="d-flex justify-content-end" style="font-family: Nexa-bold; width: 99%;">
                <p class="me-3 mt-2">Urutkan</p>
                <div class="dropdown">
                    <button class="btn dropdown-toggle border text-start" style="width: 100%;" type="button" data-bs-toggle="dropdown" aria-expanded="false">Berdasarkan</button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Harga (tinggi ke rendah)</a></li>
                        <li><a class="dropdown-item" href="#">Harga (rendah ke tinggi)</a></li>
                        <li><a class="dropdown-item" href="#">Ulasan</a></li>
                        <li><a class="dropdown-item" href="#">A - Z</a></li>
                        <li><a class="dropdown-item" href="#">Z - A</a></li>
                    </ul>
                </div>
            </div>
            <div>
                <div class="container text-center" style="margin-bottom: 350px;">
                    <div class="row align-items-start">
                        <% foreach (var d in devices) { %>
                        <div class="col">
                            <div>
                                <div class="z-0 d-flex flex-column align-items-center">
                                    <img src="../Asset/devices/phones/<%= d.image %>" alt="" class="mb-2" style="height: 300px;">
                                    <p class="w-50 fs-5" style="font-family: Nexa-bold;"><%= d.name %></p>
                                </div>
                                <div class="z-1 d-flex flex-column align-items-end" style="margin-top: -380px; margin-left: 50px;">
                                    <p class="rounded-pill w-75 fs-6 py-1 text-white" style="font-family: Nexa-bold; background-color: #6300E1;"><%= sp[d.Id] %></p>
                                    <div class="d-flex justify-content-center border border-2 border-black rounded-pill py-1 bg-white" style="width: 45%; margin-top: -10px;">
                                        <svg id="bintang" class="me-2" width="18" height="18" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="#6300E1"/>
                                        </svg>
                                        <label for="bintang" class="fs-5" style="font-family: Nexa-bold; margin-top: -3.5px; margin-bottom: -5px;"><%= ratings[d.Id] %></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%} %>
                        <%--<div class="col">
                            <div>
                                <div class="z-0 d-flex flex-column align-items-center">
                                    <img src="../Asset/devices/phones/Iphone14.png" alt="" class="mb-2" style="width: 150px;">
                                    <p class="w-50 fs-5" style="font-family: Nexa-bold;">Samsung Galaxy S23 Ultra</p>
                                </div>
                                <div class="z-1 d-flex flex-column align-items-end" style="margin-top: -380px; margin-left: 50px;">
                                    <p class="rounded-pill w-75 fs-6 py-1 text-white" style="font-family: Nexa-bold; background-color: #6300E1;">Rp19.100.000</p>
                                    <div class="d-flex justify-content-center border border-2 border-black rounded-pill py-1 bg-white" style="width: 45%; margin-top: -10px;">
                                        <svg id="bintang" class="me-2" width="18" height="18" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="#6300E1"/>
                                        </svg>
                                        <label for="bintang" class="fs-5" style="font-family: Nexa-bold; margin-top: -3.5px; margin-bottom: -5px;">5</label>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

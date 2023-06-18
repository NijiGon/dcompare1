<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="ViewDevices.aspx.cs" Inherits="dcompare1.Views.ViewDevices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        a.no-underline {
          text-decoration: none;
          color: inherit;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex mb-5" style="padding: 90px 0px 0px 60px; min-height:100vh;">
        <div class="z-0">
            <div>
                <p class="fs-5" style="font-family: Nexa-bold;">Filter</p>
            </div>
            <div>
                <div class="p-3 border-secondary-subtle" style="font-family: Nexa-bold; width: 150%; border:2px solid;">
                    <p>Harga</p>
                    <%--<a href="ViewDevices.aspx?pricetype=max&sort=<%= sort %>" class="border rounded-4 border-secondary p-2 d-flex justify-content-center w-100 bg-white mb-2 no-underline">
                        Harga Maksimum
                    </a>
                    <a href="ViewDevices.aspx?pricetype=min&sort=<%= sort %>" class="border rounded-4 border-secondary p-2 d-flex justify-content-center w-100 bg-white mb-2 no-underline">
                        Harga Minimum
                    </a>--%>
                    <div>
                        <div class="mb-3">
                            <asp:CheckBox ID="checkBox1" runat="server" CssClass="me-2" Style="width: 100px; height: 100px;" AutoPostBack="true" OnCheckedChanged="checkBox1_CheckedChanged" />
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
                    </div>
                </div>

                <div class="border-secondary-subtle border-top-0 p-3" style="width: 150%; border: 2px solid; font-family: Nexa-bold;">
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
                </div>
            </div>
        </div>

        <div class="" style="margin-left: 120px; min-width:80vw">
            <div class="d-flex position-absolute ms-5" style="font-family: Nexa-bold; width: 0;">
                <p class=" fs-5 me-3 mt-1">Urutkan</p>
                <div class="dropdown">
                    <button class="btn dropdown-toggle border border-secondary-subtle text-start" style="width: 100%;" type="button" data-bs-toggle="dropdown" aria-expanded="false">Berdasarkan</button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="ViewDevices.aspx?sort=price_dsc">Harga Tertinggi</a></li>
                        <li><a class="dropdown-item" href="ViewDevices.aspx?sort=price_asc">Harga Terendah</a></li>
                        <li><a class="dropdown-item" href="ViewDevices.aspx?sort=rating_dsc">Ulasan (tinggi ke rendah)</a></li>
                        <li><a class="dropdown-item" href="ViewDevices.aspx?sort=alph_asc">A - Z</a></li>
                        <li><a class="dropdown-item" href="ViewDevices.aspx?sort=alph_dsc">Z - A</a></li>
                    </ul>
                </div>
            </div>
            <div class="container" style="margin-top: 55px; min-width:80vw;">
                <div class="row text-center" style="justify-content:start">
                    <% foreach (var d in newdevices) { %>
                    <div class="col-2" style="min-width:300px; max-width: 1100px;">
                        <a href="Compare1.aspx?id=<%= d.Id %>" class="no-underline mb-5 d-flex align-items-center justify-content-center flex-column">
                            <img class="" style="height: 300px;" src="../Asset/devices/phones/<%= d.image %>" alt="">
                            <p class="w-50 fs-6 mt-2 mb-0 d-flex align-items-center justify-content-center" style="font-family: Nexa-bold; min-height:50px;"><%= d.name %></p>
                            <p class="rounded-pill fs-7 py-1 text-white mt-4 w-50" style="font-family: Nexa-bold; background-color: #6300E1;"><%= sp[d.Id] %></p>
                            <div class="d-flex justify-content-center border border-2 border-black rounded-pill px-3 py-1 bg-white w-50" margin-top: -10px;">
                                <svg id="bintang" class="me-2" style="margin-top:1px" width="18" height="18" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="#6300E1"/>
                                </svg>
                                <label for="bintang" class="fs-5" style="font-family: Nexa-bold; margin-top: -3.5px; margin-bottom: -5px;"><%= ratings[d.Id].ToString("0.00") %></label>
                            </div>
                        </a>
                    </div>
                    <%} %>
                   <%-- <div class="col-2" style="min-width:300px; max-width: 1100px;">
                        <a href="#" class="no-underline mb-3 d-flex align-items-center justify-content-center flex-column">
                            <img class="" style="height: 300px;" src="../Asset/devices/phones/Iphone14.png" alt="">
                            <p class="w-50 fs-6 mt-2 mb-0 d-flex align-items-center justify-content-center" style="font-family: Nexa-bold; min-height:50px;">test</p>
                            <p class="rounded-pill fs-7 py-1 text-white mt-4 w-50" style="font-family: Nexa-bold; background-color: #6300E1;">test</p>
                            <div class="d-flex justify-content-center border border-2 border-black rounded-pill px-3 py-1 bg-white w-50" margin-top: -10px;">
                                <svg id="bintang" class="me-2" style="margin-top:1px" width="18" height="18" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="#6300E1"/>
                                </svg>
                                <label for="bintang" class="fs-5" style="font-family: Nexa-bold; margin-top: -3.5px; margin-bottom: -5px;">test</label>
                            </div>
                        </a>
                    </div>
                    <div class="col-2" style="min-width:300px; max-width: 1100px;">
                        <a href="#" class="no-underline mb-3 d-flex align-items-center justify-content-center flex-column">
                            <img class="" style="height: 300px;" src="../Asset/devices/phones/Iphone14.png" alt="">
                            <p class="w-50 fs-6 mt-2 mb-0 d-flex align-items-center justify-content-center" style="font-family: Nexa-bold; min-height:50px;">test</p>
                            <p class="rounded-pill fs-7 py-1 text-white mt-4 w-50" style="font-family: Nexa-bold; background-color: #6300E1;">test</p>
                            <div class="d-flex justify-content-center border border-2 border-black rounded-pill px-3 py-1 bg-white w-50" margin-top: -10px;">
                                <svg id="bintang" class="me-2" style="margin-top:1px" width="18" height="18" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="#6300E1"/>
                                </svg>
                                <label for="bintang" class="fs-5" style="font-family: Nexa-bold; margin-top: -3.5px; margin-bottom: -5px;">test</label>
                            </div>
                        </a>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

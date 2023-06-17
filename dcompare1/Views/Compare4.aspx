<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="Compare4.aspx.cs" Inherits="dcompare1.Views.Compare4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- BANNER -->
    <div id="banner" class="container-fluid d-flex flex-column align-items-center" style="background-color: #E8E8E8;">
        <div class="row mt-5">
            <div class="col">
            <div class="" style="padding-top: 80px;">
                <div class="d-flex align-items-center justify-content-center flex-column">
                    <img src="../Asset/devices/phones/<%= d.image %>" alt="" class="me-5 shadow z-0" style="height: 312px">
                    <div class="z-1" style="margin-top: -25%; margin-left: 7vw;">
                        <svg width="5vw" height="76" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <% if (winner.ToString().Contains('1')) { %>
                            <circle cx="38" cy="38" r="38" fill="white"/>
                            <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                            <%} %>
                        </svg>  
                    </div>                
                </div>

                <div class="z-1" style="max-width: 60%;">
                    <p class="fw-medium h3 lh-1"><%= d.name %></p>
                </div>            
        
                <div class="rounded-3 d-flex justify-content-center" style="background: #6300E1; padding-top: 8px; width: 45%; padding-bottom: 8px;">
                    <svg width="30" height="25" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg" style="margin-left: -10px;">
                    <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="white"/>
                    </svg>
                    <p class="h2 text-white ms-2" style="margin-top: -4px; margin-bottom: -4px;"><%= rating %></p>     
                </div>
            </div>
            </div>
            <div class="col">
            <div style="padding-top: 80px; padding-bottom: 80px;">
                <div class="d-flex align-items-center justify-content-center flex-column">
                    <img src="../Asset/devices/phones/<%= d2.image %>" alt="" class="me-5 shadow z-0 rounded-4" style="height: 312px">
                    <div class="z-1" style="margin-top: -60px; margin-left: 100px;">
                        <svg width="76" height="76" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <% if (winner.ToString().Contains('2')) { %>
                            <circle cx="38" cy="38" r="38" fill="white"/>
                            <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                            <%} %>
                        </svg>  
                    </div>                
                </div>

                <div class="z-1" style="max-width: 60%;">
                    <p class="fw-medium h3 lh-1"><%= d2.name %></p>
                </div>            
        
                <div class="rounded-3 d-flex justify-content-center" style="background: #6300E1; padding-top: 8px; width: 45%; padding-bottom: 8px;">
                    <svg width="30" height="25" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg" style="margin-left: -10px;">
                    <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="white"/>
                    </svg>
                    <p class="h2 text-white ms-2" style="margin-top: -4px; margin-bottom: -4px;"><%= rating2 %></p>     
                </div>
            </div>
            </div>
            <div class="col">
            <div class="" style="padding-top: 80px; padding-bottom: 80px;">
                <div class="d-flex align-items-center justify-content-center flex-column">
                    <img src="../Asset/devices/phones/<%= d3.image %>" alt="" class="me-5 shadow z-0" style="height: 312px">
                    <div class="z-1" style="margin-top: -60px; margin-left: 100px;">
                        <svg class="" width="76" height="76" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <% if (winner.ToString().Contains('3')) { %>
                            <circle cx="38" cy="38" r="38" fill="white"/>
                            <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                            <%} %>
                        </svg>  
                    </div>                
                </div>

                <div class="z-1" style="max-width: 60%;">
                    <p class="fw-medium h3 lh-1"><%= d3.name %></p>
                </div>            
        
                <div class="rounded-3 d-flex justify-content-center" style="background: #6300E1; padding-top: 8px; width: 45%; padding-bottom: 8px;">
                    <svg width="30" height="25" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg" style="margin-left: -10px;">
                    <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="white"/>
                    </svg>
                    <p class="h2 text-white ms-2" style="margin-top: -4px; margin-bottom: -4px;"><%= rating3 %></p>     
                </div>
            </div>
            </div>
            <div class="col">
            <div class="" style="padding-top: 80px; padding-bottom: 80px;">
                <div class="d-flex align-items-center justify-content-center flex-column">
                    <img src="../Asset/devices/phones/<%= d4.image %>" alt="" class="me-5 shadow z-0 rounded-4" style="height: 312px">
                    <div class="z-1" style="margin-top: -60px; margin-left: 100px;">
                        <svg width="76" height="76" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <% if (winner.ToString().Contains('4')) { %>
                            <circle cx="38" cy="38" r="38" fill="white"/>
                            <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                            <%} %>
                        </svg>  
                    </div>                
                </div>

                <div class="z-1" style="max-width: 60%;">
                    <p class="fw-medium h3 lh-1"><%= d4.name %></p>
                </div>            
        
                <div class="rounded-3 d-flex justify-content-center" style="background: #6300E1; padding-top: 8px; width: 45%; padding-bottom: 8px;">
                    <svg width="30" height="25" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg" style="margin-left: -10px;">
                    <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="white"/>
                    </svg>
                    <p class="h2 text-white ms-2" style="margin-top: -4px; margin-bottom: -4px;"><%= rating4 %></p>     
                </div>
            </div>
            </div>
        </div>
    </div>

    <!-- SEARCH -->
    <%--<div id="search" class="d-flex flex-column justify-content-center align-items-center mt-5">
        <p class="h2" style="color: #6300E1;">Mulai bandingkan</p>
        <input class="form-control rounded-pill" style="width: 25vw;" type="search" placeholder="Cari Device" aria-label="Search" style="background-color: #EEEEEE;">
    </div>--%>

    <!-- DEVICE SPEC -->
    <table class="table table-borderless ms-5" style="width: 93%;">
        <thead>
            <tr class="">
            <th scope="col">
                <div class="">
                    <p class="h4 text-white rounded-4 text-center me-3" style="background-color: #353535; padding-bottom: 10px; padding-top: 10px; margin-top: 10vh; margin-bottom: 18px;">DESAIN</p>  
                </div>
            </th>
            <th scope="col">
                <div class="d-flex flex-column align-items-start">
                    <p class="h5 fw-bold"><%= d.name %></p>
                    
                    <div class="mb-4">
                        <a href="Compare1.aspx?id=<%= d.Id %>" class="btn rounded-4 fw-bold" style="width: 18rem; padding: 1.5%; background-color: #353535; color: white;">ulasan anda</a>
                    </div>
                </div>
            </th>
            <th scope="col">
                <div class="d-flex flex-column align-items-start">
                    <p class="h5 fw-bold"><%= d2.name %></p>
                    <div class="mb-4">
                        <a href="Compare1.aspx?id=<%= d2.Id %>" class="btn rounded-4 fw-bold" style="width: 18rem; padding: 1.5%; background-color: #353535; color: white;">ulasan anda</a>
                    </div>
                </div>
            </th>
            <th scope="col">
                <div class="d-flex flex-column align-items-start">
                    <p class="h5 fw-bold"><%= d3.name %></p>
                    <div class="mb-4">
                        <a href="Compare1.aspx?id=<%= d3.Id %>" class="btn rounded-4 fw-bold" style="width: 18rem; padding: 1.5%; background-color: #353535; color: white;">ulasan anda</a>
                    </div>
                </div>
            </th>
            <th scope="col">
                <div class="d-flex flex-column align-items-start">
                    <p class="h5 fw-bold"><%= d4.name %></p>
                    <div class="mb-4">
                        <a href="Compare1.aspx?id=<%= d4.Id %>" class="btn rounded-4 fw-bold" style="width: 18rem; padding: 1.5%; background-color: #353535; color: white;">ulasan anda</a>
                    </div>
                </div>
            </th>
            </tr>
        </thead>
        <tbody>
        <tr style="" class="">
            <th id="spec-subgrup" scope="row" class="fs-5">
                <p class="mb-minus5">Ukuran</p>    
            </th>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Panjang</p>    
            </th>
            <td class="<% if (dimensionWinner.ToString().Contains('1')) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Dimension1.length %> </td>
            <td class="<% if (dimensionWinner.ToString().Contains('2')) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Dimension1.length %> </td>
            <td class="<% if (dimensionWinner.ToString().Contains('3')) Response.Write(type5); else Response.Write(type2);  %>"><%= d3.Dimension1.length %> </td>
            <td class="<% if (dimensionWinner.ToString().Contains('4')) Response.Write(type5); else Response.Write(type1);  %>"><%= d4.Dimension1.length %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Lebar</p>    
            </th>
            <td class="<% if (dimensionWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Dimension1.width %> </td>
            <td class="<% if (dimensionWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Dimension1.width %> </td>
            <td class="<% if (dimensionWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Dimension1.width %> </td>
            <td class="<% if (dimensionWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Dimension1.width %> </td>
        </tr>
        <tr class="">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Tinggi</p>    
            </th>
            <td class="<% if (dimensionWinner.ToString().Contains('1')) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Dimension1.height %> </td>
            <td class="<% if (dimensionWinner.ToString().Contains('2')) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Dimension1.height %> </td>
            <td class="<% if (dimensionWinner.ToString().Contains('3')) Response.Write(type4); else Response.Write(type2);  %>"><%= d3.Dimension1.height %> </td>
            <td class="<% if (dimensionWinner.ToString().Contains('4')) Response.Write(type4); else Response.Write(type1);  %>"><%= d4.Dimension1.height %> </td>
        </tr>

        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus2" style="margin-top: 10px;">Layar</p>    
            </th>
            <%if (dimensionWinner >= 1 && dimensionWinner <= 4) { %>
            <%if (dimensionWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (dimensionWinner == 3) { %>
            <td></td>
            <td></td>
            <%} %>
            <%if (dimensionWinner == 4) { %>
            <td></td>
            <td></td>
            <td></td>
            <%} %>
            <td>
                <div class="z-1 text-end" style="margin-top: -60px;">
                    <svg width="50" height="90" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                    </svg>  
                </div>    
            </td>
            <%} %>
          
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Panjang</p>    
            </th>
            <td class="<% if (displayWinner.ToString().Contains('1')) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Display1.height %> </td>
            <td class="<% if (displayWinner.ToString().Contains('2')) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Display1.height %> </td>
            <td class="<% if (displayWinner.ToString().Contains('3')) Response.Write(type5); else Response.Write(type2);  %>"><%= d3.Display1.height %> </td>
            <td class="<% if (displayWinner.ToString().Contains('4')) Response.Write(type5); else Response.Write(type1);  %>"><%= d4.Display1.height %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Lebar</p>    
            </th>
            <td class="<% if (displayWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Display1.width %> </td>
            <td class="<% if (displayWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Display1.width %> </td>
            <td class="<% if (displayWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Display1.width %> </td>
            <td class="<% if (displayWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Display1.width %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Refresh Rate</p>    
            </th>
            <td class="<% if (displayWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Display1.refresh_rate %> </td>
            <td class="<% if (displayWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Display1.refresh_rate %> </td>
            <td class="<% if (displayWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Display1.refresh_rate %> </td>
            <td class="<% if (displayWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Display1.refresh_rate %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Gamut Warna</p>    
            </th>
            <td class="<% if (displayWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Display1.color_gamut %> </td>
            <td class="<% if (displayWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Display1.color_gamut %> </td>
            <td class="<% if (displayWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Display1.color_gamut %> </td>
            <td class="<% if (displayWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Display1.color_gamut %> </td>
        </tr>
        <tr class="">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Ukuran</p>    
            </th>
            <td class="<% if (displayWinner.ToString().Contains('1')) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Display1.size %> </td>
            <td class="<% if (displayWinner.ToString().Contains('2')) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Display1.size %> </td>
            <td class="<% if (displayWinner.ToString().Contains('3')) Response.Write(type4); else Response.Write(type2);  %>"><%= d3.Display1.size %> </td>
            <td class="<% if (displayWinner.ToString().Contains('4')) Response.Write(type4); else Response.Write(type1);  %>"><%= d4.Display1.size %> </td>
        </tr>

        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus5" style="margin-top: 10px;">Suara</p>    
            </th>
            <%if (displayWinner >= 1 && displayWinner <= 4) { %>
            <%if (displayWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (displayWinner == 3) { %>
            <td></td>
            <td></td>
            <%} %>
            <%if (displayWinner == 4) { %>
            <td></td>
            <td></td>
            <td></td>
            <%} %>
            <td>
                <div class="z-1 text-end" style="margin-top: -60px;">
                    <svg width="50" height="90" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                    </svg>  
                </div>    
            </td>
            <%} %>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Nama</p>    
            </th>
            <td class="<% if (audioWinner.ToString().Contains('1')) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Audio1.name %> </td>
            <td class="<% if (audioWinner.ToString().Contains('2')) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Audio1.name %> </td>
            <td class="<% if (audioWinner.ToString().Contains('3')) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Audio1.name %> </td>
            <td class="<% if (audioWinner.ToString().Contains('4')) Response.Write(type5); else Response.Write(type1);  %>"><%= d3.Audio1.name %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Tipe</p>    
            </th>
            <td class="<% if (audioWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Audio1.type %> </td>
            <td class="<% if (audioWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Audio1.type %> </td>
            <td class="<% if (audioWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Audio1.type %> </td>
            <td class="<% if (audioWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Audio1.type %> </td>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Mikrofon</p>    
            </th>
            <td class="<% if (audioWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Audio1.microphone %> </td>
            <td class="<% if (audioWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Audio1.microphone %> </td>
            <td class="<% if (audioWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Audio1.microphone %> </td>
            <td class="<% if (audioWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Audio1.microphone %> </td>
        </tr>
        <tr class="">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Jumlah Speaker</p>    
            </th>
            <td class="<% if (audioWinner.ToString().Contains('1')) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Audio1.quantity %> </td>
            <td class="<% if (audioWinner.ToString().Contains('2')) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Audio1.quantity %> </td>
            <td class="<% if (audioWinner.ToString().Contains('3')) Response.Write(type4); else Response.Write(type2);  %>"><%= d3.Audio1.quantity %> </td>
            <td class="<% if (audioWinner.ToString().Contains('4')) Response.Write(type4); else Response.Write(type1);  %>"><%= d4.Audio1.quantity %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="h4 text-white rounded-4 text-center" style="background-color: #353535; padding-bottom: 10px; padding-top: 10px; width: 120%;">PERFORMA</p>   
            </th>
            <%if (audioWinner >= 1 && audioWinner <= 4) { %>
            <%if (audioWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (audioWinner == 3) { %>
            <td></td>
            <td></td>
            <%} %>
            <%if (audioWinner == 4) { %>
            <td></td>
            <td></td>
            <td></td>
            <%} %>
            <td>
                <div class="z-1 text-end" style="margin-top: -60px;">
                    <svg width="50" height="90" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                    </svg>  
                </div>    
            </td>
            <%} %>
        </tr>
        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus2">Prosesor</p>    
            </th>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Nama</p>    
            </th>
            <td class="<% if (processorWinner.ToString().Contains('1')) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Processor1.name %> </td>
            <td class="<% if (processorWinner.ToString().Contains('2')) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Processor1.name %> </td>
            <td class="<% if (processorWinner.ToString().Contains('3')) Response.Write(type5); else Response.Write(type2);  %>"><%= d3.Processor1.name %> </td>
            <td class="<% if (processorWinner.ToString().Contains('4')) Response.Write(type5); else Response.Write(type1);  %>"><%= d4.Processor1.name %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Tipe</p>    
            </th>
            <td class="<% if (processorWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Processor1.type %> </td>
            <td class="<% if (processorWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Processor1.type %> </td>
            <td class="<% if (processorWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Processor1.type %> </td>
            <td class="<% if (processorWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Processor1.type %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Pabrikan</p>    
            </th>
            <td class="<% if (processorWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Processor1.manufacturer %> </td>
            <td class="<% if (processorWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Processor1.manufacturer %> </td>
            <td class="<% if (processorWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Processor1.manufacturer %> </td>
            <td class="<% if (processorWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Processor1.manufacturer %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kecepatan Clock</p>    
            </th>
            <td class="<% if (processorWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Processor1.clock_speed %> </td>
            <td class="<% if (processorWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Processor1.clock_speed %> </td>
            <td class="<% if (processorWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Processor1.clock_speed %> </td>
            <td class="<% if (processorWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Processor1.clock_speed %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Jumlah Core</p>    
            </th>
            <td class="<% if (processorWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Processor1.cores %> </td>
            <td class="<% if (processorWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Processor1.cores %> </td>
            <td class="<% if (processorWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Processor1.cores %> </td>
            <td class="<% if (processorWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Processor1.cores %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Jumlah Thread</p>    
            </th>
            <td class="<% if (processorWinner.ToString().Contains('1')) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Processor1.threads %> </td>
            <td class="<% if (processorWinner.ToString().Contains('2')) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Processor1.threads %> </td>
            <td class="<% if (processorWinner.ToString().Contains('3')) Response.Write(type4); else Response.Write(type2);  %>"><%= d3.Processor1.threads %> </td>
            <td class="<% if (processorWinner.ToString().Contains('4')) Response.Write(type4); else Response.Write(type1);  %>"><%= d4.Processor1.threads %> </td>
        </tr>
        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus2">Grafis</p>    
            </th>
            <%if (processorWinner >= 1 && processorWinner <= 4) { %>
            <%if (processorWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (processorWinner == 3) { %>
            <td></td>
            <td></td>
            <%} %>
            <%if (processorWinner == 4) { %>
            <td></td>
            <td></td>
            <td></td>
            <%} %>
            <td>
                <div class="z-1 text-end" style="margin-top: -60px;">
                    <svg width="50" height="90" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                    </svg>  
                </div>    
            </td>
            <%} %>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Nama</p>    
            </th>
            <td class="<% if (graphicsWinner.ToString().Contains('1')) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Graphic.name %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('2')) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Graphic.name %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('3')) Response.Write(type5); else Response.Write(type2);  %>"><%= d3.Graphic.name %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('4')) Response.Write(type5); else Response.Write(type1);  %>"><%= d4.Graphic.name %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Tipe</p>    
            </th>
            <td class="<% if (graphicsWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Graphic.type %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Graphic.type %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Graphic.type %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type2);  %>"><%= d4.Graphic.type %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Pabrikan</p>    
            </th>
            <td class="<% if (graphicsWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Graphic.manufacturer %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Graphic.manufacturer %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Graphic.manufacturer %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Graphic.manufacturer %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Watt</p>    
            </th>
            <td class="<% if (graphicsWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Graphic.wattage %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Graphic.wattage %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Graphic.wattage %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Graphic.wattage %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kecepatan Clock</p>    
            </th>
            <td class="<% if (graphicsWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Graphic.clock_speed %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Graphic.clock_speed %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Graphic.clock_speed %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Graphic.clock_speed %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">VRAM</p>    
            </th>
            <td class="<% if (graphicsWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Graphic.vram %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Graphic.vram %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Graphic.vram %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Graphic.vram %> </td>
        <tr class="">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kecepatan Data</p>    
            </th>
            <td class="<% if (graphicsWinner.ToString().Contains('1')) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Graphic.data_rate %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('2')) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Graphic.data_rate %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('3')) Response.Write(type4); else Response.Write(type2);  %>"><%= d3.Graphic.data_rate %> </td>
            <td class="<% if (graphicsWinner.ToString().Contains('4')) Response.Write(type4); else Response.Write(type1);  %>"><%= d4.Graphic.data_rate %> </td>
        </tr>
        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus5" style="margin-top: 10px;">RAM</p>    
            </th>
            <%if (graphicsWinner >= 1 && graphicsWinner <= 4) { %>
            <%if (graphicsWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (graphicsWinner == 3) { %>
            <td></td>
            <td></td>
            <%} %>
            <%if (graphicsWinner == 4) { %>
            <td></td>
            <td></td>
            <td></td>
            <%} %>
            <td>
                <div class="z-1 text-end" style="margin-top: -60px;">
                    <svg width="50" height="90" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                    </svg>  
                </div>    
            </td>
            <%} %>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kapasitas</p>    
            </th>
            <td class="<% if (ramWinner.ToString().Contains('1')) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Memory1.size %> </td>
            <td class="<% if (ramWinner.ToString().Contains('2')) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Memory1.size %> </td>
            <td class="<% if (ramWinner.ToString().Contains('3')) Response.Write(type5); else Response.Write(type2);  %>"><%= d3.Memory1.size %> </td>
            <td class="<% if (ramWinner.ToString().Contains('4')) Response.Write(type5); else Response.Write(type1);  %>"><%= d4.Memory1.size %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kecepatan Data</p>    
            </th>
            <td class="<% if (ramWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Memory1.data_rate %> </td>
            <td class="<% if (ramWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Memory1.data_rate %> </td>
            <td class="<% if (ramWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Memory1.data_rate %> </td>
            <td class="<% if (ramWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Memory1.data_rate %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Channel</p>    
            </th>
            <td class="<% if (ramWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Memory1.channel %> </td>
            <td class="<% if (ramWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Memory1.channel %> </td>
            <td class="<% if (ramWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Memory1.channel %> </td>
            <td class="<% if (ramWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Memory1.channel %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kapasitas Maks</p>    
            </th>
            <td class="<% if (ramWinner.ToString().Contains('1')) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Memory1.max_capacity %> </td>
            <td class="<% if (ramWinner.ToString().Contains('2')) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Memory1.max_capacity %> </td>
            <td class="<% if (ramWinner.ToString().Contains('3')) Response.Write(type4); else Response.Write(type2);  %>"><%= d3.Memory1.max_capacity %> </td>
            <td class="<% if (ramWinner.ToString().Contains('4')) Response.Write(type4); else Response.Write(type1);  %>"><%= d4.Memory1.max_capacity %> </td>
        </tr>
        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus5" style="margin-top: 10px;">Ruang Penyimpanan</p>    
            </th>
            <%if (ramWinner >= 1 && ramWinner <= 4) { %>
            <%if (ramWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (ramWinner == 3) { %>
            <td></td>
            <td></td>
            <%} %>
            <%if (ramWinner == 4) { %>
            <td></td>
            <td></td>
            <td></td>
            <%} %>
            <td>
                <div class="z-1 text-end" style="margin-top: -60px;">
                    <svg width="50" height="90" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                    </svg>  
                </div>    
            </td>
            <%} %>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kapasitas</p>    
            </th>
            <td class="<% if (storageWinner.ToString().Contains('1')) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Storage1.size %> </td>
            <td class="<% if (storageWinner.ToString().Contains('2')) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Storage1.size %> </td>
            <td class="<% if (storageWinner.ToString().Contains('3')) Response.Write(type5); else Response.Write(type2);  %>"><%= d3.Storage1.size %> </td>
            <td class="<% if (storageWinner.ToString().Contains('4')) Response.Write(type5); else Response.Write(type1);  %>"><%= d4.Storage1.size %> </td>
        </tr>storageWinner
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Tipe</p>    
            </th>
            <td class="<% if (storageWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Storage1.type %> </td>
            <td class="<% if (storageWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Storage1.type %> </td>
            <td class="<% if (storageWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Storage1.type %> </td>
            <td class="<% if (storageWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Storage1.type %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kapasitas Maks</p>    
            </th>
            <td class="<% if (storageWinner.ToString().Contains('1')) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Storage1.max_caoacity %> </td>
            <td class="<% if (storageWinner.ToString().Contains('2')) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Storage1.max_caoacity %> </td>
            <td class="<% if (storageWinner.ToString().Contains('3')) Response.Write(type4); else Response.Write(type2);  %>"><%= d3.Storage1.max_caoacity %> </td>
            <td class="<% if (storageWinner.ToString().Contains('4')) Response.Write(type4); else Response.Write(type1);  %>"><%= d4.Storage1.max_caoacity %> </td>
        </tr>
        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus5" style="margin-top: 10px;">Daya</p>    
            </th>
            <%if (storageWinner >= 1 && storageWinner <= 4) { %>
            <%if (storageWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (storageWinner == 3) { %>
            <td></td>
            <td></td>
            <%} %>
            <%if (storageWinner == 4) { %>
            <td></td>
            <td></td>
            <td></td>
            <%} %>
            <td>
                <div class="z-1 text-end" style="margin-top: -60px;">
                    <svg width="50" height="90" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                    </svg>  
                </div>    
            </td>
            <%} %>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kapasitas</p>    
            </th>
            <td class="<% if (batteryWinner.ToString().Contains('1')) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Battery1.capacity %> </td>
            <td class="<% if (batteryWinner.ToString().Contains('2')) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Battery1.capacity %> </td>
            <td class="<% if (batteryWinner.ToString().Contains('3')) Response.Write(type5); else Response.Write(type2);  %>"><%= d3.Battery1.capacity %> </td>
            <td class="<% if (batteryWinner.ToString().Contains('4')) Response.Write(type5); else Response.Write(type1);  %>"><%= d4.Battery1.capacity %> </td>
        </tr>storageWinner
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Watt</p>    
            </th>
            <td class="<% if (batteryWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Battery1.wattage %> </td>
            <td class="<% if (batteryWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Battery1.wattage %> </td>
            <td class="<% if (batteryWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Battery1.wattage %> </td>
            <td class="<% if (batteryWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.Battery1.wattage %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Jam Hidup</p>    
            </th>
            <td class="<% if (batteryWinner.ToString().Contains('1')) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Battery1.life_hours %> </td>
            <td class="<% if (batteryWinner.ToString().Contains('2')) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Battery1.life_hours %> </td>
            <td class="<% if (batteryWinner.ToString().Contains('3')) Response.Write(type4); else Response.Write(type2);  %>"><%= d3.Battery1.life_hours %> </td>
            <td class="<% if (batteryWinner.ToString().Contains('4')) Response.Write(type4); else Response.Write(type1);  %>"><%= d4.Battery1.life_hours %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="h4 text-white rounded-4 text-center mb-minus2" style="background-color: #353535; padding-bottom: 10px; padding-top: 10px; margin-top: 20px;">KAMERA</p>   
            </th>
            <%if (batteryWinner >= 1 && batteryWinner <= 4) { %>
            <%if (batteryWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (batteryWinner == 3) { %>
            <td></td>
            <td></td>
            <%} %>
            <%if (batteryWinner == 4) { %>
            <td></td>
            <td></td>
            <td></td>
            <%} %>
            <td>
                <div class="z-1 text-end" style="margin-top: -60px;">
                    <svg width="50" height="90" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                    </svg>  
                </div>    
            </td>
            <%} %>
        </tr>
        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus2">Kamera Depan</p>    
            </th>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Resolusi</p>    
            </th>
            <td class="<% if (fcameraWinner.ToString().Contains('1')) Response.Write(type5); else Response.Write(type2);  %>"><%= d.fCamera1.resolution %> </td>
            <td class="<% if (fcameraWinner.ToString().Contains('2')) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.fCamera1.resolution %> </td>
            <td class="<% if (fcameraWinner.ToString().Contains('3')) Response.Write(type5); else Response.Write(type2);  %>"><%= d3.fCamera1.resolution %> </td>
            <td class="<% if (fcameraWinner.ToString().Contains('4')) Response.Write(type5); else Response.Write(type1);  %>"><%= d4.fCamera1.resolution %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Megapixel</p>    
            </th>
            <td class="<% if (fcameraWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.fCamera1.megapixels %> </td>
            <td class="<% if (fcameraWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.fCamera1.megapixels %> </td>
            <td class="<% if (fcameraWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.fCamera1.megapixels %> </td>
            <td class="<% if (fcameraWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.fCamera1.megapixels %> </td>
        </tr>
        <tr >
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Framerate</p>    
            </th>
            <td class="<% if (fcameraWinner.ToString().Contains('1')) Response.Write(type4); else Response.Write(type2);  %>"><%= d.fCamera1.frame_rate %> </td>
            <td class="<% if (fcameraWinner.ToString().Contains('2')) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.fCamera1.frame_rate %> </td>
            <td class="<% if (fcameraWinner.ToString().Contains('3')) Response.Write(type4); else Response.Write(type2);  %>"><%= d3.fCamera1.frame_rate %> </td>
            <td class="<% if (fcameraWinner.ToString().Contains('4')) Response.Write(type4); else Response.Write(type1);  %>"><%= d4.fCamera1.frame_rate %> </td>
        </tr>

        <tr class="border-bottom">
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus2" style="margin-top: 10px;">Kamera Belakang</p>    
            </th>
            <%if (fcameraWinner >= 1 && fcameraWinner <= 4) { %>
            <%if (fcameraWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (fcameraWinner == 3) { %>
            <td></td>
            <td></td>
            <%} %>
            <%if (fcameraWinner == 4) { %>
            <td></td>
            <td></td>
            <td></td>
            <%} %>
            <td>
                <div class="z-1 text-end" style="margin-top: -60px;">
                    <svg width="50" height="90" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                    </svg>  
                </div>    
            </td>
            <%} %>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Resolusi</p>    
            </th>
            <td class="<% if (rcameraWinner.ToString().Contains('1')) Response.Write(type5); else Response.Write(type2);  %>"><%= d.rCamera1.resolution %> </td>
            <td class="<% if (rcameraWinner.ToString().Contains('2')) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.rCamera1.resolution %> </td>
            <td class="<% if (rcameraWinner.ToString().Contains('3')) Response.Write(type5); else Response.Write(type2);  %>"><%= d3.rCamera1.resolution %> </td>
            <td class="<% if (rcameraWinner.ToString().Contains('4')) Response.Write(type5); else Response.Write(type1);  %>"><%= d4.rCamera1.resolution %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Megapixel</p>    
            </th>
            <td class="<% if (rcameraWinner.ToString().Contains('1')) Response.Write(type3); else Response.Write(type2);  %>"><%= d.rCamera1.megapixels %> </td>
            <td class="<% if (rcameraWinner.ToString().Contains('2')) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.rCamera1.megapixels %> </td>
            <td class="<% if (rcameraWinner.ToString().Contains('3')) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.rCamera1.megapixels %> </td>
            <td class="<% if (rcameraWinner.ToString().Contains('4')) Response.Write(type3); else Response.Write(type1);  %>"><%= d4.rCamera1.megapixels %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Framerate</p>    
            </th>
            <td class="<% if (rcameraWinner.ToString().Contains('1')) Response.Write(type4); else Response.Write(type2);  %>"><%= d.rCamera1.frame_rate %> </td>
            <td class="<% if (rcameraWinner.ToString().Contains('2')) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.rCamera1.frame_rate %> </td>
            <td class="<% if (rcameraWinner.ToString().Contains('3')) Response.Write(type4); else Response.Write(type2);  %>"><%= d3.rCamera1.frame_rate %> </td>
            <td class="<% if (rcameraWinner.ToString().Contains('4')) Response.Write(type4); else Response.Write(type1);  %>"><%= d4.rCamera1.frame_rate %> </td>
        </tr>
        <tr>
            <td></td>
            <%if (rcameraWinner >= 1 && rcameraWinner <= 4) { %>
            <%if (rcameraWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (rcameraWinner == 3) { %>
            <td></td>
            <td></td>
            <%} %>
            <%if (rcameraWinner == 4) { %>
            <td></td>
            <td></td>
            <td></td>
            <%} %>
            <td>
                <div class="z-1 text-end" style="margin-top: -60px;">
                    <svg width="50" height="90" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                    </svg>  
                </div>    
            </td>
            <%} %>
        </tr>
        </tbody>
    </table>
</asp:Content>

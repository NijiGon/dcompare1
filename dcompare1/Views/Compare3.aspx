<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="Compare3.aspx.cs" Inherits="dcompare1.Views.Compare3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- BANNER -->
    <div id="banner" class="container-fluid d-flex flex-column align-items-center" style="background-color: #E8E8E8;">
    <div class="row mt-5">
        <div class="col">
        <div class="d-flex flex-column align-items-center justify-content-center text-center me-5" style="padding-top: 80px;">
            <div class="">
                <img src="../Asset/devices/phones/<%= d.image %>" alt="" class="shadow z-0 rounded-4" style="height: 312px">
                <div class="z-1" style="margin-top: -25%; margin-left: 7vw;">
                    <svg width="5vw" height="76" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <% if (winner == 1 || winner == 12 || winner == 13) { %>
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                        <%} %>
                    </svg>  
                </div>                
            </div>

            <div class="z-1" style="max-width: 70%;">
                <p class="fw-medium h3 lh-1">
                    <%= d.name %>
                </p>
            </div>            
    
            <div class="rounded-3 d-flex justify-content-center" style="background: #6300E1; padding-top: 8px; min-width: 150px; padding-bottom: 8px;">
                <svg width="30" height="25" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg" style="margin-left: -10px;">
                <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="white"/>
                </svg>
                <p class="h2 text-white ms-2" style="margin-top: -4px; margin-bottom: -4px;"><%= rating %></p>     
            </div>
        </div>
        </div>
        <div class="col">
        <div class="d-flex flex-column align-items-center justify-content-center text-center me-5" style="padding-top: 80px; padding-bottom: 80px;">
            <div class="">
                <img src="../Asset/devices/phones/<%= d2.image %>" alt="" class="shadow z-0 rounded-4" style="height: 312px">
                <div class="z-1 crown-hid" style="margin-top: -60px; margin-left: 100px;">
                    <svg width="76" height="76" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <% if (winner == 2 || winner == 12 || winner == 23) { %>
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                        <%} %>
                    </svg>  
                </div>                
            </div>

            <div class="z-1" style="max-width: 70%;">
                <p class="fw-medium h3 lh-1">
                    <%= d2.name %>
                    </p>
            </div>            
    
            <div class="rounded-3 d-flex justify-content-center" style="background: #6300E1; padding-top: 8px; min-width: 150px; padding-bottom: 8px;">
                <svg width="30" height="25" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg" style="margin-left: -10px;">
                <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="white"/>
                </svg>
                <p class="h2 text-white ms-2" style="margin-top: -4px; margin-bottom: -4px;"><%= rating2 %></p>     
            </div>
        </div>
        </div>
        <div class="col">
        <div class="d-flex flex-column align-items-center justify-content-center text-center me-5" style="padding-top: 80px; padding-bottom: 80px;">
            <div class="">
                <img src="../Asset/devices/phones/<%= d3.image %>" alt="" class="shadow z-0 rounded-4" style="height: 312px">
                <div class="z-1" style="margin-top: -60px; margin-left: 100px;">
                    <svg class="" width="76" height="76" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <% if (winner == 3 || winner == 13 || winner == 23) { %>
                        <circle cx="38" cy="38" r="38" fill="white"/>
                        <path d="M38 0C16.986 0 0 17.1 0 38C0 58.9 17.1 76 38 76C58.9 76 76 58.9 76 38C76 17.1 58.9 0 38 0ZM53.2 51.072C53.2 52.364 52.364 53.2 51.072 53.2H24.928C23.636 53.2 22.8 52.364 22.8 51.072V49.4H53.2V51.072ZM53.2 45.6H22.8L19 22.8L30.4 30.4L38 19L45.6 30.4L57 22.8L53.2 45.6Z" fill="#6300E1"/>
                        <%} %>
                    </svg>  
                </div>                
            </div>

            <div class="z-1" style="max-width: 70%;">
                <p class="fw-medium h3 lh-1">
                    <%= d3.name %>
                </p>
            </div>            
    
            <div class="rounded-3 d-flex justify-content-center" style="background: #6300E1; padding-top: 8px; min-width: 150px; padding-bottom: 8px;">
                <svg width="30" height="25" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg" style="margin-left: -10px;">
                <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="white"/>
                </svg>
                <p class="h2 text-white ms-2" style="margin-top: -4px; margin-bottom: -4px;"><%= rating3 %></p>     
            </div>
        </div>
        </div>
        <div class="col">
        <div class="" style="margin-top: 90%;">
            <a href="">
                <button class="" style="background-color: #E8E8E8; border-color: transparent;">
                <svg width="90" height="90" viewBox="0 0 97 97" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M43.65 72.75H53.35V53.35H72.75V43.65H53.35V24.25H43.65V43.65H24.25V53.35H43.65V72.75ZM48.5 97C41.7908 97 35.4858 95.7261 29.585 93.1782C23.6842 90.6303 18.5512 87.1755 14.1862 82.8137C9.82125 78.4487 6.36643 73.3158 3.8218 67.415C1.27717 61.5142 0.00323333 55.2092 0 48.5C0 41.7908 1.27393 35.4858 3.8218 29.585C6.36967 23.6842 9.82448 18.5512 14.1862 14.1862C18.5512 9.82125 23.6842 6.36643 29.585 3.8218C35.4858 1.27717 41.7908 0.00323333 48.5 0C55.2092 0 61.5142 1.27393 67.415 3.8218C73.3158 6.36967 78.4487 9.82448 82.8137 14.1862C87.1787 18.5512 90.6352 23.6842 93.183 29.585C95.7309 35.4858 97.0032 41.7908 97 48.5C97 55.2092 95.7261 61.5142 93.1782 67.415C90.6303 73.3158 87.1755 78.4487 82.8137 82.8137C78.4487 87.1787 73.3158 90.6352 67.415 93.183C61.5142 95.7309 55.2092 97.0032 48.5 97Z" fill="url(#paint0_linear_74_505)"/>
                    <defs>
                    <linearGradient id="paint0_linear_74_505" x1="48.5" y1="0" x2="48.5" y2="48.3753" gradientUnits="userSpaceOnUse">
                    <stop stop-color="#575757"/>
                    <stop offset="1"/>
                    </linearGradient>
                    </defs>
                </svg>              
                </button>
            </a>
            </div>
        </div>
        </div>
    </div>

    <!-- SEARCH -->
    <asp:UpdatePanel ID="updatePanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div id="search" class="d-flex flex-column justify-content-center align-items-center mt-5 z-1">
                <p class="h2" style="color: #6300E1;">Mulai bandingkan</p>
                <input id="searchInput" class="form-control rounded-pill bg-white z-1" style="width: 25vw;" type="search" placeholder="Cari Device" aria-label="Search" style="background-color: #EEEEEE;">
                <div class="z-0" style="width: 25%; position:relative">
                    <ul id="searchResults" class="list-unstyled rounded-4 border w-100 border-1" style="position: absolute; top: 100%; left: 0; background-color: white; margin-top: -35px; padding: 12% 0 3% 0; border-color: lightgray !important;">
                        <!-- Search results will be dynamically added here -->
                    </ul>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

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
                        <a href="Compare1.aspx?id=<%= d.Id %>" class="btn rounded-4 fw-bold" style="width: 25rem; padding: 1.5%; background-color: #353535; color: white;">ulasan anda</a>
                    </div>
                </div>
            </th>
            <th scope="col">
                <div class="d-flex flex-column align-items-start">
                    <p class="h5 fw-bold"><%= d2.name %></p>
                    <div class="mb-4">
                        <a href="Compare1.aspx?id=<%= d2.Id %>" class="btn rounded-4 fw-bold" style="width: 25rem; padding: 1.5%; background-color: #353535; color: white;">ulasan anda</a>
                    </div>
                </div>
            </th>
            <th scope="col">
                <div class="d-flex flex-column align-items-start">
                    <p class="h5 fw-bold"><%= d3.name %></p>
                    <div class="mb-4">
                        <a href="Compare1.aspx?id=<%= d3.Id %>" class="btn rounded-4 fw-bold" style="width: 25rem; padding: 1.5%; background-color: #353535; color: white;">ulasan anda</a>
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
            <td class="<% if (dimensionWinner == 1 || dimensionWinner == 12 || dimensionWinner == 13) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Dimension1.length %> </td>
            <td class="<% if (dimensionWinner == 2 || dimensionWinner == 12 || dimensionWinner == 23) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Dimension1.length %> </td>
            <td class="<% if (dimensionWinner == 3 || dimensionWinner == 23 || dimensionWinner == 13) Response.Write(type5); else Response.Write(type1);  %>"><%= d3.Dimension1.length %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Lebar</p>    
            </th>
            <td class="<% if (dimensionWinner == 1 || dimensionWinner == 12 || dimensionWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Dimension1.width %> </td>
            <td class="<% if (dimensionWinner == 2 || dimensionWinner == 12 || dimensionWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Dimension1.width %> </td>
            <td class="<% if (dimensionWinner == 3 || dimensionWinner == 23 || dimensionWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Dimension1.width %> </td>
        </tr>
        <tr class="">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Tinggi</p>    
            </th>
            <td class="<% if (dimensionWinner == 1 || dimensionWinner == 12 || dimensionWinner == 13) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Dimension1.height %> </td>
            <td class="<% if (dimensionWinner == 2 || dimensionWinner == 12 || dimensionWinner == 23) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Dimension1.height %> </td>
            <td class="<% if (dimensionWinner == 3 || dimensionWinner == 23 || dimensionWinner == 13) Response.Write(type4); else Response.Write(type1);  %>"><%= d3.Dimension1.height %> </td>
        </tr>

        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus2" style="margin-top: 10px;">Layar</p>    
            </th>
            <%if (dimensionWinner >= 1 && dimensionWinner <=3) { %>
            <%if (dimensionWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (dimensionWinner == 3) { %>
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
            <td class="<% if (displayWinner == 1 || displayWinner == 12 || displayWinner == 13) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Display1.height %> </td>
            <td class="<% if (displayWinner == 2 || displayWinner == 12 || displayWinner == 23) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Display1.height %> </td>
            <td class="<% if (displayWinner == 3 || displayWinner == 23 || displayWinner == 13) Response.Write(type5); else Response.Write(type1);  %>"><%= d3.Display1.height %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Lebar</p>    
            </th>
            <td class="<% if (displayWinner == 1 || displayWinner == 12 || displayWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Display1.width %> </td>
            <td class="<% if (displayWinner == 2 || displayWinner == 12 || displayWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Display1.width %> </td>
            <td class="<% if (displayWinner == 3 || displayWinner == 23 || displayWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Display1.width %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Refresh Rate</p>    
            </th>
            <td class="<% if (displayWinner == 1 || displayWinner == 12 || displayWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Display1.refresh_rate %> </td>
            <td class="<% if (displayWinner == 2 || displayWinner == 12 || displayWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Display1.refresh_rate %> </td>
            <td class="<% if (displayWinner == 3 || displayWinner == 23 || displayWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Display1.refresh_rate %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Gamut Warna</p>    
            </th>
            <td class="<% if (displayWinner == 1 || displayWinner == 12 || displayWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Display1.color_gamut %> </td>
            <td class="<% if (displayWinner == 2 || displayWinner == 12 || displayWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Display1.color_gamut %> </td>
            <td class="<% if (displayWinner == 3 || displayWinner == 23 || displayWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Display1.color_gamut %> </td>
        </tr>
        <tr class="">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Ukuran</p>    
            </th>
            <td class="<% if (displayWinner == 1 || displayWinner == 12 || displayWinner == 13) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Display1.size %> </td>
            <td class="<% if (displayWinner == 2 || displayWinner == 12 || displayWinner == 23) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Display1.size %> </td>
            <td class="<% if (displayWinner == 3 || displayWinner == 23 || displayWinner == 13) Response.Write(type4); else Response.Write(type1);  %>"><%= d3.Display1.size %> </td>
        </tr>

        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus5" style="margin-top: 10px;">Suara</p>    
            </th>
            <%if (displayWinner >= 1 && displayWinner <=3) { %>
            <%if (displayWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (displayWinner == 3) { %>
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
            <td class="<% if (audioWinner == 1 || audioWinner == 12 || audioWinner == 13) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Audio1.name %> </td>
            <td class="<% if (audioWinner == 2 || audioWinner == 12 || audioWinner == 23) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Audio1.name %> </td>
            <td class="<% if (audioWinner == 3 || audioWinner == 23 || audioWinner == 13) Response.Write(type5); else Response.Write(type1);  %>"><%= d3.Audio1.name %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Tipe</p>    
            </th>
            <td class="<% if (audioWinner == 1 || audioWinner == 12 || audioWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Audio1.type %> </td>
            <td class="<% if (audioWinner == 2 || audioWinner == 12 || audioWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Audio1.type %> </td>
            <td class="<% if (audioWinner == 3 || audioWinner == 23 || audioWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Audio1.type %> </td>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Mikrofon</p>    
            </th>
            <td class="<% if (audioWinner == 1 || audioWinner == 12 || audioWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Audio1.microphone %> </td>
            <td class="<% if (audioWinner == 2 || audioWinner == 12 || audioWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Audio1.microphone %> </td>
            <td class="<% if (audioWinner == 3 || audioWinner == 23 || audioWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Audio1.microphone %> </td>
        </tr>
        <tr class="">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Jumlah Speaker</p>    
            </th>
            <td class="<% if (audioWinner == 1 || audioWinner == 12 || audioWinner == 13) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Audio1.quantity %> </td>
            <td class="<% if (audioWinner == 2 || audioWinner == 12 || audioWinner == 23) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Audio1.quantity %> </td>
            <td class="<% if (audioWinner == 3 || audioWinner == 23 || audioWinner == 13) Response.Write(type4); else Response.Write(type1);  %>"><%= d3.Audio1.quantity %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="h4 text-white rounded-4 text-center" style="background-color: #353535; padding-bottom: 10px; padding-top: 10px; width: 120%;">PERFORMA</p>   
            </th>
            <%if (audioWinner >= 1 && audioWinner <=3) { %>
            <%if (audioWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (audioWinner == 3) { %>
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
            <td class="<% if (processorWinner == 1 || processorWinner == 12 || processorWinner == 13) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Processor1.name %> </td>
            <td class="<% if (processorWinner == 2 || processorWinner == 12 || processorWinner == 23) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Processor1.name %> </td>
            <td class="<% if (processorWinner == 3 || processorWinner == 23 || processorWinner == 13) Response.Write(type5); else Response.Write(type1);  %>"><%= d3.Processor1.name %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Tipe</p>    
            </th>
            <td class="<% if (processorWinner == 1 || processorWinner == 12 || processorWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Processor1.type %> </td>
            <td class="<% if (processorWinner == 2 || processorWinner == 12 || processorWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Processor1.type %> </td>
            <td class="<% if (processorWinner == 3 || processorWinner == 23 || processorWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Processor1.type %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Pabrikan</p>    
            </th>
            <td class="<% if (processorWinner == 1 || processorWinner == 12 || processorWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Processor1.manufacturer %> </td>
            <td class="<% if (processorWinner == 2 || processorWinner == 12 || processorWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Processor1.manufacturer %> </td>
            <td class="<% if (processorWinner == 3 || processorWinner == 23 || processorWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Processor1.manufacturer %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kecepatan Clock</p>    
            </th>
            <td class="<% if (processorWinner == 1 || processorWinner == 12 || processorWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Processor1.clock_speed %> </td>
            <td class="<% if (processorWinner == 2 || processorWinner == 12 || processorWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Processor1.clock_speed %> </td>
            <td class="<% if (processorWinner == 3 || processorWinner == 23 || processorWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Processor1.clock_speed %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Jumlah Core</p>    
            </th>
            <td class="<% if (processorWinner == 1 || processorWinner == 12 || processorWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Processor1.cores %> </td>
            <td class="<% if (processorWinner == 2 || processorWinner == 12 || processorWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Processor1.cores %> </td>
            <td class="<% if (processorWinner == 3 || processorWinner == 23 || processorWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Processor1.cores %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Jumlah Thread</p>    
            </th>
            <td class="<% if (processorWinner == 1 || processorWinner == 12 || processorWinner == 13) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Processor1.threads %> </td>
            <td class="<% if (processorWinner == 2 || processorWinner == 12 || processorWinner == 23) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Processor1.threads %> </td>
            <td class="<% if (processorWinner == 3 || processorWinner == 23 || processorWinner == 13) Response.Write(type4); else Response.Write(type1);  %>"><%= d3.Processor1.threads %> </td>
        </tr>
        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus2">Grafis</p>    
            </th>
            <%if (processorWinner >= 1 && processorWinner <=3) { %>
            <%if (processorWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (processorWinner == 3) { %>
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
            <td class="<% if (graphicsWinner == 1 || graphicsWinner == 12 || graphicsWinner == 13) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Graphic.name %> </td>
            <td class="<% if (graphicsWinner == 2 || graphicsWinner == 12 || graphicsWinner == 23) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Graphic.name %> </td>
            <td class="<% if (graphicsWinner == 3 || graphicsWinner == 23 || graphicsWinner == 13) Response.Write(type5); else Response.Write(type1);  %>"><%= d3.Graphic.name %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Tipe</p>    
            </th>
            <td class="<% if (graphicsWinner == 1 || graphicsWinner == 12 || graphicsWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Graphic.type %> </td>
            <td class="<% if (graphicsWinner == 2 || graphicsWinner == 12 || graphicsWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Graphic.type %> </td>
            <td class="<% if (graphicsWinner == 2 || graphicsWinner == 12 || graphicsWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d3.Graphic.type %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Pabrikan</p>    
            </th>
            <td class="<% if (graphicsWinner == 1 || graphicsWinner == 12 || graphicsWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Graphic.manufacturer %> </td>
            <td class="<% if (graphicsWinner == 2 || graphicsWinner == 12 || graphicsWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Graphic.manufacturer %> </td>
            <td class="<% if (graphicsWinner == 3 || graphicsWinner == 23 || graphicsWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Graphic.manufacturer %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Watt</p>    
            </th>
            <td class="<% if (graphicsWinner == 1 || graphicsWinner == 12 || graphicsWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Graphic.wattage %> </td>
            <td class="<% if (graphicsWinner == 2 || graphicsWinner == 12 || graphicsWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Graphic.wattage %> </td>
            <td class="<% if (graphicsWinner == 3 || graphicsWinner == 23 || graphicsWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Graphic.wattage %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kecepatan Clock</p>    
            </th>
            <td class="<% if (graphicsWinner == 1 || graphicsWinner == 12 || graphicsWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Graphic.clock_speed %> </td>
            <td class="<% if (graphicsWinner == 2 || graphicsWinner == 12 || graphicsWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Graphic.clock_speed %> </td>
            <td class="<% if (graphicsWinner == 3 || graphicsWinner == 23 || graphicsWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Graphic.clock_speed %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">VRAM</p>    
            </th>
            <td class="<% if (graphicsWinner == 1 || graphicsWinner == 12 || graphicsWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Graphic.vram %> </td>
            <td class="<% if (graphicsWinner == 2 || graphicsWinner == 12 || graphicsWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Graphic.vram %> </td>
            <td class="<% if (graphicsWinner == 3 || graphicsWinner == 23 || graphicsWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Graphic.vram %> </td>
        <tr class="">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kecepatan Data</p>    
            </th>
            <td class="<% if (graphicsWinner == 1 || graphicsWinner == 12 || graphicsWinner == 13) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Graphic.data_rate %> </td>
            <td class="<% if (graphicsWinner == 2 || graphicsWinner == 12 || graphicsWinner == 23) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Graphic.data_rate %> </td>
            <td class="<% if (graphicsWinner == 3 || graphicsWinner == 23 || graphicsWinner == 13) Response.Write(type4); else Response.Write(type1);  %>"><%= d3.Graphic.data_rate %> </td>
        </tr>
        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus5" style="margin-top: 10px;">RAM</p>    
            </th>
            <%if (graphicsWinner >= 1 && graphicsWinner <=3) { %>
            <%if (graphicsWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (graphicsWinner == 3) { %>
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
            <td class="<% if (ramWinner == 1 || ramWinner == 12 || ramWinner == 13) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Memory1.size %> </td>
            <td class="<% if (ramWinner == 2 || ramWinner == 12 || ramWinner == 23) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Memory1.size %> </td>
            <td class="<% if (ramWinner == 3 || ramWinner == 23 || ramWinner == 13) Response.Write(type5); else Response.Write(type1);  %>"><%= d3.Memory1.size %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kecepatan Data</p>    
            </th>
            <td class="<% if (ramWinner == 1 || ramWinner == 12 || ramWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Memory1.data_rate %> </td>
            <td class="<% if (ramWinner == 2 || ramWinner == 12 || ramWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Memory1.data_rate %> </td>
            <td class="<% if (ramWinner == 3 || ramWinner == 23 || ramWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Memory1.data_rate %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Channel</p>    
            </th>
            <td class="<% if (ramWinner == 1 || ramWinner == 12 || ramWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Memory1.channel %> </td>
            <td class="<% if (ramWinner == 2 || ramWinner == 12 || ramWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Memory1.channel %> </td>
            <td class="<% if (ramWinner == 3 || ramWinner == 23 || ramWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Memory1.channel %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kapasitas Maks</p>    
            </th>
            <td class="<% if (ramWinner == 1 || ramWinner == 12 || ramWinner == 13) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Memory1.max_capacity %> </td>
            <td class="<% if (ramWinner == 2 || ramWinner == 12 || ramWinner == 23) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Memory1.max_capacity %> </td>
            <td class="<% if (ramWinner == 3 || ramWinner == 23 || ramWinner == 13) Response.Write(type4); else Response.Write(type1);  %>"><%= d3.Memory1.max_capacity %> </td>
        </tr>
        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus5" style="margin-top: 10px;">Ruang Penyimpanan</p>    
            </th>
            <%if (ramWinner >= 1 && ramWinner <=3) { %>
            <%if (ramWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (ramWinner == 3) { %>
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
            <td class="<% if (storageWinner == 1 || storageWinner == 12 || storageWinner == 13) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Storage1.size %> </td>
            <td class="<% if (storageWinner == 2 || storageWinner == 12 || storageWinner == 23) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Storage1.size %> </td>
            <td class="<% if (storageWinner == 3 || storageWinner == 23 || storageWinner == 13) Response.Write(type5); else Response.Write(type1);  %>"><%= d3.Storage1.size %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Tipe</p>    
            </th>
            <td class="<% if (storageWinner == 1 || storageWinner == 12 || storageWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Storage1.type %> </td>
            <td class="<% if (storageWinner == 2 || storageWinner == 12 || storageWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Storage1.type %> </td>
            <td class="<% if (storageWinner == 3 || storageWinner == 23 || storageWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Storage1.type %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Kapasitas Maks</p>    
            </th>
            <td class="<% if (storageWinner == 1 || storageWinner == 12 || storageWinner == 13) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Storage1.max_caoacity %> </td>
            <td class="<% if (storageWinner == 2 || storageWinner == 12 || storageWinner == 23) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Storage1.max_caoacity %> </td>
            <td class="<% if (storageWinner == 3 || storageWinner == 23 || storageWinner == 13) Response.Write(type4); else Response.Write(type1);  %>"><%= d3.Storage1.max_caoacity %> </td>
        </tr>
        <tr>
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus5" style="margin-top: 10px;">Daya</p>    
            </th>
            <%if (storageWinner >= 1 && ramWinner <=3) { %>
            <%if (storageWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (storageWinner == 3) { %>
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
            <td class="<% if (batteryWinner == 1 || batteryWinner == 12 || batteryWinner == 13) Response.Write(type5); else Response.Write(type2);  %>"><%= d.Battery1.capacity %> </td>
            <td class="<% if (batteryWinner == 2 || batteryWinner == 12 || batteryWinner == 23) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.Battery1.capacity %> </td>
            <td class="<% if (batteryWinner == 3 || batteryWinner == 23 || batteryWinner == 13) Response.Write(type5); else Response.Write(type1);  %>"><%= d3.Battery1.capacity %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Watt</p>    
            </th>
            <td class="<% if (batteryWinner == 1 || batteryWinner == 12 || batteryWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.Battery1.wattage %> </td>
            <td class="<% if (batteryWinner == 2 || batteryWinner == 12 || batteryWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.Battery1.wattage %> </td>
            <td class="<% if (batteryWinner == 3 || batteryWinner == 23 || batteryWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.Battery1.wattage %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Jam Hidup</p>    
            </th>
            <td class="<% if (batteryWinner == 1 || batteryWinner == 12 || batteryWinner == 13) Response.Write(type4); else Response.Write(type2);  %>"><%= d.Battery1.life_hours %> </td>
            <td class="<% if (batteryWinner == 2 || batteryWinner == 12 || batteryWinner == 23) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.Battery1.life_hours %> </td>
            <td class="<% if (batteryWinner == 3 || batteryWinner == 23 || batteryWinner == 13) Response.Write(type4); else Response.Write(type1);  %>"><%= d3.Battery1.life_hours %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="h4 text-white rounded-4 text-center mb-minus2" style="background-color: #353535; padding-bottom: 10px; padding-top: 10px; margin-top: 20px;">KAMERA</p>   
            </th>
            <%if (batteryWinner >= 1 && batteryWinner <=3) { %>
            <%if (batteryWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (batteryWinner == 3) { %>
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
            <td class="<% if (fcameraWinner == 1 || fcameraWinner == 12 || fcameraWinner == 13) Response.Write(type5); else Response.Write(type2);  %>"><%= d.fCamera1.resolution %> </td>
            <td class="<% if (fcameraWinner == 2 || fcameraWinner == 12 || fcameraWinner == 23) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.fCamera1.resolution %> </td>
            <td class="<% if (fcameraWinner == 3 || fcameraWinner == 23 || fcameraWinner == 13) Response.Write(type5); else Response.Write(type1);  %>"><%= d3.fCamera1.resolution %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Megapixel</p>    
            </th>
            <td class="<% if (fcameraWinner == 1 || fcameraWinner == 12 || fcameraWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.fCamera1.megapixels %> </td>
            <td class="<% if (fcameraWinner == 2 || fcameraWinner == 12 || fcameraWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.fCamera1.megapixels %> </td>
            <td class="<% if (fcameraWinner == 3 || fcameraWinner == 23 || fcameraWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.fCamera1.megapixels %> </td>
        </tr>
        <tr >
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Framerate</p>    
            </th>
            <td class="<% if (fcameraWinner == 1 || fcameraWinner == 12 || fcameraWinner == 13) Response.Write(type4); else Response.Write(type2);  %>"><%= d.fCamera1.frame_rate %> </td>
            <td class="<% if (fcameraWinner == 2 || fcameraWinner == 12 || fcameraWinner == 23) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.fCamera1.frame_rate %> </td>
            <td class="<% if (fcameraWinner == 3 || fcameraWinner == 23 || fcameraWinner == 13) Response.Write(type4); else Response.Write(type1);  %>"><%= d3.fCamera1.frame_rate %> </td>
        </tr>

        <tr class="border-bottom">
            <th scope="row" class="fs-5">
                <p id="spec-subgrup" class="mb-minus2" style="margin-top: 10px;">Kamera Belakang</p>    
            </th>
            <%if (fcameraWinner >= 1 && fcameraWinner <=3) { %>
            <%if (fcameraWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (fcameraWinner == 3) { %>
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
            <td class="<% if (rcameraWinner == 1 || rcameraWinner == 12 || rcameraWinner == 13) Response.Write(type5); else Response.Write(type2);  %>"><%= d.rCamera1.resolution %> </td>
            <td class="<% if (rcameraWinner == 2 || rcameraWinner == 12 || rcameraWinner == 23) Response.Write(type5); else Response.Write(type2);  %>"><%= d2.rCamera1.resolution %> </td>
            <td class="<% if (rcameraWinner == 3 || rcameraWinner == 23 || rcameraWinner == 13) Response.Write(type5); else Response.Write(type1);  %>"><%= d3.rCamera1.resolution %> </td>
        </tr>
        <tr class="border-bottom">
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Megapixel</p>    
            </th>
            <td class="<% if (rcameraWinner == 1 || rcameraWinner == 12 || rcameraWinner == 13) Response.Write(type3); else Response.Write(type2);  %>"><%= d.rCamera1.megapixels %> </td>
            <td class="<% if (rcameraWinner == 2 || rcameraWinner == 12 || rcameraWinner == 23) Response.Write(type3); else Response.Write(type2);  %>"><%= d2.rCamera1.megapixels %> </td>
            <td class="<% if (rcameraWinner == 3 || rcameraWinner == 23 || rcameraWinner == 13) Response.Write(type3); else Response.Write(type1);  %>"><%= d3.rCamera1.megapixels %> </td>
        </tr>
        <tr>
            <th scope="row" class="">
                <p class="mb-minus5 fw-normal">Framerate</p>    
            </th>
            <td class="<% if (rcameraWinner == 1 || rcameraWinner == 12 || rcameraWinner == 13) Response.Write(type4); else Response.Write(type2);  %>"><%= d.rCamera1.frame_rate %> </td>
            <td class="<% if (rcameraWinner == 2 || rcameraWinner == 12 || rcameraWinner == 23) Response.Write(type4); else Response.Write(type2);  %>"><%= d2.rCamera1.frame_rate %> </td>
            <td class="<% if (rcameraWinner == 3 || rcameraWinner == 23 || rcameraWinner == 13) Response.Write(type4); else Response.Write(type1);  %>"><%= d3.rCamera1.frame_rate %> </td>
        </tr>
        <tr>
            <td></td>
            <%if (rcameraWinner >= 1 && rcameraWinner <=3) { %>
            <%if (rcameraWinner == 2) { %>
            <td></td>
            <%} %>
            <%if (rcameraWinner == 3) { %>
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
    <script type="text/javascript">
        document.getElementById('searchResults').style.display = "none";
        function searchDevices() {
            var searchInput = document.getElementById('searchInput');
            var searchResults = document.getElementById('searchResults');
            var searchText = searchInput.value;
            if (searchText == "") searchResults.style.display = "none";
            else {
                searchResults.style.display = "block";

                var id1 = <%= Request.QueryString["id"] %>;
                var id_2 = <%= Request.QueryString["id2"] %>;
                var id_3 = <%= Request.QueryString["id3"] %>;
                // Make an AJAX request to the server
                var xhr = new XMLHttpRequest();
                xhr.open('GET', 'SearchDevices2.aspx?id=' + id1 + '&id2=' + id_2 + '&id3=' + id_3 + '&keywords=' + searchText, true);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        // Update the search results container with the received HTML
                        searchResults.innerHTML = xhr.responseText;
                    }
                };
                xhr.send();
            }
        }

        document.getElementById('searchInput').addEventListener('keyup', searchDevices);
    </script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="Compare1.aspx.cs" Inherits="dcompare1.Views.Compare1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="background-color: #E8E8E8;">
    <div class="row">
        <div class="col mt-5">
        <div class="d-flex justify-content-center" style="padding-top: 80px; padding-bottom: 80px;">
            <img src="../Asset/devices/phones/<%= d.image %>" alt="" class="me-5 rounded-4 shadow" style="width: 15vw;">
            <div class="">
            <p id="nb" class="fw-bold h2">
                <%= d.name %>
            </p>
    
            <div class="rounded-3 d-flex justify-content-center w-" style="background: #6300E1 ;padding-top: 10px; width: 62%;">
                <svg width="35" height="33" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg" style="margin-left: -10px;">
                <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="white"/>
                </svg>
                <p id="nb" class="h1 text-white ms-2" style="margin-top: -4px;"><%= rating %></p>     
            </div>
            
            <div class="bg-white rounded-3 w-75 d-flex flex-column align-items-center p-2 mt-3 shadow pt-3">
                <p  id="nr" class="h6"> <%= d.Storage1.max_caoacity %> GB &nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp <%= d.Memory1.max_capacity %> GB</p>
                <%--<p id="nr" class="h5 fw-bold">Rp19.100.000,-</p>--%>
                <p id="nr" class="h5 fw-bold"><%= data %>,-</p>
            </div>    
            </div>
            
            <div class="ms-5" style="margin-top: 10%;">
            <a href="">
                <button class="mt-3" style="background-color: #E8E8E8; border-color: transparent;">
                <svg width="97" height="97" viewBox="0 0 97 97" fill="none" xmlns="http://www.w3.org/2000/svg">
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
    </div>

    <!-- DEVICE SPEC -->
    <div class="mt-5 d-flex" style="padding: 0% 5% 0% 3.5%;">
    <div class="" style="margin-right: 42vw;">
        <div id="nb">
        <p class="lh-1 fs-4">
            <%= d.name %>
            <br>
        </p>
        </div>
      
        <div class="d-flex">
        <!-- <div class="border rounded-3 border-black border-2 d-flex" style="width: 13.5rem; height: 2.8rem;">
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
            <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
            <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
            <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
            <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
            <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
            </svg>
            <h2 class="ms-3 fs-2">5</h1>
        </div> -->

        <div id="nb" class="">
            <button class="btn rounded-4 ms fw-medium" style="width: 200%; padding: 9%; background-color: #353535; color: white;">ulasan anda</button>
        </div>
        </div>
    </div>

    <!-- SEARCH -->
        <asp:UpdatePanel ID="updatePanel" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div id="search" style="margin-left: 4.5vw" class="d-flex flex-column justify-content-center align-items-center z-1">
                    <p class="h2" style="color: #6300E1;">Mulai bandingkan</p>
                    <input id="searchInput" class="form-control rounded-pill bg-white z-1" style="width: 25vw;" type="search" placeholder="Cari Device" aria-label="Search" style="background-color: #EEEEEE;">
                    <div class="z-0" style="width: 100%; position: relative;">
                        <ul id="searchResults" class="list-unstyled rounded-4 border w-100 border-1" style="position: absolute; top: 100%; left: 0; background-color: white; margin-top: -35px; padding: 12% 0 3% 0; border-color: lightgray !important;">
                            <!-- Search results will be dynamically added here -->
                        </ul>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>


    <div class="d-flex">
    <div class="ms-5" style="margin-right: 50px; width: 55%;">
        <div class="">
        <p id="nb" class="h2 mt-4 text-white rounded-4 rounded-bottom-0 ps-3" style="background-color: #353535; padding-bottom: 25px; margin-bottom: -15px; padding-top: 10px;">DESAIN</p>
        <div class="border border-secondary rounded-4 bg-white p-4 mb-2 shadow" style="">
            <p id="nb" class="fw-bold fs-5">Ukuran</p>
            <div class="d-flex">
            <div id="nr">
                <p class="me-5">Panjang</p>
                <p class="me-5">Lebar</p>
                <p class="me-5">Tinggi</p>
            </div>
            <div id="nr">
                <p><%= d.Dimension1.length %> mm</p>
                <p><%= d.Dimension1.width %> mm</p>
                <p><%= d.Dimension1.height %> mm</p>
            </div>
            </div>
        </div>
        <div class="border border-secondary rounded-4 bg-white p-4 mb-2 shadow" style="">
            <p id="nb" class="fw-bold fs-5">Layar</p>
            <div class="d-flex">
            <div id="nr">
                <p class="me-5">Panjang</p>
                <p class="me-5">Lebar</p>
                <p class="me-5">Refresh Rate</p>
                <p class="me-5">Gamut Warna</p>
                <p class="me-5">Ukuran</p>
            </div>
            <div id="nr">
                <p><%= d.Display1.height %> px</p>
                <p><%= d.Display1.width %> px</p>
                <p><%= d.Display1.refresh_rate %> Hz</p>
                <p><%= d.Display1.color_gamut %></p>
                <p><%= d.Display1.size %> in.</p>
            </div>
            </div>
        </div>
        <div class="border border-secondary rounded-4 bg-white p-4 mb-2 shadow" style="">
            <p id="nb" class="fw-bold fs-5">Suara</p>
            <div class="d-flex">
            <div>
                <p class="me-5">Nama</p>
                <p class="me-5">Tipe</p>
                <p class="me-5">Mikrofon</p>
                <p class="me-5">Kuantitas</p>
            </div>
            <div id="nr">
                <ul>
                <p><%= d.Audio1.name %></p>
                <p><%= d.Audio1.type %></p>
                <p><%= d.Audio1.microphone %></p>
                <p><%= d.Audio1.quantity %></p>
                </ul>
            </div>
            </div>
        </div>
        </div>

        <div class="">
        <p id="nb" class="h2 mt-4 text-white rounded-4 rounded-bottom-0 ps-3" style="background-color: #353535; padding-bottom: 25px; margin-bottom: -15px; padding-top: 10px;">PERFORMA</p>
        
        <div class="border border-secondary rounded-4 bg-white p-4 mb-2 shadow" style="">
            <p id="nb" class="fw-bold fs-5">Prosesor</p>
            <div class="d-flex">
            <div id="nr">
                <p class="me-5">Nama</p>
                <p class="me-5">Tipe</p>
                <p class="me-5">Pabrikan</p>
                <p class="me-5">Kecepatan Clock</p>
                <p class="me-5">Cores</p>
                <p class="me-5">Threads</p>
            </div>
            <div id="nr">
                <p><%= d.Processor1.name %></p>
                <p><%= d.Processor1.type %></p>
                <p><%= d.Processor1.manufacturer %></p>
                <p><%= d.Processor1.clock_speed %> GHz</p>
                <p><%= d.Processor1.cores %></p>
                <p><%= d.Processor1.threads %></p>
            </div>
            </div>
        </div>
        <div class="border border-secondary rounded-4 bg-white p-4 mb-2 shadow" style="">
            <p id="nb" class="fw-bold fs-5">Grafis</p>
            <div class="d-flex">
            <div id="nr">
                <p class="me-5">Name</p>
                <p class="me-5">Tipe</p>
                <p class="me-5">Pabrikan</p>
                <p class="me-5">Watt</p>
                <p class="me-5">Kecepatan Clock</p>
                <p class="me-5">VRAM</p>
                <p class="me-5">Kecepatan Data</p>
            </div>
            <div id="nr">
                <p><%= d.Graphic.name %></p>
                <p><%= d.Graphic.type %></p>
                <p><%= d.Graphic.manufacturer %></p>
                <p><%= d.Graphic.wattage %> watt</p>
                <p><%= d.Graphic.clock_speed %> GHz</p>
                <p><%= d.Graphic.vram %> GB</p>
                <p><%= d.Graphic.data_rate %> Gbps</p>
            </div>
            </div>
        </div>
        <div class="border border-secondary rounded-4 bg-white p-4 mb-2 shadow" style="">
            <p  id="nb"class="fw-bold fs-5">RAM</p>
            <div class="d-flex">
            <div id="nr">
                <p class="me-5">Ukuran</p>
                <p class="me-5">Kecepatan Data</p>
                <p class="me-5">Channel</p>
                <p class="me-5">Kapasitas Maks</p>
            </div>
            <div id="nr">
                <p><%= d.Memory1.size %> GB</p>
                <p><%= d.Memory1.data_rate %></p>
                <p><%= d.Memory1.channel %></p>
                <p>Up to <%= d.Memory1.max_capacity %> GB</p>
            </div>
            </div>
        </div>
        <div class="border border-secondary rounded-4 bg-white p-4 mb-2 shadow" style="">
            <p id="nb" class="fw-bold fs-5">Ruang Penyimpanan</p>
            <div class="d-flex">
            <div id="nr">
                <p class="me-5">Ukuran</p>
                <p class="me-5">Tipe</p>
                <p class="me-5">Kapasitas Maks</p>
            </div>
            <div id="nr">
                <p><%= d.Storage1.size %> GB</p>
                <p><%= d.Storage1.type %></p>
                <p><%= d.Storage1.max_caoacity %> GB</p>
            </div>
            </div>
        </div>
        <div class="border border-secondary rounded-4 bg-white p-4 mb-2 shadow" style="">
            <p id="nb" class="fw-bold fs-5">Daya</p>
            <div class="d-flex">
            <div id="nr">
                <p class="me-5">Kapasitas</p>
                <p class="me-5">Watt</p>
                <p class="me-5">Jam Hidup</p>
            </div>
            <div id="nr">
                <p><%= d.Battery1.capacity %> mAh</p>
                <p><%= d.Battery1.wattage %> watt</p>
                <p><%= d.Battery1.life_hours %> Jam</p>
            </div>
            </div>
        </div>
        </div>

        <div class="">
        <p id="nb" class="h2 mt-4 text-white rounded-4 rounded-bottom-0 ps-3" style="background-color: #353535; padding-bottom: 25px; margin-bottom: -15px; padding-top: 10px;">KAMERA</p>
        
        <div class="border border-secondary rounded-4 bg-white p-4 mb-2 shadow" style="">
            <p id="nb" class="fw-bold fs-5">Front Camera</p>
            <div class="d-flex">
            <div id="nr">
                <p class="me-5">Resolusi</p>
                <p class="me-5">Megapixel</p>
                <p class="me-5">Frame Rate</p>
            </div>
            <div id="nr">
                <p><%= d.fCamera1.resolution %>P</p>
                <p><%= d.fCamera1.megapixels %> MP</p>
                <p><%= d.fCamera1.frame_rate %> Hz</p>
            </div>
            </div>
        </div>
        <div class="border border-secondary rounded-4 bg-white p-4 mb-2 shadow" style="">
        <p id="nb" class="fw-bold fs-5">Back Camera</p>
        <div class="d-flex">
        <div id="nr">
            <p class="me-5">Resolusi</p>
            <p class="me-5">Megapixel</p>
            <p class="me-5">Frame Rate</p>
        </div>
        <div id="nr">
            <p><%= d.rCamera1.resolution %>P</p>
            <p><%= d.rCamera1.megapixels %> MP</p>
            <p><%= d.rCamera1.frame_rate %> Hz</p>
        </div>
        </div>
    </div>
        </div>
    </div>

    <!-- RECOMMENDATION -->
    <div class="d-flex flex-column h-50 rounded mt-4" style="background-color: #353535; padding: 30px; width: 35%;">
        <p class="text-white h5 mb-3">Rekomendasi</p>
        <% int lim = 0; %>
        <%foreach(var dev in devices){ %>
        <%if (lim == 4) break; %>
        <a class="btn btn-light text-start fw-bold fs-5 mb-2" href="Compare2.aspx?id=<%= d.Id %>&id2=<%= dev.Id %>">
        <img src="../Asset/devices/phones/<%= dev.image %>" alt="gambar iphone" class="me-3" style="height: 80px;">
        <%= dev.name %>
        </a>
        <%lim = lim + 1; %>
        <%} %>
    </div>
    </div>

    <!-- YOUTUBE -->
    <div class="ms-5 mt-3">
    <p id="nb" class="h5 fw-bold fs-4">
        Review YouTube
        <svg class="" height="18" viewBox="0 0 24 18" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M23.4996 3.50708C23.3637 3.02231 23.099 2.58342 22.7336 2.23708C22.3579 1.88008 21.8974 1.62471 21.3956 1.49508C19.5176 1.00008 11.9936 1.00008 11.9936 1.00008C8.85697 0.964389 5.72107 1.12135 2.60364 1.47008C2.10183 1.60929 1.6422 1.87036 1.26564 2.23008C0.895641 2.58608 0.627641 3.02508 0.487641 3.50608C0.151334 5.31782 -0.0120674 7.15742 -0.000359379 9.00008C-0.0123594 10.8411 0.150641 12.6801 0.487641 14.4941C0.624641 14.9731 0.891641 15.4101 1.26264 15.7631C1.63364 16.1161 2.09564 16.3711 2.60364 16.5061C4.50664 17.0001 11.9936 17.0001 11.9936 17.0001C15.1343 17.0358 18.2742 16.8789 21.3956 16.5301C21.8974 16.4004 22.3579 16.1451 22.7336 15.7881C23.0989 15.4418 23.3633 15.0029 23.4986 14.5181C23.8437 12.707 24.0115 10.8667 23.9996 9.02308C24.0256 7.17168 23.858 5.32364 23.4996 3.50708ZM9.60164 12.4241V5.57708L15.8616 9.00108L9.60164 12.4241Z" fill="black"/>
        </svg>
    </p>
    <div class="embed-responsive-16by9">
        <iframe style="width: 1045px; height: 675px;" class="rounded-4 shadow" src="<%= d.youtube %>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
    </div>

    <!-- USER REVIEW FORM -->
    <div class="ms-5 mt-4">
    <p id="nb" class="fs-4">Beri Ulasan Anda</p>
        <div class="bg-white shadow p-4 rounded-4 d-flex border" style="width: 85%; margin-top: -10px;">
        <div id="nb" class="me-5">
            <div>
                <p>Rating</p>
                <div class="d-flex" style="margin-top: -10px;">
                    <div class="z-0" style="margin-top: 2px;">
                        <asp:LinkButton ID="star1" CssClass="star" runat="server" OnClick="Star_Click" CommandArgument="1">
                            <asp:Image ID="emptyStar1" runat="server" ImageUrl="../Asset/logo/empty-star.svg" />
                            <asp:Image ID="filledStar1" runat="server" ImageUrl="../Asset/logo/filled-star.svg" Visible="false" />
                        </asp:LinkButton>
                        <asp:LinkButton ID="star2" CssClass="star" runat="server" OnClick="Star_Click" CommandArgument="2">
                            <asp:Image ID="emptyStar2" runat="server" ImageUrl="../Asset/logo/empty-star.svg" />
                            <asp:Image ID="filledStar2" runat="server" ImageUrl="../Asset/logo/filled-star.svg" Visible="false" />
                        </asp:LinkButton>
                        <asp:LinkButton ID="star3" CssClass="star" runat="server" OnClick="Star_Click" CommandArgument="3">
                            <asp:Image ID="emptyStar3" runat="server" ImageUrl="../Asset/logo/empty-star.svg" />
                            <asp:Image ID="filledStar3" runat="server" ImageUrl="../Asset/logo/filled-star.svg" Visible="false" />
                        </asp:LinkButton>
                        <asp:LinkButton ID="star4" CssClass="star" runat="server" OnClick="Star_Click" CommandArgument="4">
                            <asp:Image ID="emptyStar4" runat="server" ImageUrl="../Asset/logo/empty-star.svg" />
                            <asp:Image ID="filledStar4" runat="server" ImageUrl="../Asset/logo/filled-star.svg" Visible="false" />
                        </asp:LinkButton>
                        <asp:LinkButton ID="star5" CssClass="star" runat="server" OnClick="Star_Click" CommandArgument="5">
                            <asp:Image ID="emptyStar5" runat="server" ImageUrl="../Asset/logo/empty-star.svg" />
                            <asp:Image ID="filledStar5" runat="server" ImageUrl="../Asset/logo/filled-star.svg" Visible="false" />
                        </asp:LinkButton>
                        <asp:HiddenField ID="hiddenStarIndex" runat="server" />
                    </div>
                </div>
                <%--<div class="d-flex" style="margin-top: -10px;">
                    <div class="z-0" style="margin-top: 2px;">
                        <svg class="" width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                            <defs>
                            <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                            <stop stop-color="#B132FF"/>
                            <stop offset="0.497917" stop-color="#0038FF"/>
                            <stop offset="1" stop-color="#00A3FF"/>
                            </linearGradient>
                            </defs>
                        </svg>
                        <svg width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                            <defs>
                            <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                            <stop stop-color="#B132FF"/>
                            <stop offset="0.497917" stop-color="#0038FF"/>
                            <stop offset="1" stop-color="#00A3FF"/>
                            </linearGradient>
                            </defs>
                        </svg>
                        <svg width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                            <defs>
                            <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                            <stop stop-color="#B132FF"/>
                            <stop offset="0.497917" stop-color="#0038FF"/>
                            <stop offset="1" stop-color="#00A3FF"/>
                            </linearGradient>
                            </defs>
                        </svg>
                        <svg width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                            <defs>
                            <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                            <stop stop-color="#B132FF"/>
                            <stop offset="0.497917" stop-color="#0038FF"/>
                            <stop offset="1" stop-color="#00A3FF"/>
                            </linearGradient>
                            </defs>
                        </svg>
                        <svg style="margin-top: 1px" xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-1" viewBox="0 0 16 16">
                            <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                        </svg>
                    </div>
                </div>--%>
                <%--<p class="mt-3">Performa</p>
                <div class="d-flex" style="margin-top: -10px;">
                    <div class="z-0">
                    <svg class="z-0" xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
                        <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                    </svg>
                    <svg class="z-0" xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
                        <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                    </svg>
                    <svg class="z-0" xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
                        <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                    </svg>
                    <svg class="z-0" xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
                        <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                    </svg>
                    <svg class="z-0" xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
                        <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                    </svg>
                    </div>
                    <div class="z-1" style="margin-left: -138px; margin-top: 2px;">
                    <svg class="" width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                        <defs>
                        <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#B132FF"/>
                        <stop offset="0.497917" stop-color="#0038FF"/>
                        <stop offset="1" stop-color="#00A3FF"/>
                        </linearGradient>
                        </defs>
                    </svg>
                    <svg width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                        <defs>
                        <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#B132FF"/>
                        <stop offset="0.497917" stop-color="#0038FF"/>
                        <stop offset="1" stop-color="#00A3FF"/>
                        </linearGradient>
                        </defs>
                    </svg>
                    <svg width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                        <defs>
                        <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#B132FF"/>
                        <stop offset="0.497917" stop-color="#0038FF"/>
                        <stop offset="1" stop-color="#00A3FF"/>
                        </linearGradient>
                        </defs>
                    </svg>
                    <svg width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                        <defs>
                        <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#B132FF"/>
                        <stop offset="0.497917" stop-color="#0038FF"/>
                        <stop offset="1" stop-color="#00A3FF"/>
                        </linearGradient>
                        </defs>
                    </svg>
                    <svg class="star-hid" width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                        <defs>
                        <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#B132FF"/>
                        <stop offset="0.497917" stop-color="#0038FF"/>
                        <stop offset="1" stop-color="#00A3FF"/>
                        </linearGradient>
                        </defs>
                    </svg>
                    </div>
                </div>
                <p class="mt-3">Kamera</p>
                <div class="d-flex" style="margin-top: -10px;">
                    <div class="z-0">
                    <svg class="z-0" xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
                        <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                    </svg>
                    <svg class="z-0" xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
                        <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                    </svg>
                    <svg class="z-0" xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
                        <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                    </svg>
                    <svg class="z-0" xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
                        <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                    </svg>
                    <svg class="z-0" xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="" class="bi bi-star ms-2 mt-1 mb-1" viewBox="0 0 16 16">
                        <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
                    </svg>
                    </div>
                    <div class="z-1" style="margin-left: -138px; margin-top: 2px;">
                    <svg class="" width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                        <defs>
                        <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#B132FF"/>
                        <stop offset="0.497917" stop-color="#0038FF"/>
                        <stop offset="1" stop-color="#00A3FF"/>
                        </linearGradient>
                        </defs>
                    </svg>
                    <svg width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                        <defs>
                        <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#B132FF"/>
                        <stop offset="0.497917" stop-color="#0038FF"/>
                        <stop offset="1" stop-color="#00A3FF"/>
                        </linearGradient>
                        </defs>
                    </svg>
                    <svg width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                        <defs>
                        <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#B132FF"/>
                        <stop offset="0.497917" stop-color="#0038FF"/>
                        <stop offset="1" stop-color="#00A3FF"/>
                        </linearGradient>
                        </defs>
                    </svg>
                    <svg width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                        <defs>
                        <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#B132FF"/>
                        <stop offset="0.497917" stop-color="#0038FF"/>
                        <stop offset="1" stop-color="#00A3FF"/>
                        </linearGradient>
                        </defs>
                    </svg>
                    <svg class="star-hid" width="25" height="23" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="url(#paint0_linear_74_193)"/>
                        <defs>
                        <linearGradient id="paint0_linear_74_193" x1="0" y1="23" x2="25" y2="23" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#B132FF"/>
                        <stop offset="0.497917" stop-color="#0038FF"/>
                        <stop offset="1" stop-color="#00A3FF"/>
                        </linearGradient>
                        </defs>
                    </svg>
                    </div>
                </div>--%>
            </div>
        </div>
        <div class="form w-50">
            <%--<textarea class="form-control rounded-4" placeholder="Tulis ulasan anda..." id="txtReview" style="height: 210px"></textarea>--%>
            <%--<asp:TextBox ID="tbReview" runat="server" class="form-control rounded-4" placeholder="Tulis ulasan anda..." style="height: 210px"></asp:TextBox>--%>
            <textarea class="form-control rounded-4" placeholder="Tulis ulasan anda..." id="txtReview" style="height: 210px" runat="server"></textarea>
        </div>
        <div class="mt-5 ms-5">
            <div class="form-check">
                <%--<input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                <label class="form-check-label" for="defaultCheck1">Saya telah menyetujui syarat dan ketentuan</label>--%>
                <asp:CheckBox ID="cbAgree" runat="server" Text="Saya telah menyetujui syart dan ketentuan" />
            </div>
            <div>
            <a id="nr" href="#">
                <%--<button type="button" class="btn text-white fs-5" style="background-color: #353535; width: 100%;">Kirim</button>--%>
                <asp:Button ID="btnSubmit" class="btn text-white fs-5" style="background-color: #353535; width: 100%;" runat="server" Text="Kirim" OnClick="btnSubmit_Click" />
                <asp:Label ID="lbError" runat="server" Text=""></asp:Label>
            </a>
            </div>
        </div>
        </div>
    </div>

    <!-- LAST REVIEW -->
    <div class="ms-5 mt-4">
    <p id="nb" class="h5 mt-4 fw-bold fs-4">Review Terakhir</p>
        <%foreach (var r in review) { %>
    <div class="p-4 border rounded-4 shadow mb-2" style="background-color: #FFFFFF; width: 57%;">
        <div class="" style="width: 90%;">
        <div class="d-flex">
            <div>
            <svg width="44" height="44" viewBox="0 0 44 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M22 0C9.856 0 0 9.856 0 22C0 34.144 9.856 44 22 44C34.144 44 44 34.144 44 22C44 9.856 34.144 0 22 0ZM22 8.8C26.246 8.8 29.7 12.254 29.7 16.5C29.7 20.746 26.246 24.2 22 24.2C17.754 24.2 14.3 20.746 14.3 16.5C14.3 12.254 17.754 8.8 22 8.8ZM22 39.6C17.534 39.6 12.254 37.796 8.492 33.264C12.3455 30.2406 17.102 28.5974 22 28.5974C26.898 28.5974 31.6545 30.2406 35.508 33.264C31.746 37.796 26.466 39.6 22 39.6Z" fill="#8CBE64"/>
            </svg>
            </div>
            <div class="ms-3 mt-2">
            <p id="nb" class="fw-bold"><%= r.User1.username %></p> 
            </div>
        </div>
         
        <p id="" class="mt-3" style="text-align: justify;"><%= r.comment %></p>
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
    <div class="d-flex justify-content-center w-50 mt-4 mb-5">
        <a href="#" class="text-decoration-none fs-6">lihat review lain</a>
    </div>
    </div>
    <script type="text/javascript">
        document.getElementById('searchResults').style.display = "none";
        function searchDevices() {
            var searchInput = document.getElementById('searchInput');
            var searchResults = document.getElementById('searchResults');
            var searchText = searchInput.value;

            if (searchText === "") {
                searchResults.style.display = "none";
            } else {
                searchResults.style.display = "block";

                var id1 = <%= Request.QueryString["id"] %>;
                // Make an AJAX request to the server
                var xhr = new XMLHttpRequest();
                xhr.open('GET', 'SearchDevice.aspx?id=' + id1 + '&keywords=' + searchText, true);
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

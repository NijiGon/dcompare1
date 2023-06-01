<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="Compare1Device.aspx.cs" Inherits="dcompare1.Views.Compare1Device" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="background-color: #E8E8E8;">
    <div class="row">
        <div class="col">
        <div class="d-flex justify-content-center" style="padding-top: 80px; padding-bottom: 80px;">
            <img src="../Asset/devices/phones/<%=d.image %>" alt="" class="me-5 shadow" style="width: 15vw;">
            <div class="">
            <p class="fw-bold h2">
                <%=d.name %>
            </p>
    
            <div class="rounded-3 d-flex justify-content-center w-" style="background: linear-gradient(90deg, #B132FF 0%, #0038FF 49.79%, #00A3FF 100%);padding-top: 10px; width: 62%;">
                <svg width="35" height="33" viewBox="0 0 25 23" fill="none" xmlns="http://www.w3.org/2000/svg" style="margin-left: -10px;">
                <path d="M4.78125 23L6.8125 14.4961L0 8.77632L9 8.01974L12.5 0L16 8.01974L25 8.77632L18.1875 14.4961L20.2187 23L12.5 18.4908L4.78125 23Z" fill="white"/>
                </svg>
                <p class="h1 text-white ms-2" style="margin-top: -7.5px;">5</p>     
            </div>
            
            <div class="bg-white rounded-3 w-75 d-flex flex-column align-items-center p-2 mt-3 shadow">
                <p class="h6">1 TB &nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp 12 GB</p>
                <p class="h5 fw-bold">Rp19.100.000,-</p>
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
  
    <div class="mt-5 d-flex" style="padding: 0% 5% 0% 3.5%;">
    <div class="" style="margin-right: 42vw;">
      <div>
        <p class="lh-1 fs-4">
          Samsung Galaxy S23 Ultra
          <br>
          Skor sempurna dari 12 ulasan
        </p>
      </div>
      
      <div class="d-flex">
        <div class="border rounded-3 border-black border-2 d-flex" style="width: 13.5rem; height: 2.8rem;">
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
        </div>

        <div class="">
          <button class="btn rounded-3 ms-4 fw-medium" style="width: 140%; padding: 9%; background-color: #353535; color: white;">ulasan anda</button>
        </div>
      </div>
    </div>

    <div class="d-flex flex-column justify-content-center align-items-center">
      <h2 style="color: #0038FF;">Mulai bandingkan</h2>
      <input class="form-control rounded-pill" style="width: 25vw;" type="search" placeholder="Cari Device" aria-label="Search" style="background-color: #EEEEEE;">
    </div>
  </div>

    <div class="d-flex">
    <div class="ms-5" style="margin-right: 50px; width: 55%;">
      <div class="">
        <p class="h2 mt-4 text-white rounded-3 ps-3" style="background-color: #353535; padding-bottom: 20px; margin-bottom: -10px; padding-top: 10px;">DESAIN</p>
        
        <div class="border border-secondary rounded bg-white p-4 mb-3" style="">
          <p class="fw-bold fs-5">Ukuran</p>
          <div class="d-flex">
            <div>
              <p class="me-5">Badan</p>
              <p class="me-5">Berat</p>
              <p class="me-5">Material Bahan</p>
              <p class="me-5">Sertifikasi Resistan</p>
            </div>
            <div>
              <p><%=d.Dimension1.length + " mm * " +  d.Dimension1.width + " mm * " + d.Dimension1.height + " mm"%></p>
              <p> 233 gram</p>
              <p>Glass, Aluminium, Corning Gorilla Glass Victus 2</p>
              <p>IP68</p>
            </div>
          </div>
        </div>
        <div class="border border-secondary rounded bg-white p-4 mb-3" style="">
          <p class="fw-bold fs-5">Layar</p>
          <div class="d-flex">
            <div>
              <p class="me-5">Diagonal</p>
              <p class="me-5">Tipe</p>
              <p class="me-5">Rasio Layar</p>
              <p class="me-5">Densitas</p>
              <p class="me-5">Lainnya</p>
            </div>
            <div>
              <p>6.7"</p>
              <p>Super AMOLED</p>
              <p>1440 ˣ 3088, WQHD+</p>
              <p>500 ppi</p>
              <ul>
                <li>Layar 120 Hz</li>
                <li>Kecerahan tertinggi 1750 cd/m^2</li>
                <li>3000000 : 1 rasio kontras</li>
                <li>HDR10+</li>
                <li>Frameless</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="border border-secondary rounded bg-white p-4 mb-3" style="">
          <p class="fw-bold fs-5">Suara</p>
          <div class="d-flex">
            <div>
              <p class="me-5">Suara</p>
            </div>
            <div>
              <ul>
                <li>Suara Hi-Res</li>
                <li>Noice Cancellation Microphone</li>
                <li>Speaker stereo</li>
                <li>2 mic</li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="">
        <p class="h2 mt-4 text-white rounded-3 ps-3" style="background-color: #353535; padding-bottom: 20px; margin-bottom: -10px; padding-top: 10px;">PERFORMA</p>
        
        <div class="border border-secondary rounded bg-white p-4 mb-3" style="">
          <p class="fw-bold fs-5">Prosesor</p>
          <div class="d-flex">
            <div>
              <p class="me-5">Model</p>
              <p class="me-5">CPU</p>
              <p class="me-5">Tipe</p>
              <p class="me-5">Nanometer</p>
            </div>
            <div>
              <p>Qualcomm Snapdragon 8 Gen2 (3,36 GHz)</p>
              <p>1x3.36GHz Cortex - X3 + 4x2.8 GHz Cortex - A715 + 3x2.02 GHz Cortex - A510</p>
              <p>Octa-Core</p>
              <p>4 nm</p>
            </div>
          </div>
        </div>
        <div class="border border-secondary rounded bg-white p-4 mb-3" style="">
          <p class="fw-bold fs-5">Grafis</p>
          <div class="d-flex">
            <div>
              <p class="me-5">GPU</p>
            </div>
            <div>
              <p>Qualcomm Adreno 740</p>
            </div>
          </div>
        </div>
        <div class="border border-secondary rounded bg-white p-4 mb-3" style="">
          <p class="fw-bold fs-5">RAM</p>
          <div class="d-flex">
            <div>
              <p class="me-5">RAM</p>
              <p class="me-5">Tipe</p>
            </div>
            <div>
              <p>12 GB</p>
              <p>RAM LPDDR5X</p>
            </div>
          </div>
        </div>
        <div class="border border-secondary rounded bg-white p-4 mb-3" style="">
          <p class="fw-bold fs-5">Ruang Penyimpanan</p>
          <div class="d-flex">
            <div>
              <p class="me-5">Tipe</p>
              <p class="me-5">Kapasitas</p>
            </div>
            <div>
              <p>256 GB</p>
              <p>UFS Storage 4.0</p>
            </div>
          </div>
        </div>
      </div>

      <div class="">
        <p class="h2 mt-4 text-white rounded-3 ps-3" style="background-color: #353535; padding-bottom: 20px; margin-bottom: -10px; padding-top: 10px;">KAMERA</p>
        
        <div class="border border-secondary rounded bg-white p-4 mb-3" style="">
          <p class="fw-bold fs-5">Resolusi</p>
          <div class="d-flex">
            <div>
              <p class="me-5">Kamera Utama</p>
              <p class="me-5">Kamera Wide</p>
              <p class="me-5">Kamera Potrait</p>
              <p class="me-5">Kamera Telefoto</p>
            </div>
            <div>
              <p>200 Mpx</p>
              <p>12.2 Mpx</p>
              <p>10 Mpx</p>
              <p>10 Mpx</p>
            </div>
          </div>
        </div>
        <div class="border border-secondary rounded bg-white p-4 mb-3" style="">
          <p class="fw-bold fs-5">Sensor</p>
          <div class="d-flex">
            <div>
              <p class="me-5">Kamera Utama</p>
              <p class="me-5">Kamera Wide</p>
              <p class="me-5">Kamera Potrait</p>
              <p class="me-5">Kamera Telefoto</p>
            </div>
            <div>
              <p>Samsung ISOCELL HP2</p>
              <p>Sony IMX564</p>
              <p>-</p>
              <p>-</p>
            </div>
          </div>
        </div>
        <div class="border border-secondary rounded bg-white p-4 mb-3" style="">
          <p class="fw-bold fs-5">Aperture</p>
          <div class="d-flex">
            <div>
              <p class="me-5">Kamera Utama</p>
              <p class="me-5">Kamera Wide</p>
              <p class="me-5">Kamera Potrait</p>
              <p class="me-5">Kamera Telefoto</p>
            </div>
            <div>
              <p>f/1.7</p>
              <p>f/2.2</p>
              <p>f/2.4</p>
              <p>4.9</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="d-flex flex-column h-50 rounded mt-4" style="background-color: #353535; padding: 30px; width: 35%;">
      <p class="text-white h5 mb-3">Rekomendasi</p>
      <button class="btn btn-light text-start fw-bold fs-5 mb-2">
        <img src="../Asset/devices/phones/Iphone14.png" alt="gambar iphone" class="me-3" style="width: 5%;">
        Iphone 14
      </button>
      <button class="btn btn-light text-start fw-bold fs-5 mb-2">
        <img src="../Asset/devices/phones/SamsungS23Ultra.png" alt="" class="me-3" style="width: 5%;">
        Samsung S23 Ultra
      </button>
      <button class="btn btn-light text-start fw-bold fs-5 mb-2">
        <img src="../Asset/devices/phones/Xiaomi12Pro.png" alt="" class="me-3" style="width: 5%;">
        Xiaomi 12 Pro
      </button>
      <button class="btn btn-light text-start fw-bold fs-5 mb-2 py-3">
        <img src="../Asset/devices/phones/SamsungGalaxyZFold4.png" alt="" class="me-3" style="width: 5%;">
        Samsung Galaxy Z Fold 4
      </button>
    </div>
  </div>

    <div class="ms-5 mt-3">
    <p class="h5 fw-bold fs-4">
      Powered by
      <svg class="" height="18" viewBox="0 0 24 18" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M23.4996 3.50708C23.3637 3.02231 23.099 2.58342 22.7336 2.23708C22.3579 1.88008 21.8974 1.62471 21.3956 1.49508C19.5176 1.00008 11.9936 1.00008 11.9936 1.00008C8.85697 0.964389 5.72107 1.12135 2.60364 1.47008C2.10183 1.60929 1.6422 1.87036 1.26564 2.23008C0.895641 2.58608 0.627641 3.02508 0.487641 3.50608C0.151334 5.31782 -0.0120674 7.15742 -0.000359379 9.00008C-0.0123594 10.8411 0.150641 12.6801 0.487641 14.4941C0.624641 14.9731 0.891641 15.4101 1.26264 15.7631C1.63364 16.1161 2.09564 16.3711 2.60364 16.5061C4.50664 17.0001 11.9936 17.0001 11.9936 17.0001C15.1343 17.0358 18.2742 16.8789 21.3956 16.5301C21.8974 16.4004 22.3579 16.1451 22.7336 15.7881C23.0989 15.4418 23.3633 15.0029 23.4986 14.5181C23.8437 12.707 24.0115 10.8667 23.9996 9.02308C24.0256 7.17168 23.858 5.32364 23.4996 3.50708ZM9.60164 12.4241V5.57708L15.8616 9.00108L9.60164 12.4241Z" fill="black"/>
      </svg>
    </p>
    <div class="embed-responsive embed-responsive-16by9">
      <iframe width="1045" height="400" src="https://www.youtube.com/embed/zTDsP2P_Qfk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
  </div>

    <div class="ms-5 mt-4">
    <p class="h5 mt-4 fw-bold fs-4">Review Terakhir</p>
    <% foreach (var r in review)
        { %>
    <div class="p-4" style="background-color: #F5F5F5; width: 57%;">
      <div class="" style="width: 90%;">
        <div class="d-flex">
          <div>
            <svg width="44" height="44" viewBox="0 0 44 44" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M22 0C9.856 0 0 9.856 0 22C0 34.144 9.856 44 22 44C34.144 44 44 34.144 44 22C44 9.856 34.144 0 22 0ZM22 8.8C26.246 8.8 29.7 12.254 29.7 16.5C29.7 20.746 26.246 24.2 22 24.2C17.754 24.2 14.3 20.746 14.3 16.5C14.3 12.254 17.754 8.8 22 8.8ZM22 39.6C17.534 39.6 12.254 37.796 8.492 33.264C12.3455 30.2406 17.102 28.5974 22 28.5974C26.898 28.5974 31.6545 30.2406 35.508 33.264C31.746 37.796 26.466 39.6 22 39.6Z" fill="#8CBE64"/>
            </svg>
          </div>
          <div class="ms-3 mt-2">
            <p class="fw-bold"><%= r.User1.first_name + r.User1.last_name%></p> 
          </div>
        </div>
         
        <p style="text-align: justify;"><%= r.comment%></p>
        <div class="d-flex">
            <%for (int i = 0; i < r.rating; i++)
                { %>
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
            <%} %>
          <p class="fw-bold h3 ms-2" style="margin-top: -5px;"><%=r.rating %></p>
        </div>
      </div>
    </div>
    <%} %>
    <div class="d-flex justify-content-center w-50 mt-1 mb-5">
      <a href="#" class="text-decoration-none fs-6">lihat review lain</a>
    </div>
  </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="dcompare1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css" integrity="sha384-QYIZto+st3yW+o8+5OHfT6S482Zsvz2WfOzpFSXMF9zqeLcFV0/wlZpMtyFcZALm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <style>
        #login{
            margin-left: 390px;
        }

        @media screen and (max-width: 991px) {
            #login{
                margin-left: 0px;
            }
            #line{
                visibility: hidden;
            }
        }

        /* .border-stor{
            border-width: 2px;
            border-style: solid;
            border-image: linear-gradient(90deg, #B132FF 0%, #0038FF 49.79%, #00A3FF 100%) 1;
        } */
        .border-blue{
            border: 2.5px solid;
            border-color: blueviolet !important; 
        }

        .footer-basic {
            padding:40px 0;
            background-color:#ffffff;
            color:#4b4c4d;
        }
        .footer-basic ul {
            padding:0;
            list-style:none;
            text-align:center;
            font-size:18px;
            line-height:1.6;
            margin-bottom:0;
        }
        .footer-basic li {
            padding:0 10px;
        }
        .footer-basic ul a {
            color:inherit;
            text-decoration:none;
            opacity:0.8;
        }
        .footer-basic ul a:hover {
            opacity:1;
        }
        .footer-basic .social {
            text-align:center;
            padding-bottom:25px;
        }
        .footer-basic .social > a {
            font-size:24px;
            width:40px;
            height:40px;
            line-height:40px;
            display:inline-block;
            text-align:center;
            border-radius:50%;
            border:1px solid #ccc;
            margin:0 8px;
            color:inherit;
            opacity:0.75;
        }
        .footer-basic .social > a:hover {
            opacity:0.9;
        }
        .footer-basic .copyright {
            margin-top:15px;
            text-align:center;
            font-size:13px;
            color:#aaa;
            margin-bottom:0;
        }
        .bg-blur{
            backdrop-filter: blur(10px);
            background-position: center center;
            background-size: cover;
        }
  
        .box :hover{
            border-color: purple;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid bg-blur" style="margin:0px; padding: 0px; background-image: url('../Asset/logo/banner-home.jpg'); height:45vh; margin-bottom: 5rem; display:relative; right: -81px; top: -160px; background-repeat: no-repeat;">
            <div class="color-overlay d-flex justify-content-center align-items-center">
                <a class="" style="color: white; font-family: 'Bebas Neue'; margin-top: 11%; font-size: 42px; letter-spacing: 4px;"><img src="../Asset/logo/logo putih.png" style="width: 10%; margin: 2%; text-align: center;">Bandingkan yang Terbaik</a>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid d-flex flex-column align-items-center justify-content-center" style="font-family:'Bebas Neue' ;">
                <div class="col-6" style="width: 75%; padding: 20px; border-radius: 10px; margin-top:0px; margin-bottom: 300px; background-color: #EEEEEE; position: relative; height: 375px; width: 60%;">
                    <a style="font-size: 32px; letter-spacing: 1px;">SMARTPHONE</a>
                    <hr style="width: 10%">
                    <div class="container" style="margin-left: -8%; position: absolute; width: 130%;">
                        <div class="row justify-content-center" style="text-align: center; font-size: 42px;">
                            <div class="col-3" style="margin-right: 10px;">
                                <a href="" style="text-decoration: none; color:black;"><img src="../Asset/devices/phones/iphoneee.png" style="border-radius: 20px; width: 100%; margin-bottom: 10px;"></a>
                            </div>
                            <div class="col-3" style="margin-right: 10px">
                                <a href="" style="text-decoration: none; color:black;"><img src="../Asset/devices/phones/samsoneneneee.png" style="border-radius: 20px; width: 100%; margin-bottom: 10px;"></a>
                            </div>
                            <div class="col-3" style="margin-right: 10px">
                                <a href="" style="text-decoration: none; color:black;"><img src="../Asset/devices/phones/xiaomimimimmimimimi.png" style="border-radius: 20px; width: 100%; margin-bottom: 10px;"></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container" style="width: 60%;">
                    <a style="font-size: 32px; letter-spacing: 1px;">Sedang Tren</a>
                    <div class="d-flex flex-column mb-5">
                        <%foreach (var d in devices)
                            { %>
                        <a class="flex-column d-flex justify-content-between rounded-4" href="Compare1.aspx?id=<%= d.Id %>" style="border: 2px solid #9ca0a3; border-width: 2px #9ca0a3; text-decoration: none; color:black; margin-bottom: 10px;">
                            <div class="rounded-4" style="margin-top: 5px; font-size: 24px;">
                                <span class="float-"><img src="../Asset/devices/phones/<%= d.image %>" style="height: 100px; margin: 10px;"><%= d.name %></span>
                                <span class="float-right" style="margin-top: 4%; margin-right: 5%; background: -webkit-linear-gradient(#B132FF, #0038FF, #00A3FF
                                );-webkit-background-clip: text; -webkit-text-fill-color: transparent;"><%= ShowPrice(d.maxpriceUrl) %></span>
                            </div>
                            <div class="ml-auto" style="margin-right: 10%;"></div>
                        </a>
                        <%} %>
                    </div>
                </div>
                

                
                <div class="col mb-5" style="width: 60%;">
                    <a class="text-start text-decoration-none text-black" style="font-size: 32px; text-align:left !important; letter-spacing: 1px;">Rekomendasi Review</a>
                    <div class="embed-responsive embed-responsive-16by9 d-flex flex-column" style="margin-bottom: 50px;">
                        <iframe class="rounded-4" width="1125px" height="600px" src="https://www.youtube.com/embed/zTDsP2P_Qfk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    </div>
                    <div class="row d-flex">
                        <div class="col">
                            <img src="../Asset/devices/phones/samsonge.jpg" style="width: 100%; border-radius: 5%; display: block; margin-left: auto; margin-right: auto;">
                        </div>
                        <div class="col">
                            <a style="font-size: 32px;">Samsung S23 Ultra</a>
                            <div class="flex-row d-flex" style="margin-bottom: 5%;">
                                <div class="col rounded-4" style="border: 2px solid #9ca0a3; border-width: 2px #9ca0a3; margin-right: 5%; padding: 5%; font-size: 25px; width: fit-content; height: fit-content;">
                                    Kualitas Fisik
                                    <div style="margin-top: 4%; margin-right: 5%; background: -webkit-linear-gradient(#B132FF, #0038FF, #00A3FF
                                    );-webkit-background-clip: text; -webkit-text-fill-color: transparent;">5/5</div>
                                </div>
                                <div class="col rounded-4" style="border: 2px solid #9ca0a3; border-width: 2px #9ca0a3; padding: 5%; font-size: 25px;">
                                    Tampilan
                                    <div style="margin-top: 4%; margin-right: 5%; background: -webkit-linear-gradient(#B132FF, #0038FF, #00A3FF
                                    );-webkit-background-clip: text; -webkit-text-fill-color: transparent;">5/5</div>
                                </div>
                            </div>
                            <div class="flex-row d-flex" style="margin-bottom: 5%;">
                                <div class="col rounded-4" style="border: 2px solid #9ca0a3; border-width: 2px #9ca0a3; margin-right: 5%; padding: 5%; font-size: 25px;">
                                    Performa
                                    <div style="margin-top: 4%; margin-right: 5%; background: -webkit-linear-gradient(#B132FF, #0038FF, #00A3FF
                                    );-webkit-background-clip: text; -webkit-text-fill-color: transparent;">5/5</div>
                                </div>
                                <div class="col rounded-4" style="border: 2px solid #9ca0a3; border-width: 2px #9ca0a3; padding: 5%; font-size: 25px;">
                                    Fotografi
                                    <div style="margin-top: 4%; margin-right: 5%; background: -webkit-linear-gradient(#B132FF, #0038FF, #00A3FF
                                    );-webkit-background-clip: text; -webkit-text-fill-color: transparent;">4.9/5</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="" style="width: 75%; margin-top:130px; margin-bottom: 300px;">
                    <a href="" style="text-decoration: none;">
                        <div class="container" style="position: absolute; background: -webkit-linear-gradient(#202020, #000000); border-radius: 50px; width: 525px; height: 550px; margin-left: 10%; margin-top:-5%; padding: 2%">
                            <img src="../Asset/devices/laptops/lenovo.png" style="width: 100%;">
                            <div style="font-size: 50px; color: whitesmoke; text-align: center;">LENOVO</div>
                        </div> 
                    </a>

                    <div class="container" style="background-color: #EEEEEE; border-radius: 20px; padding-top: 2%; height: 550px; width: 50%">
                        <a style="font-size: 32px; letter-spacing: 1px; margin-left: 80%;">LAPTOP</a>
                        <hr style="width: 25%; margin-left: 75%;">
                        <a href="" style="text-decoration: none;">
                            <div class="container" style="background: -webkit-linear-gradient(#202020, #000000); border-radius: 50px; margin-left: 55%; width: 525px; height: 550px;text-align: center; margin-top: 10%;">
                                <img src="../Asset/devices/laptops/asus.png" style="width: 80%; padding: 5%; padding-top: 8%;" style="text-align: center;">
                                <div style="font-size: 50px; color: whitesmoke; text-align: center;">Asus</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>

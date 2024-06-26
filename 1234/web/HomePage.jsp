<%-- 
    Document   : Home
    Created on : Jun 23, 2024, 11:19:45 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Bookly - Bookstore eCommerce Website Template</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta name="description" content="">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">
        <style>
            .swiper-slide {
                width: 300px;  /* Chiều rộng cố định cho mỗi slide */
                height: 300px; /* Chiều cao cố định, giống như chiều rộng */
                margin: auto;  /* Căn giữa slide trong swiper container */
            }

            .card {
                width: 100%;   /* Chiều rộng card sẽ tự động điều chỉnh theo swiper-slide */
                height: 100%;  /* Chiều cao card sẽ tự động điều chỉnh theo swiper-slide */
                display: flex;
                flex-direction: column; /* Sắp xếp nội dung của card theo chiều dọc */
                justify-content: center; /* Căn giữa nội dung theo chiều dọc */
                align-items: center;     /* Căn giữa nội dung theo chiều ngang */
            }
            .items-list {
                display: flex;
                flex-direction: row; /* Thiết lập hướng ngang */
                flex-wrap: nowrap; /* Không cho phép xuống hàng */
                justify-content: space-between; /* Căn chỉnh khoảng cách giữa các mục */
                overflow-x: auto; /* Cho phép cuộn ngang nếu các mục vượt quá chiều rộng của màn hình */
            }

            .item {
                flex: 0 0 auto; /* Các mục không co giãn và không chiếm toàn bộ không gian */
                margin-right: 20px; /* Khoảng cách giữa các mục */
            }


            .item img {
                width: 100px; /* Đặt chiều rộng cố định cho hình ảnh */
                height: auto; /* Đảm bảo hình ảnh không bị méo */
                margin-right: 10px; /* Khoảng cách giữa hình ảnh và nội dung bên cạnh */
            }

            .item-content {
                flex-grow: 1; /* Cho phép nội dung mở rộng để chiếm đầy đủ không gian còn lại */
            }

            hr.gray-400 {
                width: 100%; /* Đảm bảo thanh ngăn cách chiếm toàn bộ chiều rộng */
                border: none; /* Ẩn thanh ngăn cách nếu không cần thiết */
                clear: both; /* Đảm bảo không có phần tử nào nằm ngang với thanh ngăn cách */
            }
            .swiper-container { /* Hoặc tên lớp container của swiper */
                display: flex;
                justify-content: center; /* Căn giữa các slides theo chiều ngang */
                align-items: center; /* Căn giữa các slides theo chiều dọc nếu cần */
                width: 100%; /* Đảm bảo container chiếm toàn bộ chiều rộng của phần tử cha */
            }

            .swiper-wrapper {
                width: auto; /* Hoặc đặt chiều rộng cụ thể nếu bạn muốn giới hạn kích thước của slider */
                display: flex;
                align-items: center; /* Căn giữa các slides theo chiều dọc */
            }




        </style>
    </head>

    <body>
        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="search" xmlns="http://www.w3.org/2000/symbolsvg" viewBox="0 0 24 24">
        <path fill="currentColor" fill-rule="evenodd"
              d="M11.5 2.75a8.75 8.75 0 1 0 0 17.5a8.75 8.75 0 0 0 0-17.5M1.25 11.5c0-5.66 4.59-10.25 10.25-10.25S21.75 5.84 21.75 11.5c0 2.56-.939 4.902-2.491 6.698l3.271 3.272a.75.75 0 1 1-1.06 1.06l-3.272-3.271A10.21 10.21 0 0 1 11.5 21.75c-5.66 0-10.25-4.59-10.25-10.25"
              clip-rule="evenodd" />
    </symbol>
    <symbol id="user" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
        <path fill="currentColor" fill-rule="evenodd"
              d="M12 1.25a4.75 4.75 0 1 0 0 9.5a4.75 4.75 0 0 0 0-9.5M8.75 6a3.25 3.25 0 1 1 6.5 0a3.25 3.25 0 0 1-6.5 0M12 12.25c-2.313 0-4.445.526-6.024 1.414C4.42 14.54 3.25 15.866 3.25 17.5v.102c-.001 1.162-.002 2.62 1.277 3.662c.629.512 1.51.877 2.7 1.117c1.192.242 2.747.369 4.773.369s3.58-.127 4.774-.369c1.19-.24 2.07-.605 2.7-1.117c1.279-1.042 1.277-2.5 1.276-3.662V17.5c0-1.634-1.17-2.96-2.725-3.836c-1.58-.888-3.711-1.414-6.025-1.414M4.75 17.5c0-.851.622-1.775 1.961-2.528c1.316-.74 3.184-1.222 5.29-1.222c2.104 0 3.972.482 5.288 1.222c1.34.753 1.961 1.677 1.961 2.528c0 1.308-.04 2.044-.724 2.6c-.37.302-.99.597-2.05.811c-1.057.214-2.502.339-4.476.339c-1.974 0-3.42-.125-4.476-.339c-1.06-.214-1.68-.509-2.05-.81c-.684-.557-.724-1.293-.724-2.601"
              clip-rule="evenodd" />
    </symbol>
    <symbol id="heart" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
        <path fill="currentColor" fill-rule="evenodd"
              d="M5.624 4.424C3.965 5.182 2.75 6.986 2.75 9.137c0 2.197.9 3.891 2.188 5.343c1.063 1.196 2.349 2.188 3.603 3.154c.298.23.594.459.885.688c.526.415.995.778 1.448 1.043c.452.264.816.385 1.126.385c.31 0 .674-.12 1.126-.385c.453-.265.922-.628 1.448-1.043c.29-.23.587-.458.885-.687c1.254-.968 2.54-1.959 3.603-3.155c1.289-1.452 2.188-3.146 2.188-5.343c0-2.15-1.215-3.955-2.874-4.713c-1.612-.737-3.778-.542-5.836 1.597a.75.75 0 0 1-1.08 0C9.402 3.882 7.236 3.687 5.624 4.424M12 4.46C9.688 2.39 7.099 2.1 5 3.059C2.786 4.074 1.25 6.426 1.25 9.138c0 2.665 1.11 4.699 2.567 6.339c1.166 1.313 2.593 2.412 3.854 3.382c.286.22.563.434.826.642c.513.404 1.063.834 1.62 1.16c.557.325 1.193.59 1.883.59s1.326-.265 1.883-.59c.558-.326 1.107-.756 1.62-1.16a78.6 78.6 0 0 1 .826-.642c1.26-.97 2.688-2.07 3.854-3.382c1.457-1.64 2.567-3.674 2.567-6.339c0-2.712-1.535-5.064-3.75-6.077c-2.099-.96-4.688-.67-7 1.399"
              clip-rule="evenodd" />
    </symbol>
    <symbol id="cart" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
        <path fill="currentColor" fill-rule="evenodd"
              d="M2.249 2.292a.75.75 0 1 0-.498 1.416l.262.091c.667.235 1.106.39 1.429.549c.303.149.437.27.525.398c.09.132.16.314.2.677c.04.38.041.875.041 1.615V9.76c0 1.453.014 2.5.151 3.3c.146.854.438 1.466.985 2.042c.594.627 1.346.9 2.243 1.026c.858.122 1.948.122 3.293.122h5.406c.742 0 1.366 0 1.87-.062c.537-.065 1.025-.209 1.452-.556c.426-.348.665-.797.837-1.309c.163-.482.289-1.093.439-1.82l.508-2.469l.002-.005l.01-.052c.165-.825.303-1.519.338-2.077c.036-.586-.031-1.164-.413-1.66c-.235-.306-.565-.479-.866-.584a4.617 4.617 0 0 0-1.002-.21c-.687-.076-1.522-.076-2.34-.076H5.667a5.932 5.932 0 0 0-.01-.108c-.054-.497-.17-.95-.453-1.362c-.284-.416-.662-.682-1.102-.899c-.412-.202-.936-.386-1.553-.603zm3.46 4.578h11.38c.856 0 1.61.001 2.205.067c.296.034.517.08.672.134a.56.56 0 0 1 .176.086c.062.082.128.23.102.651c-.027.444-.143 1.036-.321 1.926v.002l-.5 2.42c-.16.783-.27 1.303-.399 1.688c-.123.366-.239.523-.364.625c-.125.102-.303.184-.685.23c-.404.05-.935.051-1.734.051h-5.303c-1.417 0-2.4-.002-3.14-.107c-.716-.101-1.093-.285-1.366-.573c-.32-.338-.493-.668-.595-1.263c-.11-.65-.129-1.558-.129-3.047zM7.5 21.75a2.25 2.25 0 1 1 0-4.5a2.25 2.25 0 0 1 0 4.5m-.75-2.25a.75.75 0 1 0 1.5 0a.75.75 0 0 0-1.5 0m9.75 2.25a2.25 2.25 0 1 1 0-4.5a2.25 2.25 0 0 1 0 4.5m-.75-2.25a.75.75 0 1 0 1.5 0a.75.75 0 0 0-1.5 0"
              clip-rule="evenodd" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="alt-arrow-right-outline" viewBox="0 0 24 24">
        <path fill="currentColor" fill-rule="evenodd"
              d="M8.512 4.43a.75.75 0 0 1 1.057.082l6 7a.75.75 0 0 1 0 .976l-6 7a.75.75 0 0 1-1.138-.976L14.012 12L8.431 5.488a.75.75 0 0 1 .08-1.057"
              clip-rule="evenodd" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="alt-arrow-left-outline" viewBox="0 0 24 24">
        <path fill="currentColor" fill-rule="evenodd"
              d="M15.488 4.43a.75.75 0 0 1 .081 1.058L9.988 12l5.581 6.512a.75.75 0 1 1-1.138.976l-6-7a.75.75 0 0 1 0-.976l6-7a.75.75 0 0 1 1.057-.081"
              clip-rule="evenodd" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="cart-outline" viewBox="0 0 16 16">
        <path
            d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="quality" viewBox="0 0 16 16">
        <path
            d="M9.669.864 8 0 6.331.864l-1.858.282-.842 1.68-1.337 1.32L2.6 6l-.306 1.854 1.337 1.32.842 1.68 1.858.282L8 12l1.669-.864 1.858-.282.842-1.68 1.337-1.32L13.4 6l.306-1.854-1.337-1.32-.842-1.68L9.669.864zm1.196 1.193.684 1.365 1.086 1.072L12.387 6l.248 1.506-1.086 1.072-.684 1.365-1.51.229L8 10.874l-1.355-.702-1.51-.229-.684-1.365-1.086-1.072L3.614 6l-.25-1.506 1.087-1.072.684-1.365 1.51-.229L8 1.126l1.356.702 1.509.229z" />
        <path d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1 4 11.794z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="price-tag" viewBox="0 0 16 16">
        <path d="M6 4.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm-1 0a.5.5 0 1 0-1 0 .5.5 0 0 0 1 0z" />
        <path
            d="M2 1h4.586a1 1 0 0 1 .707.293l7 7a1 1 0 0 1 0 1.414l-4.586 4.586a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 1 6.586V2a1 1 0 0 1 1-1zm0 5.586 7 7L13.586 9l-7-7H2v4.586z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="shield-plus" viewBox="0 0 16 16">
        <path
            d="M5.338 1.59a61.44 61.44 0 0 0-2.837.856.481.481 0 0 0-.328.39c-.554 4.157.726 7.19 2.253 9.188a10.725 10.725 0 0 0 2.287 2.233c.346.244.652.42.893.533.12.057.218.095.293.118a.55.55 0 0 0 .101.025.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067c-.53 0-1.552.223-2.662.524zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z" />
        <path
            d="M8 4.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V9a.5.5 0 0 1-1 0V7.5H6a.5.5 0 0 1 0-1h1.5V5a.5.5 0 0 1 .5-.5z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="star-fill" viewBox="0 0 24 24">
        <path fill="currentColor"
              d="M9.153 5.408C10.42 3.136 11.053 2 12 2c.947 0 1.58 1.136 2.847 3.408l.328.588c.36.646.54.969.82 1.182c.28.213.63.292 1.33.45l.636.144c2.46.557 3.689.835 3.982 1.776c.292.94-.546 1.921-2.223 3.882l-.434.507c-.476.557-.715.836-.822 1.18c-.107.345-.071.717.001 1.46l.066.677c.253 2.617.38 3.925-.386 4.506c-.766.582-1.918.051-4.22-1.009l-.597-.274c-.654-.302-.981-.452-1.328-.452c-.347 0-.674.15-1.328.452l-.596.274c-2.303 1.06-3.455 1.59-4.22 1.01c-.767-.582-.64-1.89-.387-4.507l.066-.676c.072-.744.108-1.116 0-1.46c-.106-.345-.345-.624-.821-1.18l-.434-.508c-1.677-1.96-2.515-2.941-2.223-3.882c.293-.941 1.523-1.22 3.983-1.776l.636-.144c.699-.158 1.048-.237 1.329-.45c.28-.213.46-.536.82-1.182z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="star-empty" viewBox="0 0 16 16">
        <path
            d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="star-half" viewBox="0 0 16 16">
        <path
            d="M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="quote" viewBox="0 0 24 24">
        <path fill="currentColor" d="m15 17l2-4h-4V6h7v7l-2 4h-3Zm-9 0l2-4H4V6h7v7l-2 4H6Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="facebook" viewBox="0 0 24 24">
        <path fill="currentColor"
              d="M9.198 21.5h4v-8.01h3.604l.396-3.98h-4V7.5a1 1 0 0 1 1-1h3v-4h-3a5 5 0 0 0-5 5v2.01h-2l-.396 3.98h2.396v8.01Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="youtube" viewBox="0 0 32 32">
        <path fill="currentColor"
              d="M29.41 9.26a3.5 3.5 0 0 0-2.47-2.47C24.76 6.2 16 6.2 16 6.2s-8.76 0-10.94.59a3.5 3.5 0 0 0-2.47 2.47A36.13 36.13 0 0 0 2 16a36.13 36.13 0 0 0 .59 6.74a3.5 3.5 0 0 0 2.47 2.47c2.18.59 10.94.59 10.94.59s8.76 0 10.94-.59a3.5 3.5 0 0 0 2.47-2.47A36.13 36.13 0 0 0 30 16a36.13 36.13 0 0 0-.59-6.74ZM13.2 20.2v-8.4l7.27 4.2Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="twitter" viewBox="0 0 256 256">
        <path fill="currentColor"
              d="m245.66 77.66l-29.9 29.9C209.72 177.58 150.67 232 80 232c-14.52 0-26.49-2.3-35.58-6.84c-7.33-3.67-10.33-7.6-11.08-8.72a8 8 0 0 1 3.85-11.93c.26-.1 24.24-9.31 39.47-26.84a110.93 110.93 0 0 1-21.88-24.2c-12.4-18.41-26.28-50.39-22-98.18a8 8 0 0 1 13.65-4.92c.35.35 33.28 33.1 73.54 43.72V88a47.87 47.87 0 0 1 14.36-34.3A46.87 46.87 0 0 1 168.1 40a48.66 48.66 0 0 1 41.47 24H240a8 8 0 0 1 5.66 13.66Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="instagram" viewBox="0 0 256 256">
        <path fill="currentColor"
              d="M128 80a48 48 0 1 0 48 48a48.05 48.05 0 0 0-48-48Zm0 80a32 32 0 1 1 32-32a32 32 0 0 1-32 32Zm48-136H80a56.06 56.06 0 0 0-56 56v96a56.06 56.06 0 0 0 56 56h96a56.06 56.06 0 0 0 56-56V80a56.06 56.06 0 0 0-56-56Zm40 152a40 40 0 0 1-40 40H80a40 40 0 0 1-40-40V80a40 40 0 0 1 40-40h96a40 40 0 0 1 40 40ZM192 76a12 12 0 1 1-12-12a12 12 0 0 1 12 12Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="linkedin" viewBox="0 0 24 24">
        <path fill="currentColor"
              d="M6.94 5a2 2 0 1 1-4-.002a2 2 0 0 1 4 .002zM7 8.48H3V21h4V8.48zm6.32 0H9.34V21h3.94v-6.57c0-3.66 4.77-4 4.77 0V21H22v-7.93c0-6.17-7.06-5.94-8.72-2.91l.04-1.68z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="nav-icon" viewBox="0 0 16 16">
        <path
            d="M14 10.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-7a.5.5 0 0 0 0 1h7a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0 0 1h11a.5.5 0 0 0 .5-.5z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="close" viewBox="0 0 16 16">
        <path
            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="navbar-icon" viewBox="0 0 16 16">
        <path
            d="M14 10.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-7a.5.5 0 0 0 0 1h7a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0 0 1h11a.5.5 0 0 0 .5-.5z" />
    </symbol>
    </svg>

    <div id="preloader" class="preloader-container">
        <div class="book">
            <div class="inner">
                <div class="left"></div>
                <div class="middle"></div>
                <div class="right"></div>
            </div>
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>

    <div class="search-popup">
        <div class="search-popup-container">

            <form role="search" method="get" class="search-form" action="">
                <input type="search" id="search-form" class="search-field" placeholder="Type and press enter" value="" name="s" />
                <button type="submit" class="search-submit"><svg class="search">
                    <use xlink:href="#search"></use>
                    </svg></button>
            </form>

            <h5 class="cat-list-title">Browse Categories</h5>

            <ul class="cat-list">
                <li class="cat-list-item">
                    <a href="#" title="Romance">Romance</a>
                </li>
                <li class="cat-list-item">
                    <a href="#" title="Thriller">Thriller</a>
                </li>
                <li class="cat-list-item">
                    <a href="#" title="Sci-fi">Sci-fi</a>
                </li>
                <li class="cat-list-item">
                    <a href="#" title="Cooking">Cooking</a>
                </li>
                <li class="cat-list-item">
                    <a href="#" title="Health">Health</a>
                </li>
                <li class="cat-list-item">
                    <a href="#" title="Lifestyle">Lifestyle</a>
                </li>
                <li class="cat-list-item">
                    <a href="#" title="Fiction">Fiction</a>
                </li>
            </ul>

        </div>
    </div>

    <header id="header" class="site-header">


        <nav id="header-nav" class="navbar navbar-expand-lg py-3">
            <div class="container">
                <a class="navbar-brand" href="index.html">
                    <img src="images/main-logo.png" class="logo">
                </a>
                <button class="navbar-toggler d-flex d-lg-none order-3 p-2" type="button" data-bs-toggle="offcanvas" data-bs-target="#bdNavbar" aria-controls="bdNavbar" aria-expanded="false" aria-label="Toggle navigation">
                    <svg class="navbar-icon">
                    <use xlink:href="#navbar-icon"></use>
                    </svg>
                </button>
                <div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar" aria-labelledby="bdNavbarOffcanvasLabel">
                    <div class="offcanvas-header px-4 pb-0">
                        <a class="navbar-brand" href="index.html">
                            <img src="images/main-logo.png" class="logo">
                        </a>
                        <button type="button" class="btn-close btn-close-black" data-bs-dismiss="offcanvas" aria-label="Close" data-bs-target="#bdNavbar"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul id="navbar" class="navbar-nav text-uppercase justify-content-start justify-content-lg-center align-items-start align-items-lg-center flex-grow-1">
                            <li class="nav-item">
                                <a class="nav-link me-4 active" href="index.html">Home</a>
                            </li>
                          
                            <li class="nav-item">
                                <a class="nav-link me-4" href="shop.html">Shop</a>
                            </li>
                           
                            <li class="nav-item">
                                 <a href="Views/admin/DashBoard.jsp" onclick="goToPage(1)">Admin</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link me-4 dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Pages</a>
                                <ul class="dropdown-menu animate slide border">
                                    <li>
                                        <a href="about.html" class="dropdown-item fw-light">About <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="shop.html" class="dropdown-item fw-light">Shop <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="single-product.html" class="dropdown-item fw-light">Single Product <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="cart.jsp" class="dropdown-item fw-light">Cart <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="checkout.html" class="dropdown-item fw-light">Checkout <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="blog.html" class="dropdown-item fw-light">Blog <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="single-post.html" class="dropdown-item fw-light">Single Post <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="contact.html" class="dropdown-item fw-light">Contact <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="productList.jsp" class="dropdown-item fw-light">Products List <span class="badge bg-primary">Pro</span></a>
                                    </li>
                                </ul>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link text-decoration-underline me-4" href="https://templatesjungle.gumroad.com/l/bookly-bookstore-ecommerce-bootstrap-html-css-website-template" target="_blank">Get Pro</a>
                            </li>
                        </ul>
                       
                        
                        
                        
                        <div class="user-items d-flex">
                            <ul class="d-flex justify-content-end list-unstyled mb-0">
                                <li class="search-item pe-3">
                                    <a href="#" class="search-button">
                                        <svg class="search">
                                        <use xlink:href="#search"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li class="pe-3">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <svg class="user">
                                        <use xlink:href="#user"></use>
                                        </svg>
                                    </a>
                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header border-bottom-0">
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="tabs-listing">
                                                        <nav>
                                                            <div class="nav nav-tabs d-flex justify-content-center" id="nav-tab" role="tablist">
                                                                <button class="nav-link text-capitalize active" id="nav-sign-in-tab" data-bs-toggle="tab" data-bs-target="#nav-sign-in" type="button" role="tab" aria-controls="nav-sign-in" aria-selected="true">Sign In</button>
                                                                <button class="nav-link text-capitalize" id="nav-register-tab" data-bs-toggle="tab" data-bs-target="#nav-register" type="button" role="tab" aria-controls="nav-register" aria-selected="false">Register</button>
                                                            </div>
                                                        </nav>
                                                        <div class="tab-content" id="nav-tabContent">
                                                            <div class="tab-content" id="nav-tabContent">
                                                            <div class="tab-pane fade active show" id="nav-sign-in" role="tabpanel" aria-labelledby="nav-sign-in-tab">
                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="sign-in">Username or email address *</label>
                                                                    <input type="text" minlength="2" name="username" placeholder="Your Username" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>
                                                                <div class="form-group pb-3">
                                                                    <label class="mb-2" for="sign-in">Password *</label>
                                                                    <input type="password" minlength="2" name="password" placeholder="Your Password" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>
                                                                <label class="py-3">
                                                                    <input type="checkbox" required="" class="d-inline">
                                                                    <span class="label-body">Remember me</span>
                                                                    <span class="label-body"><a href="resetPasswordC.jsp" class="fw-bold">Forgot Password</a></span>
                                                                </label>
                                                                <a href="userProfile.jsp"><button type="submit" name="submit" class="btn btn-dark w-100 my-3">Login</button></a>
                                                                <div class="text-center my-3">or</div>
                                                                <button type="button" class="btn btn-dark w-100 my-3" >
                                                                    <img src="https://img.icons8.com/color/16/000000/google-logo.png" class="me-2"> Sign in with Google
                                                                </button>
                                                                <button type="button" class="btn btn-dark w-100 my-3">
                                                                    <img src="https://img.icons8.com/color/16/000000/facebook-new.png" class="me-2"> Sign in with Facebook
                                                                </button>
                                                            </div>
                                                            <div class="tab-pane fade" id="nav-register" role="tabpanel" aria-labelledby="nav-register-tab">
                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="username">Your user name *</label>
                                                                    <input type="text" minlength="2" name="username" placeholder="Your user name" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="account">Your account *</label>
                                                                    <input type="text" minlength="2" name="account" placeholder="Your account" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="email">Your email address *</label>
                                                                    <input type="email" minlength="2" name="email" placeholder="Your email address" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="phone">Your phone number *</label>
                                                                    <input type="tel" minlength="2" name="phone" placeholder="Your phone number" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="address">Your address *</label>
                                                                    <input type="text" minlength="2" name="address" placeholder="Your address" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="password">Password *</label>
                                                                    <input type="password" minlength="2" name="password" placeholder="Password" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <div class="form-group pb-3">
                                                                    <label class="mb-2" for="confirm-password">Password again *</label>
                                                                    <input type="password" minlength="2" name="confirm-password" placeholder="Password again" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <button type="submit" name="submit" class="btn btn-dark w-100 my-3">Register</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                
                                <li class="wishlist-dropdown dropdown pe-3">
                                    <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-expanded="false">
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </a>
                                    <div class="dropdown-menu animate slide dropdown-menu-start dropdown-menu-lg-end p-3">
                                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                                            <span class="text-primary">Your wishlist</span>
                                            <span class="badge bg-primary rounded-pill">2</span>
                                        </h4>
                                        <ul class="list-group mb-3">
                                            <li class="list-group-item bg-transparent d-flex justify-content-between lh-sm">
                                                <div>
                                                    <h5>
                                                        <a href="single-product.html">The Emerald Crown</a>
                                                    </h5>
                                                    <small>Special discounted price.</small>
                                                    <a href="#" class="d-block fw-medium text-capitalize mt-2">Add to cart</a>
                                                </div>
                                                <span class="text-primary">$2000</span>
                                            </li>
                                            <li class="list-group-item bg-transparent d-flex justify-content-between lh-sm">
                                                <div>
                                                    <h5>
                                                        <a href="single-product.html">The Last Enchantment</a>
                                                    </h5>
                                                    <small>Perfect for enlightened people.</small>
                                                    <a href="#" class="d-block fw-medium text-capitalize mt-2">Add to cart</a>
                                                </div>
                                                <span class="text-primary">$400</span>
                                            </li>
                                            <li class="list-group-item bg-transparent d-flex justify-content-between">
                                                <span class="text-capitalize"><b>Total (USD)</b></span>
                                                <strong>$1470</strong>
                                            </li>
                                        </ul>
                                        <div class="d-flex flex-wrap justify-content-center">
                                            <a href="#" class="w-100 btn btn-dark mb-1" type="submit">Add all to cart</a>
                                            <a href="cart.jsp" class="w-100 btn btn-primary" type="submit">View cart</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="cart-dropdown dropdown">
                                    <a href="cart.jsp" class="dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-expanded="false">
                                        <svg class="cart">
                                        <use xlink:href="#cart"></use>
                                        </svg><span class="fs-6 fw-light">(02)</span>
                                    </a>
                                    <div class="dropdown-menu animate slide dropdown-menu-start dropdown-menu-lg-end p-3">
                                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                                            <span class="text-primary">Your cart</span>
                                            <span class="badge bg-primary rounded-pill">2</span>
                                        </h4>
                                        <ul class="list-group mb-3">
                                            <li class="list-group-item bg-transparent d-flex justify-content-between lh-sm">
                                                <div>
                                                    <h5>
                                                        <a href="single-product.html">Secrets of the Alchemist</a>
                                                    </h5>
                                                    <small>High quality in good price.</small>
                                                </div>
                                                <span class="text-primary">$870</span>
                                            </li>
                                            <li class="list-group-item bg-transparent d-flex justify-content-between lh-sm">
                                                <div>
                                                    <h5>
                                                        <a href="single-product.html">Quest for the Lost City</a>
                                                    </h5>
                                                    <small>Professional Quest for the Lost City.</small>
                                                </div>
                                                <span class="text-primary">$600</span>
                                            </li>
                                            <li class="list-group-item bg-transparent d-flex justify-content-between">
                                                <span class="text-capitalize"><b>Total (USD)</b></span>
                                                <strong>$1470</strong>
                                            </li>
                                        </ul>
                                        <div class="d-flex flex-wrap justify-content-center">
                                            <a href="cart.jsp" class="w-100 btn btn-dark mb-1" type="submit">View Cart</a>
                                            <a href="CartCheckout.jsp" class="w-100 btn btn-primary mb-1" type="submit">Go to checkout</a>
                                            <a href="orderHistory.jsp" class="w-100 btn btn-primary" type="submit">Order History</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

    </header>
    <section id="billboard" class="position-relative d-flex align-items-center py-5 bg-light-gray" style="background-image: url(images/banner-image-bg.jpg); background-size: cover; background-repeat: no-repeat; background-position: center; height: 800px;">
        <div class="position-absolute end-0 pe-0 pe-xxl-5 me-0 me-xxl-5 swiper-next main-slider-button-next">
            <svg class="chevron-forward-circle d-flex justify-content-center align-items-center p-2" width="80" height="80">
            <use xlink:href="#alt-arrow-right-outline"></use>
            </svg>
        </div>
        <div class="position-absolute start-0 ps-0 ps-xxl-5 ms-0 ms-xxl-5 swiper-prev main-slider-button-prev">
            <svg class="chevron-back-circle d-flex justify-content-center align-items-center p-2" width="80" height="80">
            <use xlink:href="#alt-arrow-left-outline"></use>
            </svg>
        </div>
        <div class="swiper main-swiper">
            <div class="swiper-wrapper d-flex align-items-center">
                <div class="swiper-slide">
                    <div class="container">
                        <div class="row d-flex flex-column-reverse flex-md-row align-items-center">
                            <div class="col-md-5 offset-md-1 mt-5 mt-md-0 text-center text-md-start">
                                <div class="banner-content">
                                    <h2>Trang web nay de ban meo</h2>
                                    <p>Best Offer Save 30%. Grab it now!</p>
                                    <a href="shop.html" class="btn mt-3">Shop Collection</a>
                                </div>
                            </div>
                            <div class="col-md-6 text-center">
                                <div class="image-holder">
                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkJiPD_Kbk4hUmkvhUZKgeXLXd5ZarycuOig&s" class="img-fluid" alt="banner">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="container">
                        <div class="row d-flex flex-column-reverse flex-md-row align-items-center">
                            <div class="col-md-5 offset-md-1 mt-5 mt-md-0 text-center text-md-start">
                                <div class="banner-content">
                                    <h2>How Innovation works</h2>
                                    <p>Discount available. Grab it now!</p>
                                    <a href="shop.html" class="btn mt-3">Shop Product</a>
                                </div>
                            </div>
                            <div class="col-md-6 text-center">
                                <div class="image-holder">
                                    <img src="images/banner-image1.png" class="img-fluid" alt="banner">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="container">
                        <div class="row d-flex flex-column-reverse flex-md-row align-items-center">
                            <div class="col-md-5 offset-md-1 mt-5 mt-md-0 text-center text-md-start">
                                <div class="banner-content">
                                    <h2>Your Heart is the Sea</h2>
                                    <p>Limited stocks available. Grab it now!</p>
                                    <a href="shop.html" class="btn mt-3">Shop Collection</a>
                                </div>
                            </div>
                            <div class="col-md-6 text-center">
                                <div class="image-holder">
                                    <img src="images/banner-image.png" class="img-fluid" alt="banner">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <section id="best-selling-items" class="position-relative padding-large ">
        <div class="container">
            <div class="section-title d-md-flex justify-content-between align-items-center mb-4">
                <h3 class="d-flex align-items-center">Best selling items</h3>
                <a href="shop.html" class="btn">View All</a>
            </div>
            <div class="position-absolute top-50 end-0 pe-0 pe-xxl-5 me-0 me-xxl-5 swiper-next product-slider-button-next">
                <svg class="chevron-forward-circle d-flex justify-content-center align-items-center p-2" width="80" height="80">
                <use xlink:href="#alt-arrow-right-outline"></use>
                </svg>
            </div>
            <div class="position-absolute top-50 start-0 ps-0 ps-xxl-5 ms-0 ms-xxl-5 swiper-prev product-slider-button-prev">
                <svg class="chevron-back-circle d-flex justify-content-center align-items-center p-2" width="80" height="80">
                <use xlink:href="#alt-arrow-left-outline"></use>
                </svg>
            </div>
            <div class="swiper product-swiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="card position-relative p-4 border rounded-3">
                            <div class="position-absolute">
                            </div>
                            <img src="data:image/jpeg;base64,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" class="img-fluid shadow-sm" alt="product item">
                            <h6 class="mt-4 mb-0 fw-bold"><a href="single-product.html">Meo trang</a></h6>
                            <div class="review-content d-flex">
                                <p class="my-2 me-2 fs-6 text-black-50">1 Chu meo trang</p>

                            </div>
                            <span class="price text-primary fw-bold mb-2 fs-5">$870</span>
                            <div class="card-concern position-absolute start-0 end-0 d-flex gap-2">
                                <button type="button" href="#" class="btn btn-dark" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Tooltip on top">
                                    <svg class="cart">
                                    <use xlink:href="#cart"></use>
                                    </svg>
                                </button>
                                <a href="#" class="btn btn-dark">
                                    <span>
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card position-relative p-4 border rounded-3">
                            <img src="data:image/jpeg;base64,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" class="img-fluid shadow-sm" alt="product item">
                            <h6 class="mt-4 mb-0 fw-bold"><a href="single-product.html">Meo den</a></h6>
                            <div class="review-content d-flex">
                                <p class="my-2 me-2 fs-6 text-black-50">1 Chu Mon leo</p>
                            </div>

                            <span class="price text-primary fw-bold mb-2 fs-5">$870</span>
                            <div class="card-concern position-absolute start-0 end-0 d-flex gap-2">
                                <button type="button" href="#" class="btn btn-dark" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Tooltip on top">
                                    <svg class="cart">
                                    <use xlink:href="#cart"></use>
                                    </svg>
                                </button>
                                <a href="#" class="btn btn-dark">
                                    <span>
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card position-relative p-4 border rounded-3">
                            <img src="data:image/jpeg;base64,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" class="img-fluid shadow-sm" alt="product item">
                            <h6 class="mt-4 mb-0 fw-bold"><a href="single-product.html">Meo mau nau</a></h6>
                            <div class="review-content d-flex">
                                <p class="my-2 me-2 fs-6 text-black-50">Kikikiekekekekakaka</p>
                            </div>

                            <span class="price text-primary fw-bold mb-2 fs-5">$870</span>
                            <div class="card-concern position-absolute start-0 end-0 d-flex gap-2">
                                <button type="button" href="#" class="btn btn-dark" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Tooltip on top">
                                    <svg class="cart">
                                    <use xlink:href="#cart"></use>
                                    </svg>
                                </button>
                                <a href="#" class="btn btn-dark">
                                    <span>
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card position-relative p-4 border rounded-3">
                            <img src="data:image/jpeg;base64,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" class="img-fluid shadow-sm" alt="product item">
                            <h6 class="mt-4 mb-0 fw-bold"><a href="single-product.html">Con meo nhin giong con ho</a></h6>
                            <div class="review-content d-flex">
                                <p class="my-2 me-2 fs-6 text-black-50">Con meo co van van</p>

                                <div class="rating text-warning d-flex align-items-center">
                                </div>
                            </div>

                            <span class="price text-primary fw-bold mb-2 fs-5">$870</span>
                            <div class="card-concern position-absolute start-0 end-0 d-flex gap-2">
                                <button type="button" href="#" class="btn btn-dark" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Tooltip on top">
                                    <svg class="cart">
                                    <use xlink:href="#cart"></use>
                                    </svg>
                                </button>
                                <a href="#" class="btn btn-dark">
                                    <span>
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card position-relative p-4 border rounded-3">
                            <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhMVFRUVFRUQFRUVFRUVEBUVFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGisfHyUtLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tNzc3LTc3LS03Lf/AABEIAKIBNgMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAEBQMGAAIHAf/EADwQAAEDAwIDBwIDBwIHAQAAAAEAAgMEESEFMQYSQRMiUWFxgZEyocHR8AcUQlKx4fEjYjNDcoKSotIV/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDAAQF/8QAIhEAAgIDAQACAwEBAAAAAAAAAAECEQMhMRIEQRMiYVFx/9oADAMBAAIRAxEAPwCzUyPjS2lcmURVESZO1SNCjYiIoidgiAwLZjCdkdT0H8yOZEBsFg0LoaIndHRU7QpSVq56w1G2y0c9RukUL5FqCTOkQzqjK1dKgqqTqsFIP/eF6J0jdVqL/wDQshYfJYDMl9ZN3XDyKXjUcqCrrcoOSoKWxLHUWKJ7dKa1tnm3jdFRRPIuMj1XFG02eg0qTCnTEI2lrrDxCVNifffHmiGROBuPVPdE5JM210VHJ2lK+9smM7+fKVU9U4hq3RkFxbjI6+Y9VcZZwNsear+sRh5vyg3GfA/CjP5Pn7NDCn1HK67VJySHSvcD4uJBsgCLi/mrHrekHlcQLct3WGRYb2uUgpiC3lPirxyelZCePy6LhwhQtnie14ubWHiMmxS+t4eliuSCAXhjfAki/wCCZ/s6cRO9vQBoP/ccLp9fpLZA24wH9p/62C6I7RNqjhhr5YJO65zS04sdiuk8L8WytaHvJeCLed1TOO9O5Kh77YJHzyNNviybcFuFuU9LFc2ecoK0WwwUm7OmUWoTVI5nns2HZo+tw8/BEyTD6RgD7+qXUs4cFN+732SRzexvxeTZ8zRshairwpZIbdAl9UG7F3sFR3WhopBnDt3yj5V17NVvhKmFy4fdWwK+GNRObO1KQOWFRuBRi1LQqkKAHFaI8whROp0UwUCLFMYCsTWYqNIU1p2E4CD0agfJsLDxVvo6JrBspLgeglJp3VyaRRBuwWy8LlgpHpK1c9alyFmlWCTOlUZkQzpFD+8IhoIdKoJ5LZQ9RKdwhjVXC1hSCBVXUb3F2EDT3c+wTglrMdUtjJCGsBaUBNIrVI9jxZwVY1akMR/29CpyGRB2qyWS6CfMt4Knx2SpjNAPEkrmAPbfzSmm1hw6n5Kt1ZTMljI3FrqjdhH2nLfF7KM4s7/jzi400WjTtRLtyT4tO/smctc0C11W7GNtxYgeOPuoP3kOIu/2/I7FRnNpUb8abtDx9XfbxUUxwRf36i6Ep2WyHY8x+IupJpL3FgQdjuLe2y8+bbZVRSFGsf6bXE2v1xhw9PS651PEWuPqSF0TiFx5DkFox1wPNVKWASxlzd27+X6su74rqOzn+TG6H/7PX8z5C0ZJi9e64E/ZdpDAWD0suNfs0YGzfa3mXNz8MPyuxUsndXpw4efI53+0PTmuGCA67pDfzAYT7YSvh+JrWN5bXcOYnqRm34lW3jOhDw956R2F9gbnfyz9lS9IqBfum9hbmOxt9TvS/wDRcnzdxo6/iK2W1k/KP19kVp1c4ny9UiizYlxt0HU/kippy0DlHwPxXmY5OMjqnBMstVIwM5nZ62VQqNQ55A0NGT4oynp+0zKST4G9h6BSUzYGyhrQA6/ldenCXpEUlCy76C3kjA901E6TxyWAUzJl2x0jgltjQTLcPulglU0cqYShgCvUIJlsJwsCgkLFCJgvFjBFPA1gs0WW5cvC5RSPQMbueo3SId8qHlmWCkEyVCgmkuEvkqMqP94K1jUTvnshJZlpI5QyFI2MkSvmNkKXrznUdiTYJGw0OKABjDIdzgId8l8lb17+VrG+AQjn3GEspU6L44ask7a3VbVLhNE5m5AuPZAl68heWuB6HBQ9GlAq9RLa/kgnanyqx69obiC5guHZ9FVqjQJbX5SloHUWnSKtkkZIObZCpXElNyy8zRv9Q/FHaPBI15at9ZB91HLOi+GOxNLWvc2xOPsEZpUV9s/9W/sPD1uhoKVznAWVuodLDQLfr3XHKbfDraUemUsJta59tvhAV0nI/Id62DiL/Bt7q3UdIDugtbMTAeZzB48zg0/dCOKVWiP5UnsqfEOnvdGXxi4I7wzfO+6V8A6Z2nbEi4BG/UWPT1CeU/EtMCWCRpbta428rJtw1SMiEhjILJCHttkdbi/uuzHH9aohklu7AOG9FMNQ8jIvbyH1Ekf+Q+Ff6U4QNHCBc23RcLsH1XbDSOSXRfxNTGSnlY3dzHAe4K59wvoEhF34aNz6bAX6efiV02ofgjxCp+t8T08Q7MSNFtxfr52SZUmh8UmnoX1EvLJe1rYFm81h6n8ERLUXFrH0v/lC6TqtPM7/AIjCd/qz8FP3MYBzADwBuD8ZXlzhK7qjvjkjzpXoSW33HuPyRGiUg7cSG5t53W8zS44C8pKgMfY9UMWVplJxuJfo5LhbNcllBNhMGuXsxdpHktUyXtFKyYoQuW7SqAoJM5XrJUNdbsKxqDGyrEOFiIKHznKN5UMki07dYnRpKUFNJdTzvugpErHRE4rUlY9RlyUY9cVBI5bSOQdRNZKwmOkTPR6e55ilGmwPmdgYvurbT03I30QQWV7iWos4BBUs5Asf7LbiCUPfgXKc0lI0tGOijVys63JRxoWdmXbC91q2FwwehVgigDcBSdkPBM4og8gLQnu2KkmhaRaynIAQ8xWbpCrbFFTprAbgWKpXEbrPsuiPZjKp/FmmnlL256qGSPpF8MvMtlLfXljhYn1Vo0zihtrOa4n/AGi4+yqIa2R1s3Vm0ZjIbEtxubrlyKMY/wBOv9pP+DybXJOze6OOSzWF5Ju0WAuclcc1WufK/tZCXud3hzEuAHQLu1Lq1PLE6K477Swi21xbJXEtd0KSmeY5AQATyOIPKR0yu74qjV3ZwfI9XVULIAHC2ea9wb921tiLb+d1eP2Zao7mfA52LczQTgG9iAqhp1G5zgyIGWR2GtYL+5PQLoPBXA0sU7ZJiHWaXFrb2DiRu7Z3X+66mkQhZfKOU2yimvTCn00EbW6r2TSQNijQSlcY6sYaSZ7TZ3Lyt9XY/FcQmccEkknN12T9oXD8ksRazcEO62IC5PqGmyRd2VpbbAeASw9QCehQXdgknWgekAcfAjI9Quh6dWTvp43su4EWsDkEYtlUKigLnckQL3u7oDQTa/VdOpXR0lPHATzPa27+U3s45Nyub5XnwV+KpetIRVeqzM+pp+QoINa5iL736KwThs7TYKnVFEWy2xv7rjw+Jr+nbkc4s6tpdRdjfRM2zKpabI4MHomMdeQvSx6icU1ssDJFKHpFHXhFx1oVUxKGgcpmpbHOimzIgDGFYomPXixhvOl8r0RLKg5CsJRhctHFeErVzkrYUaPKElksVvLLZKaussUjYyRNWVYCEoeaZ4ba4vlBQvMj87K+aBpgYOc7lKtseX6oYUFI1jQAAFvL4LeSVD86LkTSsCfpsd72ytiOXCKKhe1I2U/6Rhy2WuAo+2slCSuKifuvHyhCumubD1QbCkSPkS+uAcDfrhTPk3yhJngBI2Okc01CmdDU91t2k7Agfc7K4t0vnjBOLjxv/lDVdDzElwBJNz5IPSOIXxyGKcgNBs3FhYbJHjjPpX3KPBvR6L0cMeI7p+QU8i0EPbyk87f5XgOHyURRSsdkEH3um0UllfDgUEc+XNKfQXTeGoIR3WNb4hjQ0H1I3TB0TQLNAACiM7nbD3OAtI6rpl9v5RZoPqV1JENg8+uQxuLDI1rha4c8NOdrcxyvZNW5QS4gDxcQ1udrkmyV8UadDUs/1o23H0uIu4fCQiAVJ7Kfl5I3AjB7xAsD5YKDs6oQhKNlwgqWTC7SHDYnduPA7KCfQoX7t+Rj42K2oWNjaGsaOUCwAIRbfVw9QLLNX0533RWKrhbswexDW3FjytDSfcZVYn0F4dtbOdrLqnKeuUPJTDxXJl+Mp/Z0YfkPH9FP03Sw1uUC7RWmQvB6+R/BXCpgBw0/YoWSmEYtfPoUuP4/gMs7kxG+IDFz8IWYAbH5uEZVSC/1D4P5JZO6/wDE0+9v6gKt0BKwWpnLf1cLSLU3BRVEJPQ+3eHvZCWTJhlEsVNrSYxa03xVMULyU6kRaOiw6y09Vi5zDUuB3WJvQlHay5RPW5CjenYiNXIaR9lK+RKK6p8EjGRBX1dkqMnMo9TmN8HKHp3m+d1FvZeMNWPtBoOaQEE+nRdAaeVtlVOFhm5VjqJLJuInLbPJJFA6ZeNBKjfDlI7CqCWyLe90oqTKy7hawybqpP47k5rNbCxve79RL2TTy9BYE3PTGU8Itrhmv6XmYWQle2zbhVXRP2gQVREcg7J5wDfmYT5O/NWqolLm2GTe2Oo8UriFapiihq3OcRmw3/JEPqwLn2v4plFQNjj8zk+ZKRSwWdc7NGB0v4qUk4oommyQTXyV49wtdBTSkkAfCkjl6EjGPdTQ7M5Lknpt6lVTirTr96Noc4eIwM+G2PO/orsGg9CfGyhqaJrgeawaBsqLQjeil8I69Mx3I/vNb9Ttmi+zWgDJPgMm2Auladq8Ug7jrgbnp87KpDSmu6ckQ6N3dfoPM/rbBMumFwb2dmcv0sH/AAx5uHU+ftte9oyJuKLpzBwsMj7LR48/jAVabLIy0dzZuXOJyT+spvSzk4JVFMRqgTU3uN2xi7rHJ+lv5qu0Gg1EUrpWzOcXHme1+WOPp09le2QhStpgnCp0LdPJcMixG4/umsUdl6IgFIFhGzZauYCvQvUoAWcBouqtq1WSTYqyag4gY+6pupVguWvbbz3H/wBfcpJukVxq2K557oV0ilmaDkHHj9Tfew5m+4XtFpM0ps1uD1wR8hc6i2zruKQG/KmipZJNmud4XH9Cr3onBTW2dL3j9la6bTI2CwAV44munPPMnw5Ezhqodsy3qphwXUn+ULsTadvgF6aceCooIi52cbHA1Tf+FYuyCIeCxHygehASh53KV7ktq5uiLYED1Ep6JbVuwi5XWVc1uvAByozZWKtgGoVGdx8qCnrRcNLhb1z7FIql5cTbKEZG7msbhQvZ1aSo7Vwe/u4Nx90/qMqnfs6BDLFziPMY9iro4q/UcktSJIGKKoktuthMh6x+EsnoEegXE7i+imEf1cpAtuuAcQvc7kd/CR9/PzXeWvIuBlp+oKk67wY97i+k5CHG5ifbkudyD0Ktiypx8sM4WtHLKFrr8wxy5v5ru/BbnyUjJHZOy51LwbXveI3sjYy4uGHFuvquy0FIIIGRgWDWgfZNLz9AjaWyOapxnZKpTfIuEZW5sFrFGuVptjp0K6mERsMh3sSPZI6KodzBxyTkWF/srLrNI6QBo26lRQ6exm1r/dJKBSM9HlNNfcEea3ewYGSN8n7lQdnb0+62J6Z/IdAggs3rXtDST0GAs0mpPKA8ZOfboFo43wkWqV74nkkd3ma29875V4Mm0Wx8DTuLi915yWVf0bXhKQATnP3KtL29xpO6av8AASi0E00iNEoSuNFNTkwgyLYFQhbNKwKJgVsCo2lbBYBpVQcwVV1PTr3Dh+vw/WFcAVBUUwctSY0ZNFN0nhwl4PTx2Kv2nUDImgAAey8oqYNClkksmSUVoEm5PYWvLISKa5RRkwsBpo2D1KHqBq2AWATh4WKIL1Y1IptRPlLJ5DutpptygX1YKSTHSF+r1xaP7qmVj3SHL2j1dZPuIn3abKmOGcrmm90dONUgkUbesrR6Bx+4TjR4WXsZ3HyMZLfucJdQQ3wBjz2+Fb9Kp2MH0W9Bj7oKkGTLRw7MGkBtiNsY+ytEhCqFBUWOwt6EFWenl5gFeO0c0ug08Rvdp/Ar1jiRZyLc0LZjAsoB9AkIYDkBGRMB+hrR5gBSdi3+UH2sflbQxNHiPK+FvNA9WQSgAge5NlI54tgJLxFrP7s9t28zX91p6Nd4H1WkGuMdj6T4HdD2rossEnFS+ibUWndux+Qldfq8dNEXvNrC/mfREy19znY4CofGOjT1DXnflu9tj4dLeiyasXx/oqr+PJ3O5xgH6WndNeG+OBK8RyjkJwHf8snwJ/hK57Wwuc1rgLi1jboRuCFNplOW3c4WaB9/JWeOyP5HZ3gC4uENJ1ykfC+oSdjGJQWuIwT1HS/mnsmQuaWtF1YJCk+uwNe0km1rkevK6ye9jYJJrWlvk+k2/wAEIRY+rIODNKLbHfoP8K9znIaOg+6U6PSiCNrb3d4prAy+6qmJllfCWNqIYtWtUgCoRNgF6QvFgKxjZe8y0LlqXLGona5SAoUOUgciCg1rlrLlQxzAboiKVh6prGS+zRrLBascbqd9Qza4UjYgRhAa66iAVGbIyKRDfupGVDzZWA4p8GfOF6lAlJO6xaxfxlE1OblaVXHVJHVMtansCqtU1a5MkmpHRiivOzbU6u4skcbLle1NRcovTYOYhK9h4OdGoCbFWWNuMFC6dHZoCYQtysBsP06M4v8A0VihFgl+m0+AmbxYKqVIi9kjSpQlkVRY5TBkgKpF2I1RK6TCDmqSOqIIQtRS3TBjRXOI6sODRgu5hyjxKAl0epkLXRvEdtxa4N/EJxUaab3A2N0wom2Szgmju/P4glEChoS1oEhBPUgWF/Ja9hyDGfx9Uzqo+YWIu0/I9Fo2nti9x91FpnL6t7KRqPCUEri+N5hecuAtyk+hU+ncEwsIdLIZSMgY5fgKwVFBc4K0ZSkLLLNaHcV0gradptYAW2XjPC+yPMSELMqcu2Mme2W3IpGMW8zcW8U0RWyOkZc3TeJqDpmAI5qtBaIyeyQBerW6jdIqCkvMtXPQz5kPJVAdVghpkXnaJaKq6la9Y1Bwetw9CB695lg0a6hKbYSGnq3hxuU1rZbBVyorAHJZbL4r4hw2tzlM6LVXNO+FVxU3yEW2fYpEWcXWy90WstfgqSpI6KnU1TYghWTTq4Owd/BVTOaWPdoIhprrEex98LExFyZyXiWhIBIVDqb3Xa9XoA8Fcw4g0gxuJthc+WH2VxT1RVXsuVYNCiylkdMSVZNNp7BSSpFGOqcYTCjGUuiNkdRTi6KFZZKE2wj5hjCX0zgW3CIinGxVvoiJ6p5DlPTVRHVS1tLfIQPZWUVcWW00O6euBRzDdV2I8uUfBWK8ZWRkhk+IKAU9ljKoHqtxMnBbM7NYWhYXqOQoMxHLG0qMNChlJ6KNs1zn+6i+lFdEk7gAlznXKmqSbeKHiASPo6CY1FM/K0llsEoqq7lNzsnSFZYad6MjekNHWNcLghMIp1VExiXoeV6idOgKuuAvlExvqFTytJVem1YHHNsk3EXEHM0tadiqedScTusG6Op0FYHbFOYJFROG6g8uVbaadL6GoadovRIhQ5bhy3oJJW0pew2XMtSqnwyljr7rqUVTZVfifQTOedrU9aCm1wrFNroCaU/EEfUpLPoDm4IsgZdJcPFJRdTk+l/o65jx3XAqxadVtcLOwRsRuFxqKOWM3a4hWjROJuUgS481loEqkdi0uY8veIJ8fELEl0acPG+CA4LFVM5ZQ2MZtlSeKmjlOFixCfBMfSkxDKd02yxYuZnUFle0p7yxYlQrLLppRkgysWKxIlOyDesWJJDxIHLYrxYlRmSU5RMJN1ixWQjCrrAsWJmAHn3QsqxYoyKR4aTKGRYsSBB3pBrw/wBMr1YqoRibh6R1zk7+JVvhcfFYsTikr3GyrOtPNnZK9WIhRQqs94oemHeCxYsAvek7BPYDleLFNlRrGVOFixBGR6E4oRcLFi6IAkJtdjHgPgKp1AWLEky2PgrqQl1SBZYsShZ0Tgd5/dmZP8Q9uZerFidCM//Z" class="img-fluid shadow-sm" alt="product item">
                            <h6 class="mt-4 mb-0 fw-bold"><a href="single-product.html">2 chu meo</a></h6>
                            <div class="review-content d-flex">
                                <p class="my-2 me-2 fs-6 text-black-50">2 con meo o canh nhau</p>
                            </div>

                            <span class="price text-primary fw-bold mb-2 fs-5">$870</span>
                            <div class="card-concern position-absolute start-0 end-0 d-flex gap-2">
                                <button type="button" href="#" class="btn btn-dark" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Tooltip on top">
                                    <svg class="cart">
                                    <use xlink:href="#cart"></use>
                                    </svg>
                                </button>
                                <a href="#" class="btn btn-dark">
                                    <span>
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card position-relative p-4 border rounded-3">
                            <img src="data:image/jpeg;base64,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" class="img-fluid shadow-sm" alt="product item">
                            <h6 class="mt-4 mb-0 fw-bold"><a href="single-product.html">Chu meo tam the</a></h6>
                            <div class="review-content d-flex">
                                <p class="my-2 me-2 fs-6 text-black-50">1 chu meo tam the nang 100kg</p>
                            </div>

                            <span class="price text-primary fw-bold mb-2 fs-5">$870</span>
                            <div class="card-concern position-absolute start-0 end-0 d-flex gap-2">
                                <button type="button" href="#" class="btn btn-dark" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Tooltip on top">
                                    <svg class="cart">
                                    <use xlink:href="#cart"></use>
                                    </svg>
                                </button>
                                <a href="#" class="btn btn-dark">
                                    <span>
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <section id="best-selling-items" class="position-relative padding-large ">
        <div class="container">
            <div class="section-title d-md-flex justify-content-between align-items-center mb-4">
                <h3 class="d-flex align-items-center">Feature Product</h3>
                <a href="shop.html" class="btn">View All</a>
            </div>
            <div class="position-absolute top-50 end-0 pe-0 pe-xxl-5 me-0 me-xxl-5 swiper-next product-slider-button-next">
                <svg class="chevron-forward-circle d-flex justify-content-center align-items-center p-2" width="80" height="80">
                <use xlink:href="#alt-arrow-right-outline"></use>
                </svg>
            </div>
            <div class="position-absolute top-50 start-0 ps-0 ps-xxl-5 ms-0 ms-xxl-5 swiper-prev product-slider-button-prev">
                <svg class="chevron-back-circle d-flex justify-content-center align-items-center p-2" width="80" height="80">
                <use xlink:href="#alt-arrow-left-outline"></use>
                </svg>
            </div>
            <div class="swiper product-swiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="card position-relative p-4 border rounded-3">
                            <div class="position-absolute">
                            </div>
                            <img src="data:image/jpeg;base64,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" class="img-fluid shadow-sm" alt="product item">
                            <h6 class="mt-4 mb-0 fw-bold"><a href="single-product.html">Meo trang</a></h6>
                            <div class="review-content d-flex">
                                <p class="my-2 me-2 fs-6 text-black-50">1 Chu meo trang</p>

                            </div>
                            <span class="price text-primary fw-bold mb-2 fs-5">$870</span>
                            <div class="card-concern position-absolute start-0 end-0 d-flex gap-2">
                                <button type="button" href="#" class="btn btn-dark" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Tooltip on top">
                                    <svg class="cart">
                                    <use xlink:href="#cart"></use>
                                    </svg>
                                </button>
                                <a href="#" class="btn btn-dark">
                                    <span>
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card position-relative p-4 border rounded-3">
                            <img src="data:image/jpeg;base64,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" class="img-fluid shadow-sm" alt="product item">
                            <h6 class="mt-4 mb-0 fw-bold"><a href="single-product.html">Meo den</a></h6>
                            <div class="review-content d-flex">
                                <p class="my-2 me-2 fs-6 text-black-50">1 Chu Mon leo</p>
                            </div>

                            <span class="price text-primary fw-bold mb-2 fs-5">$870</span>
                            <div class="card-concern position-absolute start-0 end-0 d-flex gap-2">
                                <button type="button" href="#" class="btn btn-dark" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Tooltip on top">
                                    <svg class="cart">
                                    <use xlink:href="#cart"></use>
                                    </svg>
                                </button>
                                <a href="#" class="btn btn-dark">
                                    <span>
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card position-relative p-4 border rounded-3">
                            <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFRUXFRgXFRUXFxcVGBgVFRUXFhYXGBcYHSggGBolHRUXITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0lHx8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKgBLAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAAEDBAYCB//EADwQAAEDAgQCCAUCBQMFAQAAAAEAAhEDBAUSITFBUQYiYXGBkaHwEzKxwdFC4QcVI1LxYoKSFDNEosIW/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAIDAQQF/8QAIxEAAgICAwACAwEBAAAAAAAAAAECEQMhEjFBBBMUUWEicf/aAAwDAQACEQMRAD8A9nhPCeEgEoDJ4TwnhAHMJLpJaAyULqEkAUcTuMjdN+Cz9TE3NOpPmuukmIFriPcIDTuC7dcGXI3KkdWOH+bZrLHGT+rbmjjXA7Lzt16G6StF0fxOeqT3KmLPvixcmLVo0kJQkCul1nONCeEkkAJKEoSQAkk8ppQAkoSSQAkoSSKAIbmuGNLjsEM/mkkEEb+wqPS+6lnwwY2nzWfOINplrQSdN4IHmuTLmqVI6ceG42bV2KNA13UQxts7eqw2I4m5zgxm+/79yltsrxAOYjczxU/yJFPx0lbPRrauHtkKVZzBbv4YyHafLzWjaV2Y58kck48WJJOknFGSTpIASSUpIASZOkgCOEkk8IAZPCdJAChJPCSAGhOkkgDFdK6AfVM8In66rF3b30z1DmbyP2XovSvCS9pez5v1AcQFgiAAZXmZ41PZ3YXcSky4JMmfHcI5YXmUjsWccZJMK1b1oKj0VaPVMMxEPAHYiocF5rgmJ5XQT3rUjFuEr0MWZNbOOeKno0IelmQJ2LjfvSbjA9FT7YifWw9mTFyENxUSu24iCt+xGcGFU6HMxBu0rt18BxW80ZxZeBTOKF/zdqiuMXAGiV5or01Y5BR1cDiqGIYwym0knVZHFcdIO+nFZ7G8akdUyuSfy/InTD437Lt/iJrPJ3PKVXpUszyagIAGg39dlX+DkAe1xGYDMOzv4Lv+YOgzt2awFGKvs61HWiS4riNANdJ7OKazxIMEMA7+faqNKqw9YRoduampW9JxzMB7d4lY9Akl2HcLv6j3TwB7APPcr0SxrZ2A9i85wqm9xDWN07F6Lh9LKwN5Bdfxm2cPyKLKSeEy7DmEknTIASSSSAHTJJIAZJMnQAk8pkkAPKSYJ0AJJJJADOC836UYYadYkDqu18V6Ss70stJZmA2XP8mHKN/othlUjza6pwhz7rgPNHLsSJQ1lKXbA9hkLz1s7bJ8GDnaz2Hs5FaDI+QfP7psKsWwHNBaY1B19UXp0dOaook3LZXFLafFS/C5bQrXwNp20VevXAMLW67MWyxbsAA5/n/C7Y+JPalQIgJqx0KZCGVxTGXNedeJCI4Ri3xBGaSsf0olrz6eGp+yo9HsVyVADx0B97rmUnZ1PGnE9JpmCfNVKt3mkdsKFl6CN1Sr1RMg6yJTskji6vTTY4AauaYPPKJj3zWZwvCi98vcYB0C0tfZvYTPpp9VRoEtzcI08PYCV2VUtFtzABB1lA6lwQMoYQJjgBHBTXV44yAd9B9/SB/uVWn1NSO/l6rU6NjaL1FtKlAIB11PbyRUX1PTYDtgILSPxeqG5u4E+qP4P0PruM5Q0cC7XfkAminLpGSlBL/TD/RJjKj5gQBIy6jxW4AQrBMIbQbvLjufwiq9HDDjHZ52SXKVocJJk6qTEkkktASSUpkAJJJJYBynSCSAEkkkgB0kwToASSSaUAOoLylmYQeIhTZlE96x7RqPOa+GHM5vI7fSF1bYYBwgrW3dAF0+sKuaK4HjSZ1c7B1tRy7QrtNmsqQMXFcEahD0HZYqxCzONA6kIv8A9ZzVO7bmCnOpoeFxYIsMciGuV44swg9YcUGvLRrtt0Hv8EqHVh4T6Kac46KtRkS9KHhwMan7LBVqxYZmOW3nH7I/e2NemNSTuddgJEd+nBB69tUqGDSJHF0ET5aQnglexrpBbBOlAdoTDhu3gRzaTxHJGP5o1wzA7Ce9h3PgeH2CwdPAKzzNNpgGderBHLWPLVGMIwatnEb5utEgSdC4DkR1XDiIPDSzhDxknL+Gpq35LDzDxPLrMLh6tf5KWuHHQDd7vKcoHm0o7hXRdjaf9WZdlJaeGTNGvE9cqW9sgPl0008P8nzUJ66Ni1Zla+EvcZGwA8Sd9/ryhR1sKq6ZojiBsO5aazaHfMcoaNe4bfRVrjpNZtJaGvfwJaJ14rIRlJaGlNIvYJjFra0wA1zn8TEeP1Wrw/pPSeOLe/RecPq0Lk/0nFrgdWvaWad50P7rRWFuHM04SPLRWjlyRdUSljhJWehUbgOEypmledG4fTIAcUdsekgiHb8FeHyYvT0Qlga6NQkSglHG2mVbbiLTGsK6yRfpJwaLxdqmfUhDK+KMDvmGnLXVDbzFpOnNLLLFGxxtmiqXLWjUofc441usCOZMLN3eJQJcdlBg+G1L1+Z8toNO2xqHkTyUHnlJ1EssKSuRqsJv6lxL4y056vN3b3IwFHRohrQ1oAAEABSLqimltnPJpvRyCnXJKF3uN02NkSeWmnqiUlHbBRb6CySxr+kFRzswdlaBo0Aesrm26VVJ1AKj+TAr9EjahKUEt+kDHAbgqajjLHOiY71RZYP0RwkvAoo6jlwa44FV61Za5CpHVSqqlW4TOqSuDSlRlJ+FUkMKidRPoFM0kaKXJ+j0vCUBcVRIUgKRaEUFgi4pOHCVULyPwjzmKCrbNduEjiMpAC4sA/rAwfwo6Vs9oIMH7o22zAXNWijo2wE60NTqkRtM9ietasY08T79EUqjiBqqFxSzb8fykl/B0B6jHVDDfl48VosCw9rAXkAnhx+uq6wzDJ12HFTYhWyghnBNCPrMlK9Ijv7r5teAQDEK5d8p22I11B12Q/F76qOs5pa39Q0J8Y2C4srsFuYbOaCO77JJqysYUrJLeuf6tOro14OV/AHt5arEU8NrFjmUqmSowPNQggfJq7Xt3jiSFr3VwDpxOoRi0tLSpJfSYS4Q4gZSRpuRv8o8k2GajpiZYN9Hm1k26c5oe9pcBlECHOH+rmIXrXR2h8K3bncZPE8dP2UlpZWdL5KLAecknxJ3Ul5irNiGRwCbJNPdiRi0qK1ZjJmVTrPA2Pv8qK9xigNBTJPDKfceKH1rhzhLabh37ea5ZfwvFP0K295BhXK1+cuh1WZD6g3aVfoVuYKyMmjZRQSbWI98VFcXwptzPPcOZ5Krc3zabS4/iTy7Fn6T33FTM46DYDYdydyZkYmgwe2qXlYT8s7cAOZ5lerWdu2mwNaIAEIJ0QwsUqcxqfotAvQ+Nj4xt9s4s+TlKl0jpMkkukgC8cvMjMo3dPlxWLxO4JHJG+kbiSWkkcishc0qgMhwPYfyvOzy5SOzFGkc3FF0SHQeI4FVbbEA0EHdNd3Lg2DpzQUnNqT4lc50JaNXYXknQ+B0Rmg7NuCDz3CyWF29TQ6ubzbBhbXDWkNE6jxnyKtCJGbCFoSOKsPdzXNNq7eNFbwj6QirCtU36KjVECQmoVj72SKVMZxtBIulcEBQMrgrtxTXYtDlJRSU4qrLNO4TFMXrh9VDYDPMKP4khJ9RV31ANeCSxkiG4qQq9Nuonj+VM6oN+Cgp3IzgdqT0fwN1qgYyBy9VnqDC57nnbh3o5dmRzQ+86rYaP0kxt6jQKzYkTMYhVEw6IcDM9UzsN+B7ljHZ6Qyh8jcHs2A8IWzvbYlwEkdQuI+bmIlZg2JfIIGUNhpjLJEk/UeRUXI6IneF183zRP1Wpt7cgA5THcsba2brdvxCCeJM7DkimC9NoH9QBo7XBp8nQmjjsWcjVdUjrNVS4ohwORszx9/VEbDGKFYdUyYnme/uUV3iQpOILe476FLKFCqTMzUoNa45tDtPDuE/v3pCm4xFQxw9wrt7iNKoCNJ5jcfugNSsGP0cSDxcfIAaKTReLbC1O8LdD1o5Qf8ACRuw7bdVPiB40eY5SPYUTXFp4x6JaNRBjNu9+swOIVnov/3GsidduatMc141g+M/dWujltluGnYTunW6MbpM9gsGwwDbTZWVDbHqjuUq9hdHlPsdMkmWmFHFsPFVkceCxl9hFZm4057r0FM9gO4UMmBT2UhlcTyDELZ7tMunEwqdrh5zab8tCCvXb3Ds7YbDfD8LI3eAOpuzSD3GD+y5pYHE6Y5uSohwjDWt1ALXcYOh8FoGMVG0rCNdY57q80haIzrZStKr1HKNlVZyphVk1ZsrilShP8SV1mW0rsNjfC1lSyuA5IuWpC2MSuSZTOeon1EGnTnEKF9ZcVKqp1nkahJIdInc+RyUArHUEbeqq1K/784Vd9YB0F3gptjpE1ev1TOkoXhtwfigHhx9jRSXdXbQ9iHWYIqGNft47pB10bunXzNUFcGNfYQ3CsS/SXa+9AiVQCCrRfJEWqYBxutDHZSZjKOwnT7eqF0CWUf9RlxHfMSjt/Ta1vcJ1WdoXOd2vPQcIHsKM3Wi0Fasz/Tuu+aFvJDcud+/WdyKzjcVp0RkfaktOZoqkkEuG+SRl0kadondemY1gwu6TXt/7tM+cbg9hlY66sKeYNqy1zSeo8xBO5aNiDA1G67cUlRzZFsh6EXZbc08s5XGQ098Hs1EntgL1LEvhlsPGnPfxErA9ErJtWuajfkp9UHgXGC6D2aea2mK1opnSd5H+VDK6srBXRnb7A2g5mv08ENrWsjqmfrp3q9TqZQd/feqdWpPuFyt+nUkCzbuaeq+O6FKKlT9RntgSiVNn6tJPduErlxy9Vmfn7G61SsGRW9YjdafBKjczXHmsrSeDu0gjgRCOYLcagRxWrTFltHseHVQ5ojkraE4HVGQd3vdFZXrwdo8uSpjpSmlOmFEknTLQHQzFLcEHnzRNRVmSEslaNi6Zh31SwwQO+FNQuRw081F0ipZHzzQy2rb/ZeZJuMqO5JNWG6taeKqVXHmoW1SV1n11IS3ZtUWbSuZ3RIPneEOthrwV0O7FaPROXZYauKjlyXwFRe9zjp78lrmkYo2SVqqp1bn7qd9rpqfsh9xRAM5tvTmkcmOooc3BIXDbjmqIaW6AyeSrur5wRqOz0+ynY3E4xWvlOYGI2QjEL9xyEQZnu29FfNk6rA1MGNR4K0zooHNBqFwI4AgiNJ4aO311QlY9pAzD65LS7OXAcIgDulV7W/zVYAMcdJ8zEAIje9H6lF3Vn4Y47k+HAoFiNQMIIjNPsnmtoEw7Tuwx3M8+AWhsr8PCxHzQd59yjeFuyNIKSLadGzimrLGO3RyuaOOg80JpMy5DzP1XeKXUgnlsqdreB7I4tO/gD9SlavY0dKg/h1d1N5PA/RXMVNGoyH02P02cAR6oC26mnm5aIXiWMuywOOngthOS6MljUg/h7GNn4ejeEbSOXkFPe3QI97oT0eqyyOSt3rYEytc29mcUnQMuZJOqjZbcfwpi2Tr/ke4Vy2pwddRzSVY90jmna9URrz5g9vZwQ81i18TJ4f4Eo0XZWFzTLeLeIO+mn1hZgvFSoTmmeAaf/r8lWWOifOzS2pp1RlewHtEZh281N/KS0zScCBw4j8qC1Ba3SRpuWtLfTbvGnarltdnYxP/ABStUF/o33RyoTTEzPajgXndjij6ZkH/AGnWY8FssKxVlYaGHgat+45hd+DKmq9OPLjadhNKVykuggSJpURcVwZQaTl4UVWoFA9rlXqU3JWzaBWO0WuGyzTGQeIWmvqD1na9BzT8s9q480bdnTjehqhgaqA1+yFI6oY2hU6xM7A95C5qL2FLK7kxM+KNUpPP34LJ29VwPAdnv9+5arCX5mzMqsdolLQqjNY1ntVmA0cFGfmJQ/FrnTLMdwko0th3oGYpfvqOy09hxCnscLLgDU37Px+5VjB7UAZuue132bsEWqDRJx9Y7l4gc6gxvAeSejZMfqQF3TtXOJMwoL68+HE92nPh5ra9M70izlp094HDzOhVe9rZdQVUua7X6gg8CN/ZXFWSOf7LJM1I7p1i6Z1BBWGxugGVCIH4GsdnvdaujLSQTpOixvTe6bmESTy0HZ3lbFWzXo7wmuJIPDY/RGWVADJ4rCYfiHXBPgB2I3QxKW67j7olGjU7LOMVhH2VKg8MZ3n0Alc3lQFwnyU9UNDc3IaBSorehWN6WjKRofv7CoXRDj1dtITUgahJJjgAPfeiVGziMo2Hih6NRcwOmWCXclfuq2YQPNR2lsSBOn5Vi6ysbJIACVJsWTVg4U4PailpcNHzQDx1HmsJi/SgtMUwD47jmg9TpI5zv6jD/wAyPtp6Lrh8eT2QnlXR6H0jrUQ2Wvynv0I7/ss3VtGPbmzOcOOUzB5wdwgrsdp8GPHI53O9MzfqVyMTdmDmOO+28jkQdR4eausbSFUjYYR/TAdTqZgOUh0Rxadx3I5Y3AI1bxj3+Fj7Svn1iDvI59v7LS4WTlC5p9l0tBhruSv4HVd8ZuXlrGsfdDGE7DfgButh0ZwYUhndq92p7OQWYoOUtE8kkkamg4kCV2oG1F1nXpHAT5Uy7SWmHELhzVIUyDSrVpSht3h4PBG8q5NNI42MpUYq8wKflQivgtUHRy9HdQCidaDkovAmVWZnnApPZplB5uIlGcOvj8uU953/AGC077EclXq2IHBL9VG/YmC3OhU6tEF2u3aYV67ogST5ILc3g275Kk40OmF2XTQBB04ZQrbXSszb4o1uhG+xka+CK2GItkaj39VvZjL1xUDBCEYjSbU14xHeFZxIFx0gt5oRDmqUuykf2Uq2GvaczHEc27g96tWt1prvxCkfe6QRqs/i+MCnOXUgie7WY8vVL/we77LeLYmGd/l3rzrpHiXxH9bcDnqOPlspcVxbPJBmdQePHRZusyq86MeeUNJ9hdWHF6yU510S0qxkc+PhrHcjVncyg9ph1bU/CqdnUd9IROywyu3U0n68A0k+ew80+SKaCMgpVOYTxURuSRkGp5++9P8A9FcRApPA7jr3lS21hWGvwXz3eq5nAopFrDqMGT5I9ZUfXig1ta1xtb1HHuH5V9lK9I6ts/xLR90v1tmuaDNxcNYyeQ81lsVL67ocS1u4DT3ant3RJuA4hU1NGP8Ad5DsCtjohfR1GU2u/uc4mPABOscl0JzQJsLOhSEFoGknTX90sc6MMqgVKIBIAOnEDXqlEWfw3xB2rq9MEiCYdtyRG0/hneD/AM3LzDWcttyqRxzTsWU4gq4o0MjWvcxrnAGJbr4GfeyHUMFotMioz/1iDw018VsX/wAK3Pdmq3byf9LGD11hWKf8JLf9VWqfFo+gW/VMFlijL0LOmAJyiNusP88Eaw7Dy89QQOff2laC0/htbM2L/Eyjlp0bps2c/wAx+EL479MedeFDB8GbT1Oruf4R+lSXVLDwP1O9PwrLaMcSuiMFFUjnlK3Zw2mpA1dhieFQQ6ShJJBgkydJADELlJJACTEJJINGLFE+2lJJZQFK4whrtyhlx0TY5JJK4RY3NooVOgdM8T5lRf8A4vLq1zvNJJK8UTfsZHVwKq0aVT6IbcYbWGziUklKWNFVJg+4wmu4jWNSqNHoRUcesSZSSWLGjXNhzCugLG7snwWps+jbGjRgSSV4wSJSkwlSwhg/SFO3DGf2hJJPSEtnYw5n9o8l2LFn9o8kySKRlkgtW8h5LoURyCSSKCzr4Y5JBgSSQA+VPlSSWgLKlCSSAHhKEkkGDgLoBJJADwnhJJNQH//Z" class="img-fluid shadow-sm" alt="product item">
                            <h6 class="mt-4 mb-0 fw-bold"><a href="single-product.html">Meo mau nau</a></h6>
                            <div class="review-content d-flex">
                                <p class="my-2 me-2 fs-6 text-black-50">Kikikiekekekekakaka</p>
                            </div>

                            <span class="price text-primary fw-bold mb-2 fs-5">$870</span>
                            <div class="card-concern position-absolute start-0 end-0 d-flex gap-2">
                                <button type="button" href="#" class="btn btn-dark" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Tooltip on top">
                                    <svg class="cart">
                                    <use xlink:href="#cart"></use>
                                    </svg>
                                </button>
                                <a href="#" class="btn btn-dark">
                                    <span>
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card position-relative p-4 border rounded-3">
                            <img src="data:image/jpeg;base64,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" class="img-fluid shadow-sm" alt="product item">
                            <h6 class="mt-4 mb-0 fw-bold"><a href="single-product.html">Con meo nhin giong con ho</a></h6>
                            <div class="review-content d-flex">
                                <p class="my-2 me-2 fs-6 text-black-50">Con meo co van van</p>

                                <div class="rating text-warning d-flex align-items-center">
                                </div>
                            </div>

                            <span class="price text-primary fw-bold mb-2 fs-5">$870</span>
                            <div class="card-concern position-absolute start-0 end-0 d-flex gap-2">
                                <button type="button" href="#" class="btn btn-dark" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Tooltip on top">
                                    <svg class="cart">
                                    <use xlink:href="#cart"></use>
                                    </svg>
                                </button>
                                <a href="#" class="btn btn-dark">
                                    <span>
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card position-relative p-4 border rounded-3">
                            <img src="data:image/jpeg;base64,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" class="img-fluid shadow-sm" alt="product item">
                            <h6 class="mt-4 mb-0 fw-bold"><a href="single-product.html">2 chu meo</a></h6>
                            <div class="review-content d-flex">
                                <p class="my-2 me-2 fs-6 text-black-50">2 con meo o canh nhau</p>
                            </div>

                            <span class="price text-primary fw-bold mb-2 fs-5">$870</span>
                            <div class="card-concern position-absolute start-0 end-0 d-flex gap-2">
                                <button type="button" href="#" class="btn btn-dark" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Tooltip on top">
                                    <svg class="cart">
                                    <use xlink:href="#cart"></use>
                                    </svg>
                                </button>
                                <a href="#" class="btn btn-dark">
                                    <span>
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card position-relative p-4 border rounded-3">
                            <img src="data:image/jpeg;base64,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" class="img-fluid shadow-sm" alt="product item">
                            <h6 class="mt-4 mb-0 fw-bold"><a href="single-product.html">Chu meo tam the</a></h6>
                            <div class="review-content d-flex">
                                <p class="my-2 me-2 fs-6 text-black-50">1 chu meo tam the nang 100kg</p>
                            </div>

                            <span class="price text-primary fw-bold mb-2 fs-5">$870</span>
                            <div class="card-concern position-absolute start-0 end-0 d-flex gap-2">
                                <button type="button" href="#" class="btn btn-dark" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Tooltip on top">
                                    <svg class="cart">
                                    <use xlink:href="#cart"></use>
                                    </svg>
                                </button>
                                <a href="#" class="btn btn-dark">
                                    <span>
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>



    <footer id="footer" class="padding-large">
        <div class="container">
            <div class="row">
                <div class="footer-top-area">
                    <div class="row d-flex flex-wrap justify-content-between">
                        <div class="col-lg-3 col-sm-6 pb-3">
                            <div class="footer-menu">
                                <img src="images/main-logo.png" alt="logo" class="img-fluid mb-2">
                                <p>Nisi, purus vitae, ultrices nunc. Sit ac sit suscipit hendrerit. Gravida massa volutpat aenean odio erat nullam fringilla.</p>
                                <div class="social-links">
                                    <ul class="d-flex list-unstyled">
                                        <li>
                                            <a href="#">
                                                <svg class="facebook">
                                                <use xlink:href="#facebook" />
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <svg class="instagram">
                                                <use xlink:href="#instagram" />
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <svg class="twitter">
                                                <use xlink:href="#twitter" />
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <svg class="linkedin">
                                                <use xlink:href="#linkedin" />
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <svg class="youtube">
                                                <use xlink:href="#youtube" />
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-sm-6 pb-3">
                            <div class="footer-menu text-capitalize">
                                <h5 class="widget-title pb-2">Quick Links</h5>
                                <ul class="menu-list list-unstyled text-capitalize">
                                    <li class="menu-item mb-1">
                                        <a href="#">Home</a>
                                    </li>
                                    <li class="menu-item mb-1">
                                        <a href="#">About</a>
                                    </li>
                                    <li class="menu-item mb-1">
                                        <a href="#">Shop</a>
                                    </li>
                                    <li class="menu-item mb-1">
                                        <a href="#">Blogs</a>
                                    </li>
                                    <li class="menu-item mb-1">
                                        <a href="#">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 pb-3">
                            <div class="footer-menu text-capitalize">
                                <h5 class="widget-title pb-2">Help & Info Help</h5>
                                <ul class="menu-list list-unstyled">
                                    <li class="menu-item mb-1">
                                        <a href="#">Track Your Order</a>
                                    </li>
                                    <li class="menu-item mb-1">
                                        <a href="#">Returns Policies</a>
                                    </li>
                                    <li class="menu-item mb-1">
                                        <a href="#">Shipping + Delivery</a>
                                    </li>
                                    <li class="menu-item mb-1">
                                        <a href="#">Contact Us</a>
                                    </li>
                                    <li class="menu-item mb-1">
                                        <a href="#">Faqs</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 pb-3">
                            <div class="footer-menu contact-item">
                                <h5 class="widget-title text-capitalize pb-2">Contact Us</h5>
                                <p>Do you have any queries or suggestions? <a href="mailto:" class="text-decoration-underline">yourinfo@gmail.com</a></p>
                                <p>If you need support? Just give us a call. <a href="#" class="text-decoration-underline">+55 111 222
                                        333 44</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <hr>
    <div id="footer-bottom" class="mb-2">
        <div class="container">
            <div class="d-flex flex-wrap justify-content-between">
                <div class="ship-and-payment d-flex gap-md-5 flex-wrap">
                    <div class="shipping d-flex">
                        <p>We ship with:</p>
                        <div class="card-wrap ps-2">
                            <img src="images/dhl.png" alt="visa">
                            <img src="images/shippingcard.png" alt="mastercard">
                        </div>
                    </div>
                    <div class="payment-method d-flex">
                        <p>Payment options:</p>
                        <div class="card-wrap ps-2">
                            <img src="images/visa.jpg" alt="visa">
                            <img src="images/mastercard.jpg" alt="mastercard">
                            <img src="images/paypal.jpg" alt="paypal">
                        </div>
                    </div>
                </div>
                <div class="copyright">
                    <p>© ccccCopyright 2024 Bookly. HTML Template by <a href="https://templatesjungle.com/" target="_blank">TemplatesJungle</a>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/script.js"></script>
    
    <script>
    function goToPage(PageNumber) {
        // Thực hiện các hành động cần thiết khi chuyển đến trang pageNumber
        // Ví dụ: chuyển đến URL mới, gọi hàm để load dữ liệu mới, ...
        window.location.href = "your_new_page.jsp?page=" + pageNumber;
        // Ví dụ: window.location.href = "your_new_page.jsp?page=" + pageNumber;
    }
</script>
</body>

</html>
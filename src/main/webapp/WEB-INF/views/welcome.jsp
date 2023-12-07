<%@ page import="java.util.List" %>
<%@ page import="com.hellokoding.auth.model.UserImage" %>
<%@ page import="com.hellokoding.auth.model.UserVideo" %>
<%@ page import="com.hellokoding.auth.model.UserDoc" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
    <script src="https://getbootstrap.com/docs/5.3/assets/js/color-modes.js"></script>
    <script src="https://printjs-4de6.kxcdn.com/print.min.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.118.2">
    <title>Album example · Bootstrap v5.3</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
    <link href="https://getbootstrap.com/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="https://printjs-4de6.kxcdn.com/print.min.css">


    <!-- Favicons -->
    <link rel="apple-touch-icon" href="https://getbootstrap.com/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="https://getbootstrap.com/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="https://getbootstrap.com/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="https://getbootstrap.com/docs/5.3/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="https://getbootstrap.com/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
    <link rel="icon" href="https://getbootstrap.com/docs/5.3/assets/img/favicons/favicon.ico">


    <meta name="theme-color" content="#712cf9">


    <style>
        .image-list, .video-list, .doc-list {
            display: none;
        }

        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            width: 100%;
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        .btn-bd-primary {
            --bd-violet-bg: #712cf9;
            --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

            --bs-btn-font-weight: 600;
            --bs-btn-color: var(--bs-white);
            --bs-btn-bg: var(--bd-violet-bg);
            --bs-btn-border-color: var(--bd-violet-bg);
            --bs-btn-hover-color: var(--bs-white);
            --bs-btn-hover-bg: #6528e0;
            --bs-btn-hover-border-color: #6528e0;
            --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
            --bs-btn-active-color: var(--bs-btn-hover-color);
            --bs-btn-active-bg: #5a23c8;
            --bs-btn-active-border-color: #5a23c8;
        }

        .bd-mode-toggle {
            z-index: 1500;
        }

        .bd-mode-toggle .dropdown-menu .active .bi {
            display: block !important;
        }
    </style>


</head>
<body>

<div class="container">

<main>

    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Multimedia resource sharing platform</h1>
                <p class="lead text-body-secondary">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don’t simply skip over it entirely.</p>
                <p>
                    <a href="#" class="btn btn-secondary my-2" onclick="clickPic()" id="picBtn">Pictures</a>
                    <a href="#" class="btn btn-secondary my-2" onclick="clickVideo()" id="vidBtn">Videos</a>
                    <a href="#" class="btn btn-primary my-2" onclick="clickDoc()" id="docBtn">Documents</a>
                    <a href="${pageContext.request.contextPath}/translatePage" target="_blank" class="btn btn-secondary my-2" id="TraBtn">Translate</a>
                </p>
            </div>
        </div>
    </section>


    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
        Open Upload Image Modal
    </button>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="myModalLabel">Image File Upload</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="custom-file">
                        <label class="form-label" for="fileUpload">Choose Image File：</label>
                        <input type="file" class="form-control" id="fileUpload" accept=".jpg">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="imageUploadBtn">Upload</button>
                </div>
            </div>
        </div>
    </div>

    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2">
        Open Upload Video Modal
    </button>

    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="myModalLabel2">Video File Upload</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="custom-file">
                        <label class="form-label" for="fileUpload2">Choose Video File：</label>
                        <input type="file" class="form-control" id="fileUpload2" accept=".mp4">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="imageUploadBtn2">Upload</button>
                </div>
            </div>
        </div>
    </div>

    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal3">
        Open Upload Document Modal
    </button>

    <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="myModalLabel3">Document File Upload</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="custom-file">
                        <label class="form-label" for="fileUpload3">Choose Document File：</label>
                        <input type="file" class="form-control" id="fileUpload3" accept=".pdf">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="imageUploadBtn3">Upload</button>
                </div>
            </div>
        </div>
    </div>

    <div class="image-list">
        <div class="album py-5 bg-body-tertiary">
            <div class="container">

                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                    <% for (UserImage image : (List<UserImage>) request.getAttribute("imageList")) { %>

                        <div class="col">
                            <div class="card shadow-sm">
                                <img src="data:image/jpeg;base64,<%= image.getImageBase64() %>" class="card-img-top" alt="..." />
                                <div class="card-body">
                                    <p class="card-text"><%= image.getImageName() %></p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-sm btn-outline-secondary" onclick="deleteImage('<%= image.getId() %>')">Delete image</button>
                                        </div>
                                        <small class="text-body-secondary"><%=image.getCreatedAt()%></small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <% } %>

                </div>
            </div>
        </div>
    </div>

    <div class="video-list">
        <div class="album py-5 bg-body-tertiary">
            <div class="container">

                <div >
                    <% for (UserVideo userVideo : (List<UserVideo>) request.getAttribute("videoList")) { %>

                    <div class="col">
                        <div class="card shadow-sm">
                            <video src="data:video/mp4;base64,<%= userVideo.getVideoBase64() %>" class="card-img-top" controls />
                            <div class="card-body">
                                <p class="card-text"><%=userVideo.getVideoName() %></p>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-outline-secondary" onclick="deleteVideo('<%= userVideo.getId() %>')">Delete Video</button>
                            </div>
                            <small class="text-body-secondary"><%=userVideo.getCreatedAt()%></small>
                        </div>
                    </div>
                    <% } %>

                </div>
            </div>
        </div>
    </div>

    <div class="doc-list">
        <div class="album py-5 bg-body-tertiary">
            <div class="container">

                <div >
                    <% for (UserDoc userDoc : (List<UserDoc>) request.getAttribute("docList")) { %>

                    <div class="col">
                        <div class="card shadow-sm">
                            <img src="https://t3.ftcdn.net/jpg/05/00/52/34/360_F_500523475_qM54U8XIbdhHPouvNmu4bjrBpD6wrlSv.jpg" class="card-img-top" alt="..." />
                            <div class="card-body">
                                <p class="card-text"><%= userDoc.getDocName() %></p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary" onclick="deleteDoc('<%= userDoc.getId() %>')">Delete Doc</button>
<%--                                        <button onclick="printPDF('<%= userDoc.getDocBase64() %>')">OpenPDF</button>--%>
                                        <button type="button" onclick="openPDF('<%= userDoc.getDocBase64() %>')">OpenPDF</button>
                                    </div>
                                    <small class="text-body-secondary"><%=userDoc.getCreatedAt()%></small>
                                </div>
                            </div>

                        </div>
                    </div>
                    <% } %>

                </div>
            </div>
        </div>
    </div>

</main>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://getbootstrap.com/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>

<script>
    <!-- define server host -->
    serverHost = "http://localhost:8080";

    function changeList() {
        var typeSelect = document.getElementById("typeSelect");
        var imageList = document.querySelector(".image-list");
        var videoList = document.querySelector(".video-list");

        if (typeSelect.value === "image") {
            imageList.style.display = "flex";
            videoList.style.display = "none";
        } else if (typeSelect.value === "video") {
            imageList.style.display = "none";
            videoList.style.display = "flex";
        }
    }

    function clickPic() {
        var videoList = document.querySelector(".video-list");
        var imageList = document.querySelector(".image-list");
        var docList = document.querySelector(".doc-list");
        imageList.style.display = "flex";
        videoList.style.display = "none";
        docList.style.display = "none";
    }

    function clickVideo() {
        var videoList = document.querySelector(".video-list");
        var imageList = document.querySelector(".image-list");
        var docList = document.querySelector(".doc-list");
        imageList.style.display = "none";
        videoList.style.display = "flex";
        docList.style.display = "none";
    }

    function clickDoc() {
        var videoList = document.querySelector(".video-list");
        var imageList = document.querySelector(".image-list");
        var docList = document.querySelector(".doc-list");
        imageList.style.display = "none";
        videoList.style.display = "none";
        docList.style.display = "flex";
    }

    function clickTranslate() {

    }

    $(document).ready(function() {

        $("#imageUploadBtn").click(function() {
            // 获取文件名和文件数据
            var fileName = $("#fileName").val();
            var fileData = $("#fileUpload")[0].files[0];

            // 创建FormData对象，并将文件数据添加到其中
            var formData = new FormData();
            formData.append("file", fileData);

            // 发送文件数据到后端接口
            $.ajax({
                url: serverHost+"/imageUpload",
                type: "POST",
                data: formData,
                processData: false,
                contentType: false,
                success: function(response) {
                    // 处理成功响应
                    location.reload();
                },
                error: function(xhr, status, error) {
                    // 处理错误响应
                    console.error(error);
                }
            });
        });

        $("#imageUploadBtn2").click(function() {
            // 获取文件名和文件数据
            var fileName = $("#fileName").val();
            var fileData = $("#fileUpload2")[0].files[0];

            // 创建FormData对象，并将文件数据添加到其中
            var formData = new FormData();
            formData.append("file", fileData);

            // 发送文件数据到后端接口
            $.ajax({
                url: serverHost+"/videoUpload",
                type: "POST",
                data: formData,
                processData: false,
                contentType: false,
                success: function(response) {
                    // 处理成功响应
                    location.reload();
                },
                error: function(xhr, status, error) {
                    // 处理错误响应
                    console.error(error);
                }
            });
        });

        $("#imageUploadBtn3").click(function() {
            // 获取文件名和文件数据
            var fileName = $("#fileName").val();
            var fileData = $("#fileUpload3")[0].files[0];

            // 创建FormData对象，并将文件数据添加到其中
            var formData = new FormData();
            formData.append("file", fileData);

            // 发送文件数据到后端接口
            $.ajax({
                url: serverHost+"/docUpload",
                type: "POST",
                data: formData,
                processData: false,
                contentType: false,
                success: function(response) {
                    // 处理成功响应
                    location.reload();
                },
                error: function(xhr, status, error) {
                    // 处理错误响应
                    console.error(error);
                }
            });
        });

        $("#picBtn").click(function() {
            // 移除原有的次要按钮样式类
            $("#picBtn").removeClass("btn-secondary");
            // 添加主要按钮样式类
            $("#picBtn").addClass("btn-primary");

            $("#vidBtn").addClass("btn-secondary");
            $("#vidBtn").removeClass("btn-primary");

            $("#docBtn").addClass("btn-secondary");
            $("#docBtn").removeClass("btn-primary");

            $("#TraBtn").addClass("btn-secondary");
            $("#TraBtn").removeClass("btn-primary");
        });

        $("#vidBtn").click(function() {
            // 移除原有的次要按钮样式类
            $("#vidBtn").removeClass("btn-secondary");
            // 添加主要按钮样式类
            $("#vidBtn").addClass("btn-primary");

            $("#picBtn").addClass("btn-secondary");
            $("#picBtn").removeClass("btn-primary");

            $("#docBtn").addClass("btn-secondary");
            $("#docBtn").removeClass("btn-primary");

            $("#TraBtn").addClass("btn-secondary");
            $("#TraBtn").removeClass("btn-primary");
        });
    });

    function deleteImage(imageId) {
        // 发送删除请求到后端接口
        $.ajax({
            url: serverHost+"/deleteImage",
            type: "DELETE",
            data: JSON.stringify({"imageId": imageId}),
            contentType: "application/json",
            success: function(response) {
                // 处理成功响应
                location.reload(); // 刷新当前页面
            },
            error: function(xhr, status, error) {
                // 处理错误响应
                console.error(error);
            }
        });
    }


    function deleteVideo(videoId) {
        // 发送删除请求到后端接口
        $.ajax({
            url: serverHost+"/deleteVideo",
            type: "DELETE",
            data: JSON.stringify({"videoId": videoId}),
            contentType: "application/json",
            success: function(response) {
                // 处理成功响应
                location.reload(); // 刷新当前页面
            },
            error: function(xhr, status, error) {
                // 处理错误响应
                console.error(error);
            }
        });
    }

    function deleteDoc(docId) {
        // 发送删除请求到后端接口
        $.ajax({
            url: serverHost+"/deleteDoc",
            type: "DELETE",
            data: JSON.stringify({"docId": docId}),
            contentType: "application/json",
            success: function(response) {
                // 处理成功响应
                location.reload(); // 刷新当前页面
            },
            error: function(xhr, status, error) {
                // 处理错误响应
                console.error(error);
            }
        });
    }

    function printPDF(base64) {
        printJS({
            printable: base64,
            type: "pdf",
            base64: true
        });
    }

    //open the new tab to show the PDF document
    function openPDF(base64) {
        var newPage = window.open('', '_blank');

        // 创建 embed 元素
        var embedElement = document.createElement('embed');

        // 设置 embed 元素的属性
        embedElement.src = 'data:application/pdf;base64,'+base64; // 替换为实际的文件路径
        embedElement.type = 'application/pdf';
        embedElement.style = 'width: 100%; height: 100%';

        //将动态生成的 embed 元素添加到新页面
        newPage.document.body.appendChild(embedElement);
    }

</script>
</body>
</html>

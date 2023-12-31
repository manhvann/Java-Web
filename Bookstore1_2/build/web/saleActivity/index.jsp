<%-- 
    Document   : index
    Created on : May 27, 2023, 3:55:38 PM
    Author     : Van Manh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hoạt động kinh doanh - Nhà sách Tiến Thọ</title>
    <link rel="icon" type="image/x-icon" href="../img/favicon2.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    />
    <link rel="stylesheet" href="./sale-activity.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=Roboto:wght@100;300;400;500;700&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <!-- welcome -->
        <div class="welcome">
            <div class="welcome-container flex pl-8">
                <p class="welcome-left">Chào mừng bạn đến với nhà sách Tiến Thọ</p>
                <div class="welcome-log ">
                    <a class="bg-red signup" href="#"> Đăng ký </a>
                    | <a class="login" href="#">Đăng nhập</a>
                </div>

                <div class="welcome-login hide">
                    <a href="">Xin chào: ${sessionScope.account.getUsername()}</a>
                    | <a href="/bookstore1_2/logout">Đăng xuất</a>
                </div>


                <script>
                    function updateWelcomeClasses(check) {
                        var welcomeLogin = document.querySelector('.welcome-login');
                        var welcomeLog = document.querySelector('.welcome-log');

                        if (check === 1) {
                            welcomeLog.classList.add('hide');
                            welcomeLogin.classList.remove('hide');
                        } else {
                            welcomeLog.classList.remove('hide');
                            welcomeLogin.classList.add('hide');
                        }
                    }

                    // Sử dụng hàm updateWelcomeClasses và truyền giá trị cho biến check
                    updateWelcomeClasses(${sessionScope.check}); // Nếu check = 1, thêm "hide" vào class "welcome-log" và bỏ "hide" ở class "welcome-login hide"
                    //            updateWelcomeClasses(0); // Nếu check khác 1, bỏ "hide" ở class "welcome-log" và thêm "hide" vào class "welcome-login hide"
                </script>
            </div>
        </div>

    <!-- toolbar -->
    <div class="header-container">
      <div>
        <img class="logo" src="../img/logo.png" alt="logo" />
      </div>

      <div class="search">
        <input type="search" placeholder="Tìm kiếm... " />
        <!-- <AiOutlineSearch class="fa-search" /> -->
        <i class="fas fa-search"></i> 
      </div>

      <div class="hotline">
        <img class="img-hotline" src="../img/hotline.webp" alt="hotline" />
        <div class="hotline-phoneNumber">
          <p class="hotline-text">Hotline:</p>
          <a class="hotline-tel" href="tel:0987654321">0987654321</a>
        </div>
      </div>

      <div class="shopping-cart">
        <a class="shopping-cart-container" href="#">
          <!-- <FaShoppingCart class="fa-shopping-cart" /> -->
           <i class="fas fa-shopping-cart"></i> 
          Giỏ hàng 
        </a>
        <div class="notification">
          <div class="notification-message">
            Giỏ hàng của bạn đang trống
            <a class="red" href="../index.jsp">Tiếp tục mua hàng</a>
          </div>
        </div>
      </div>
    </div>

    <!-- navigation -->
    <div class="nav-header">
      <div class="nav-container">
        <li class="nav-left">
          <a href="" class="nav-left-container">
            <p class=" fs-16">
              <i class="fas fa-bars icon menu-icon"></i>
              <!-- <HiMenu class="icon menu-icon" /> -->
              Danh mục sản phẩm
              <i class="fas fa-chevron-down icon down-icon"></i>
              <!-- <HiChevronDown class="icon down-icon" /> -->
            </p>
          </a>
        </li>
        <li class="nav-right">
          <a href="../index.jsp" class="nav-right-container">
            <p class="nav-text">Trang chủ</p>
          </a>
        </li>
        <li class="nav-right">
          <div href="#" class="nav-right-container">
            <div class="nav-text">
              <div>
              Giới thiệu
              </div>
              <i class="fas fa-chevron-down icon down-icon"></i>
            </div>
            <div class="sub-nav">
              <div class="introduce">
                <a href="../introduction/index.jsp" class="introduce-item">
                  <div class="sub-nav-content">Giới thiệu chung</div>
                </a>
              </div>
              <div class="introduce">
                <a href="index.jsp" class="introduce-item">
                  <div class="sub-nav-content">Hoạt động kinh doanh</div>
                </a>
              </div>
            </div>
          </div>
        </li>
        <li class="nav-right">
          <a href="../contact/index1.jsp" class="nav-right-container">
            <p class="nav-text">Liên hệ</p>
          </a>
        </li>
      </div>
    </div>

    <!-- sale activity -->
    <div class="main-sale-activity">
      <div class="sale-activity">
       <div class="sale-activity-header">
         Hoạt động kinh doanh
       </div>
       <div class="sale-activity-container">
         <p>
           <span class="cl-red">- Xuất bản:</span> Trung bình mỗi năm, công
           ty CP Văn hóa và giáo dục Tân Việt xuất bản từ 200 – 300 đầu sách các
           loại thuộc các lĩnh vực: thiếu nhi, giáo dục, văn hóa, lịch sử, khoa
           học, xã hội và các loại sách tham khảo, sách nghiên cứu. Đặc biệt,
           trong lĩnh vực sách thiếu nhi, Tân Việt hiện là một trong những doanh
           nghiệp xuất bản hang đầu lĩnh vực sách này tại Việt Nam. Nhiều nhân
           vật truyện tranh nổi tiếng thế giới đã được Tân Việt mua bản quyền và
           giới thiệu đến độc giả nhỏ tuổi tại Việt Nam như: Angry Bird, búp bê
           Barbie, Thomas and Friends, nàng tiên Winx, Winnie the Pooh, Tinker
           Bell, My Little Pony,….
           <br />
         </p>
         <p>
           <span class="cl-red">- In ấn:</span> Để đảm bảo cho sản phẩm in
           được chất lượng và đạt thẩm mỹ cao, công ty CP Văn hóa và giáo dục Tân
           Việt hiện đang hợp tác và là khách hàng chiến lược của các nhà in
           chuyên nghiệp.
           <br />
         </p>
         <p>
           <span class="cl-red">- Phát hành: </span> Trong những năm qua,
           công ty CP Văn hóa và giáo dục Tân Việt luôn chú trọng đến phát triển
           hệ thống bán lẻ và bán buôn trong toàn quốc. Đặc biệt là hệ thống bán
           lẻ được triển khai hàng năm. Kế hoạch phát triển cửa hàng bán lẻ của
           Tân Việt đến hết năm 2030 là 30 nhà sách trong toàn quốc.
         </p>
       </div>
     </div>
    </div>

    <!-- footer -->
    <div class="main-footer">
      <div class="footer">
        <div class="footer-header">
          <div class="footer-heading">
            <div class="footer-heading-container">
              <div class="footer-heading-a">
                <!-- <MdCall class="icon" /> -->
                <i class="fas fa-phone-alt icon"></i>
                <div class="footer-heading-h">Đặt hàng trực tuyến</div>
              </div>
              <div class="footer-heading-c">SĐT: 0987654321</div>
            </div>
          </div>
          <div class="footer-heading">
            <div class="footer-heading-container fl-l">
              <div class="footer-heading-a">
                <!-- <GoClock class="icon" /> -->
                <i class="far fa-clock icon"></i>
                <div class="footer-heading-h">
                  Làm việc các ngày trong tuần
                </div>
              </div>
              <div class="footer-heading-c">Thứ 2 - Chủ Nhật</div>
              <div class="footer-heading-c">7h30 đến 22h30</div>
            </div>
          </div>
        </div>
        <div class="footer-container">
          <div class="footer-container-left">
            <div class="container">
              <div class="container-h">Sản phẩm</div>
              <a href="../index.jsp" class="container-items">Trang chủ</a>
              <a href="../introduction/" class="container-items">Giới thiệu</a>
              <a href="../contact/" class="container-items">Liên hệ</a>
            </div>
            <div class="container">
              <div class="container-h">Hỗ trợ</div>
              <a href="../introduction/" class="container-items">Giới thiệu chung</a>
              <a href="../saleActivity/" class="container-items">Hoạt động kinh doanh</a>
            </div>

            <div class="container">
              <div class="container-h">Kết nối với chúng tôi</div>
              <div class="container-items"></div>
            </div>
          </div>
          <div class="footer-container-right">
            <div class="phone-number">0987654321</div>
            <div class="time">Thứ 2 - Chủ Nhật</div>
            <div class="time">7h30 - 22h30</div>
            <div class="address">
              <FaMapMarkerAlt class="icon" />
              697 Giải Phóng - Hoàng Mai - Hà Nội
            </div>
            <div class="socials-contact">
              <div class="socials-items">
                <i class="fab fa-facebook-f social-icon"></i>
                <!-- <FaFacebookF class="social-icon" /> -->
              </div>
              <div class="socials-items">
                <i class="fab fa-google-plus-g social-icon"></i>
                <!-- <FaGooglePlusG class="social-icon" /> -->
              </div>
              <div class="socials-items">
                <i class="fab fa-pinterest-p social-icon"></i>
                <!-- <FaPinterest class="social-icon" /> -->
              </div>
              <div class="socials-items">
                <i class="fas fa-rss social-icon"></i>
                <!-- <FaRss class="social-icon" /> -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- modal -->
        <!-- sign in -->
        <div class="form-wrapper hide">
            <div class="modal">
                <div class="modal-overlay"></div>
                <div class="modal-body">
                    <div class="modal-inner">
                        <!-- authen form -->
                        <div class="auth-form">
                            <div class="out">
                                <i class="fas fa-times"></i>
                                <!-- <AiOutlineClose /> -->
                            </div>

                            <div class="auth-form__container">
                                <form action="/bookstore1_2/login" method="post">
                                    <div class="sign-in type">
                                        <div class="auth-form__header">
                                            <h3 class="auth-form__heading">Đăng nhập</h3>
                                            <span class="auth-form__switch-btn">Đăng ký</span>
                                        </div>
                                        <div class="auth-form__content">
                                            <div class="auth-form__form">
                                                <div class="auth-form__group">
                                                    <input
                                                        type="text"
                                                        class="auth-form__input"
                                                        placeholder="Tên đăng nhập"
                                                        name="user"
                                                        />
                                                </div>
                                                <div class="auth-form__group">
                                                    <input
                                                        type="password"
                                                        class="auth-form__input"
                                                        placeholder="Mật khẩu"
                                                        name="pass"
                                                        />
                                                </div>
                                                <div class="auth-form__miss">
                                                    <a class="auth-form__miss-t">Quên mật khẩu?</a>
                                                </div>
                                            </div>
                                            
                                            <div class="auth-form__controls">
                                                <input type="submit" class="btn" value="Ðăng nhập"> 
                                            </div>
                                        </div>
                                    </div>
                                    <script>
                                       const isLogin = check => {
                                            if (check === 0)
                                            {
                                              alert("${requestScope.error}");
                                              console.log("err");
                                            }
                                            
                                            else if (check === 1) {
                                              alert("${requestScope.success}");
                                              console.log("success");
                                            }
                                       };
                                       isLogin(${requestScope.isLogin});
                                    </script>
                                </form>

                                <form action="/bookstore1_2/register" method="post">
                                    <div class="sign-up type">
                                        <div class="auth-form__header">
                                            <h3 class="auth-form__heading">Đăng ký</h3>
                                            <span class="auth-form__switch-btn">Đăng nhập</span>
                                        </div>

                                        <div class="auth-form__content">
                                            <div class="auth-form__form">
                                                <div class="auth-form__group">
                                                    <input
                                                        type="text"
                                                        class="auth-form__input"
                                                        placeholder="Tên đăng nhập"
                                                        name="user"
                                                        />
                                                </div>
                                                <div class="auth-form__group">
                                                    <input
                                                        type="password"
                                                        class="auth-form__input"
                                                        placeholder="Mật khẩu"
                                                        name="pass"
                                                        />
                                                </div>
                                                <div class="auth-form__group">
                                                    <input
                                                        type="password"
                                                        class="auth-form__input"
                                                        placeholder="Nhập lại mật khẩu"
                                                        name="repass"
                                                        />
                                                </div>
                                            </div>

                                            <div class="auth-form__aside">
                                                <p class="auth-form__policy-text">
                                                    Bằng cách đăng ký, bạn đồng ý với
                                                    <a href="" class="auth-form__policy-link">
                                                        Điều khoản dịch vụ
                                                    </a>
                                                    &
                                                    <a href="" class="auth-form__policy-link">
                                                        Chính sách bảo mật của chúng tôi.
                                                    </a>
                                                </p>
                                            </div>
                                              
                                            <div class="auth-form__controls">
                                                <button class="btn">Đăng ký</button>
                                            </div>
                                        </div>
                                    </div>
                                    <script>
                                       const isRegister = check => {
                                            if (check === 0)
                                            {
                                              alert("${requestScope.error}");
                                              console.log("err");
                                            }
                                            
                                            else if (check === 1) {
                                              alert("${requestScope.success}");
                                              console.log("success");
                                            }
                                            else if (check === 2){
                                                alert("${requestScope.error1}");
                                                console.log("err1");
                                            }
                                            
                                       };
                                       isRegister(${requestScope.isRegister});
                                    </script>
                                </form>



                            </div>

                            <div class="auth-form__socials">
                                <a href="" class="btn--with-icon facebook-icon">
                                    <!-- <FaFacebook class="social-icon" /> -->
                                    <i class="fab fa-facebook social-icon"></i>
                                    <div>Kết nối với Facebook</div>
                                </a>
                                <a href="" class="btn--with-icon">
                                    <!-- <FaGooglePlus class="social-icon" /> -->
                                    <i class="fab fa-google-plus social-icon"></i>
                                    <div>Kết nối với Google</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      <script src="./main.js"></script>
  </body>
</html>

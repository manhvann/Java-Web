<%-- 
    Document   : index
    Created on : May 27, 2023, 7:02:14 PM
    Author     : Van Manh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin</title>
    <link rel="icon" type="image/x-icon" href="../../img/favicon.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    />
    <link rel="stylesheet" href="./books.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=Roboto:wght@100;300;400;500;700&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <!-- begin nav -->
    <div class="navigation">
      <div class="nav-container">
        <div class="content">
          <div class="header">Books</div>
          <div class="link">
            <a href="../index.jsp">Admin</a>
            / Books
          </div>
        </div>
        <div class="search">
          <div class="search-container">
            <input type="search" placeholder="Tìm kiếm... " />
            <i class="fas fa-search"></i>
          </div>
        </div>
        <div class="account">
          <i class="far fa-bell acc-icon"></i>
          <i class="far fa-envelope acc-icon"></i>
          <i class="far fa-shopping-cart acc-icon"></i>
          <div class="account-container">
            <img src="../../img/account.png" alt="account" />
            <div class="information">
              <div class="acc-name">Admin</div>
              <div class="acc-role">admin</div>
              <div class="infor-admin hide">
                <li class="h50">Xin chào Admin</li>
                <li class="infor-items">
                  <i class="fas fa-user-check inf-icon"></i>
                  <div class="detail">
                    <div class="uppercase">Thông tin cá nhân</div>
                    <div class="description">Xem chi tiết hồ sơ cá nhân</div>
                  </div>
                </li>
                <li class="infor-items">
                  <i class="far fa-address-card inf-icon"></i>
                  <div class="detail">
                    <div class="uppercase">Chỉnh sửa thông tin cá nhân</div>
                    <div class="description">Sửa đổi thông tin cá nhân</div>
                  </div>
                </li>
                <li class="infor-items">
                  <i class="fas fa-cog inf-icon"></i>
                  <div class="detail">
                    <div class="uppercase">Cài đặt</div>
                    <div class="description">Quản lý thông tin cá nhân</div>
                  </div>
                </li>
                <div class="sign-out">
                  <a class="btn" href="../../index.jsp">
                    Đăng xuất
                    <i class="fas fa-sign-out-alt"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end nav -->

    <!-- begin sidebar -->
    <div class="sidebar">
      <div class="sidebar-header">
        <div class="logo">
          <img src="../../img/favicon.png" alt="logo" class="sidebar-img" />
          <div class="sidebar-header-text">Bookstore</div>
        </div>
        <i class="fas fa-bars"></i>
      </div>
      <ul class="sidebar-container">
        <li class="sidebar-content">
          <div class="sidebar-items">
            <div class="left">
              <i class="fas fa-home icon-left"></i>
              <p class="sb-text">Shop</p>
            </div>
            <i class="fas fa-chevron-right icon-right"></i>
          </div>
          <ul class="sub-nav hide">
            <li class="sub-nav-content">
              <a href="../../index.jsp" class="sub-nav-items">
                <div class="sub-nav-t">
                  <i class="fas fa-home"></i>
                  Trang chủ
                </div>
              </a>
            </li>
            <li class="sub-nav-content">
              <div class="sub-nav-items list">
                <div class="sub-nav-t">
                  <i class="fas fa-list"></i>
                  Danh mục sản phẩm
                </div>
                <i class="fas fa-chevron-right icon-right"></i>
              </div>
              <ul class="category hide">
                <a href="../../collections/" class="menu-content">
                  <div class="menu-items">Thiếu nhi</div>
                </a>
                <a href="../../collections/" class="menu-content">
                  <div class="menu-items">Văn học</div>
                </a>
                <a href="../../collections/" class="menu-content">
                  <div class="menu-items">Tâm lý đời sống</div>
                </a>
                <a href="../../collections/" class="menu-content">
                  <div class="menu-items">Khoa học</div>
                </a>
                <a href="../../collections/" class="menu-content">
                  <div class="menu-items">Chính trị lịch sử</div>
                </a>
                <a href="../../collections/" class="menu-content">
                  <div class="menu-items">Tham khảo</div>
                </a>
              </ul>
            </li>
          </ul>
        </li>
        <li class="sidebar-content">
          <div class="sidebar-items color">
            <div class="left">
              <i class="fas fa-user-lock icon-left"></i>
              <p class="sb-text">Admin</p>
            </div>
            <i class="fas fa-chevron-right icon-right"></i>
          </div>
          <ul class="sub-nav">
            <li class="sub-nav-content">
              <a href="../index.jsp" class="sub-nav-items">
                <div class="sub-nav-t">
                  <i class="fas fa-home"></i>
                  Dashboard
                </div>
              </a>
            </li>
            <li class="sub-nav-content">
              <a href="./index.jsp" class="sub-nav-items color">
                <div class="sub-nav-t">
                  <i class="fas fa-book"></i>
                  Books
                </div>
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </div>
    <!-- end sidebar -->

    <div class="container">
      <div class="book-list">
        <div class="book-list-header">
          <div class="text">Hệ thống sách</div>
          <div class="btn">
            <button onclick="openForm()">Thêm sách mới</button>
          </div>
        </div>
        <div class="book-list-content">
          <div class="row1">
            <div class="show">
              Xuất 
              <select name="" id="">
                <option value="10">10</option>
                <option value="25">25</option>
                <option value="50">50</option>
                <option value="100">100</option>
              </select>
              mục
            </div>
            <div class="search">
              Tìm kiếm:
              <input type="search" placeholder="">
            </div>
          </div>
          <table>
            <!-- dong 1 -->
            <tr class="thead">
              <th style="width: 42px;">STT</th>
              <th style="width: 115px;">Bìa Sách</th>
              <th style="width: 88px;">Tên Sách</th>
              <th style="width: 100px;">Thể Loại</th>
              <th style="width: 440px;">Mô Tả</th>
              <th style="width: 100px;">Giá Sách</th>
              <th style="width: 110px;">Khuyến Mại</th>
              <th style="width: 100px;">SP còn lại</th>
              <th style="width: 100px;">Chỉnh sửa</th>
            </tr>
            <!-- dong 2 -->
            <tr class="troad">
              <td class="stt">1</td>
              <td class="img">
                <img src="../../img/book1.webp" alt="book 1" />
              </td>
              <td class="name">Mật ngọt cho tâm hồn trẻ thơ</td>
              <td class="type">Sách thiếu nhi</td>
              <td class="description">
                Được minh họa bằng hình vẽ từ nhiều cuốn sách được trẻ em yêu
                thích, Mật ngọt cho tâm hồn trẻ thơ còn được mở rộng, bao gồm
                danh sách sách cập nhật không chỉ phù hợp với lứa tuổi của con
                bạn, mà còn liệt kê gần 1.000 cuốn sách được yêu thích trong
                nhiều năm, tác phẩm kinh điển, sách mới tuyệt vời, thậm chí cả
                sách nói, làm phong phú thêm cuộc sống của con bạn.
              </td>
              <td class="price">160.000đ</td>
              <td class="name">20%</td>
              <td class="author">30</td>
              <td class="action">
                <div class="tooltip edit">
                  <i class="fas fa-pen"></i>
                  <span class="tooltiptext">Sửa</span>
                </div>
                <div class="tooltip delete">
                  <i class="fas fa-trash-alt"></i>
                <span class="tooltiptext">Xóa</span>
                </div>
              </td>
            </tr>
            <!-- dong 3 -->
            <tr class="troad">
              <td class="stt">2</td>
              <td class="img">
                <img src="../../img/book2.webp" alt="book 2" />
              </td>
              <td class="name">Mật ngọt cho tâm hồn thanh thiếu niên</td>
              <td class="type">Sách thiếu nhi</td>
              <td class="description">
                Vốn tài sản quý nhất, quan trọng nhất đối với các em thanh thiếu
                niên chính là niềm tin của các em về giá trị của chính mình.
                “Bạn đặc biệt bởi vì bạn là bạn; không phải ai khác mà là chính
                bạn.” Và sự ra đời của cuốn sách Mật ngọt cho tâm hồn thanh
                thiếu niên sẽ giúp bạn tìm ra giá trị của mình.
              </td>
              <td class="price">185.000đ</td>
              <td class="name">20%</td>
              <td class="author">15</td>
              <td class="action">
                <div class="edit tooltip">
                  <i class="fas fa-pen"></i>
                  <span class="tooltiptext">Sửa</span>
                </div>
                <div class="delete tooltip">
                  <i class="fas fa-trash-alt"></i>
                <span class="tooltiptext">Xóa</span>
                </div>
              </td>
            </tr>
            <!-- dong 4 -->
            <tr class="troad">
              <td class="stt">3</td>
              <td class="img">
                <img src="../../img/book3.webp" alt="book 3" />
              </td>
              <td class="name">Mật ngọt cho tâm hồn phụ nữ</td>
              <td class="type">Sách văn học</td>
              <td class="description">
                Với mê cung sách do chính mình tạo ra trong Mật ngọt cho tâm hồn
                phụ nữ, Gladys Hunt giúp độc giả chọn được những cuốn sách hay
                nhất để đọc, những cuốn sách kích thích trí óc, giúp bạn khám
                phá ra thật nhiều niềm vui đến từ việc đọc.
              </td>
              <td class="price">135.000đ</td>
              <td class="name">20%</td>
              <td class="author">20</td>
              <td class="action">
                <div class="edit tooltip">
                  <i class="fas fa-pen"></i>
                  <span class="tooltiptext">Sửa</span>
                </div>
                <div class="delete tooltip">
                  <i class="fas fa-trash-alt"></i>
                <span class="tooltiptext">Xóa</span>
                </div>
              </td>
            </tr>
            <!-- dong 5 -->
            <tr class="troad">
              <td class="stt">4</td>
              <td class="img">
                <img src="../../img/book4.webp" alt="book 4" />
              </td>
              <td class="name">Giáo dục giới tính - Không phải lỗi của con</td>
              <td class="type">Tâm lý đời sống</td>
              <td class="description">
                Với sự việc hàng loạt vụ xâm hại tình dục trẻ em được phanh phui
                trên truyền thông, phụ huynh ngày nay thật sự hoang mang và lo
                lắng. Điều này đặt ra một thách thức đối với người lớn là làm
                như thế nào để cung cấp thông tin về giới tính để con em biết
                cách tự bảo vệ bản thân mà không phải "vẽ đường cho hươu chạy".
              </td>
              <td class="price">50.000đ</td>
              <td class="name">20%</td>
              <td class="author">17</td>
              <td class="action">
                <div class="edit tooltip">
                  <i class="fas fa-pen"></i>
                  <span class="tooltiptext">Sửa</span>
                </div>
                <div class="delete tooltip">
                  <i class="fas fa-trash-alt"></i>
                <span class="tooltiptext">Xóa</span>
                </div>
              </td>
            </tr>
            <!-- dong 6 -->
            <tr class="troad">
              <td class="stt">5</td>
              <td class="img">
                <img src="../../img/book5.webp" alt="book5" />
              </td>
              <td class="name">Cha mẹ làm gì để tạo hứng thú cho con?</td>
              <td class="type">Sách thiếu nhi</td>
              <td class="description">
                Cuốn sách "Cha mẹ làm gì để tạo hứng thú cho con?" giới thiệu
                với bạn đọc những câu cha mẹ nên nói để khích lệ con. Có thể nói
                đây là những câu nói vàng, giúp điều hòa mối quan hệ giữa cha mẹ
                và con cái trong thời hiện đại. Khi cha mẹ nói những lời động
                viên, khen ngợi và khẳng định khả năng của con cũng chính là lúc
                cha mẹ thắp ngọn lửa tự tin trong con, giúp con vững vàng và
                trưởng thành hơn trên mỗi bước đường tương lai sau này.
              </td>
              <td class="price">75.000đ</td>
              <td class="name">20%</td>
              <td class="author">10</td>
              <td class="action">
                <div class="edit tooltip">
                  <i class="fas fa-pen"></i>
                  <span class="tooltiptext">Sửa</span>
                </div>
                <div class="delete tooltip">
                  <i class="fas fa-trash-alt"></i>
                <span class="tooltiptext">Xóa</span>
                </div>
              </td>
            </tr>
            <!-- dong 7 -->
            <tr class="troad">
              <td class="stt">6</td>
              <td class="img">
                <img src="../../img/book6.webp" alt="book6" />
              </td>
              <td class="name">Tri thức là sức mạnh</td>
              <td class="type">Sách khoa học</td>
              <td class="description">
                “Tri thức là sức mạnh” là câu nói nổi tiếng của lãnh tụ Lênin vĩ
                đại. Đó cũng là lời khẳng định mạnh mẽ, là chân lý đã được kiểm
                chứng qua thời gian. Chính việc không ngừng bồi đắp, tích lũy
                tri thức qua hàng triệu năm lịch sử mà con người đã trở thành
                lực lượng thống trị và thay đổi thế giới này, bởi “ai có tri
                thức, người đó có sức mạnh”.
              </td>
              <td class="price">175.000đ</td>
              <td class="name">20%</td>
              <td class="author">27</td>
              <td class="action">
                <div class="edit tooltip">
                  <i class="fas fa-pen"></i>
                  <span class="tooltiptext">Sửa</span>
                </div>
                <div class="delete tooltip">
                  <i class="fas fa-trash-alt"></i>
                <span class="tooltiptext">Xóa</span>
                </div>
              </td>
            </tr>
            <!-- dong 8 -->
            <tr class="troad">
              <td class="stt">7</td>
              <td class="img">
                <img src="../../img/book7.webp" alt="book7" />
              </td>
              <td class="name">Dạy con đọc sách</td>
              <td class="type">Sách thiếu nhi</td>
              <td class="description">
                Cuốn Dạy con đọc sách kết hợp những lời khuyên dễ hiểu, thực tế,
                cùng với niềm cảm hứng, sự dí dỏm, những bí quyết thú vị và danh
                sách đọc được chọn lọc kĩ lưỡng bởi hai biên tập viên chuyên mục
                đánh giá sách hàng đầu của tờ New York Times, Pamela Paul &
                Maria Russo. Cuốn sách sẽ chỉ cho bạn cách tạo sự thích thú và
                niềm vui quên thời gian cho con trẻ từ việc đọc sách.
              </td>
              <td class="price">160.000đ</td>
              <td class="name">20%</td>
              <td class="author">18</td>
              <td class="action">
                <div class="edit tooltip">
                  <i class="fas fa-pen"></i>
                  <span class="tooltiptext">Sửa</span>
                </div>
                <div class="delete tooltip">
                  <i class="fas fa-trash-alt"></i>
                <span class="tooltiptext">Xóa</span>
                </div>
              </td>
            </tr>
            <!-- dong 9 -->
            <tr class="troad">
              <td class="stt">8</td>
              <td class="img">
                <img src="../../img/book1.webp" alt="book 1" />
              </td>
              <td class="name">Mật ngọt cho tâm hồn trẻ thơ</td>
              <td class="type">Sách thiếu nhi</td>
              <td class="description">
                Được minh họa bằng hình vẽ từ nhiều cuốn sách được trẻ em yêu
                thích, Mật ngọt cho tâm hồn trẻ thơ còn được mở rộng, bao gồm
                danh sách sách cập nhật không chỉ phù hợp với lứa tuổi của con
                bạn, mà còn liệt kê gần 1.000 cuốn sách được yêu thích trong
                nhiều năm, tác phẩm kinh điển, sách mới tuyệt vời, thậm chí cả
                sách nói, làm phong phú thêm cuộc sống của con bạn.
              </td>
              <td class="price">160.000đ</td>
              <td class="name">20%</td>
              <td class="author">23</td>
              <td class="action">
                <div class="edit tooltip">
                  <i class="fas fa-pen"></i>
                  <span class="tooltiptext">Sửa</span>
                </div>
                <div class="delete tooltip">
                  <i class="fas fa-trash-alt"></i>
                <span class="tooltiptext">Xóa</span>
                </div>
              </td>
            </tr>
            <!-- dong 10 -->
            <tr class="troad">
              <td class="stt">9</td>
              <td class="img">
                <img src="../../img/book2.webp" alt="book2" />
              </td>
              <td class="name">Mật ngọt cho tâm hồn thanh thiếu niên</td>
              <td class="type">Sách thiếu nhi</td>
              <td class="description">
                Vốn tài sản quý nhất, quan trọng nhất đối với các em thanh thiếu
                niên chính là niềm tin của các em về giá trị của chính mình.
                “Bạn đặc biệt bởi vì bạn là bạn; không phải ai khác mà là chính
                bạn.” Và sự ra đời của cuốn sách Mật ngọt cho tâm hồn thanh
                thiếu niên sẽ giúp bạn tìm ra giá trị của mình.
              </td>
              <td class="price">185.000đ</td>
              <td class="name">20%</td>
              <td class="author">10</td>
              <td class="action">
                <div class="edit tooltip">
                  <i class="fas fa-pen"></i>
                  <span class="tooltiptext">Sửa</span>
                </div>
                <div class="delete tooltip">
                  <i class="fas fa-trash-alt"></i>
                <span class="tooltiptext">Xóa</span>
                </div>
              </td>
            <!-- dong 11 -->
            <tr class="troad">
              <td class="stt">10</td>
              <td class="img">
                <img src="../../img/book3.webp" alt="book 3" />
              </td>
              <td class="name">Mật ngọt cho tâm hồn phụ nữ</td>
              <td class="type">Sách văn học</td>
              <td class="description">
                Với mê cung sách do chính mình tạo ra trong Mật ngọt cho tâm hồn
                phụ nữ, Gladys Hunt giúp độc giả chọn được những cuốn sách hay
                nhất để đọc, những cuốn sách kích thích trí óc, giúp bạn khám
                phá ra thật nhiều niềm vui đến từ việc đọc.
              </td>
              <td class="price">135.000đ</td>
              <td class="name">20%</td>
              <td class="author">18</td>
              <td class="action">
                <div class="edit tooltip">
                  <i class="fas fa-pen"></i>
                  <span class="tooltiptext">Sửa</span>
                </div>
                <div class="delete tooltip">
                  <i class="fas fa-trash-alt"></i>
                <span class="tooltiptext">Xóa</span>
                </div>
              </td>
            </tr>
          </table>
          <div class="row2">
            Hiển thị 1 đến 10 trên 10 mục.
            <div class="num-of-page">
              <i class="fas fa-arrow-left"></i>
              <p class="num">1</p>
              <i class="fas fa-arrow-right"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- footer -->
    <div class="footer">
      Powered by <a href="https://github.com/hhoai">hh</a>
    </div>
    
    <div class="form-wrapper hide">
      <div class="modal">
        <div class="modal-overlay"></div>
        <div class="modal-body">
          <div class="modal-inner">
            <!-- authen form -->
            <div class="auth-form">
              <div class="out" onclick="exit()">
                <i class="fas fa-times"></i>
                <!-- <AiOutlineClose /> -->
              </div>
              <div class="auth-form-container">
                <div class="auth-form-header">
                  Chi tiết sản phẩm
                </div>
                <div class="auth-form-content">
                  <div class="items">
                    <label for="">ImageUrl</label>
                    <input type="text" name="imageUrl" required>
                  </div>
                  <span class="img-error error"></span>
                  <div class="items">
                    <label for="">Tên Sách</label>
                    <input type="text" name="name" required>
                  </div>
                  <span class="name-error error"></span>
                  <div class="items">
                    <label for="">Thể Loại</label>
                    <input type="text" name="category" required>
                  </div>
                  <span class="category-error error"></span>
                  <div class="items">
                    <label for="">Mô Tả</label>
                    <input type="text" name="description" required>
                  </div>
                  <span class="description-error error"></span>
                  <div class="items">
                    <label for="">Giá Sách</label>
                    <input type="number" name="price" required>
                  </div>
                  <span class="price-error error"></span>
                  <div class="items">
                    <label for="">Khuyến Mại</label>
                    <input type="number" name="sale" required>
                  </div>
                  <span class="sale-error error"></span>
                  <div class="items">
                    <label for="">Số Lượng</label>
                    <input type="number" name="quantity" required>
                  </div>
                  <span class="quantity-error error"></span>
                  <div class="btn">
                    <button onclick="addBook()">Thêm sản phẩm</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <script src="main.js"></script>
  </body>
</html>

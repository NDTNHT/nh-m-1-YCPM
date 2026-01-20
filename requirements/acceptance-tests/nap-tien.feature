Feature: người dùng nạp tiền vào tải khoản
  
 Scenario: Nạp tiền thành công
    Given khách hàng đã đưa thẻ ATM hợp lệ vào máy
    And khách hàng nhập đúng mã PIN
    When khách hàng chọn chức năng nạp tiền
    And khách hàng đưa tiền mặt hợp lệ vào máy ATM
    Then ATM nhận tiền nộp vào và đếm tiền
    And Xác nhận số tiền cần nộp và nộp tiền tài khoản
    Then Số dư tài khoản được tăng lên tương ứng
    Then giao dịch được ghi nhận thành công

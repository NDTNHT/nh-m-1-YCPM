feature
người dùng nạp tiền vào tải khoản
  
  Scenario: Successful deposit
Given
Có tài khoản ngân hàng
Đăng nhập thành công ở ATM
Phải có tiền mặt
When
ATM nhận tiền nộp vào và đếm tiền
Xác nhận số tiền cần nộp và nộp tiền tài khoản
Then
Số dư tài khoản được tăng lên tương ứng

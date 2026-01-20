Feature: Khóa thẻ

   Scenario: khóa thẻ thành công
   Given Khách đã có thẻ ATM
   And Xác minh đúng chủ sở hữu - CCCD là người đã gửi yêu cầu
   When khách hàng gửi yêu cầu khóa thẻ 
   Then hệ Thống khóa thẻ được yêu cầu
   And Hệ thống ghi nhận lại kết quả 
   Then Thẻ của khách đã được khóa

   Scenario: Khóa thẻ đã bị khóa
    Given khách hàng đã đăng nhập hợp lệ
    And thẻ ngân hàng đang ở trạng thái đã khóa
    When khách hàng chọn chức năng khóa thẻ
    Then hệ thống từ chối yêu cầu
    And hiển thị thông báo thẻ đã bị khóa 

   Scenario: Không xác thực được chủ sở hữu 
   Given Khách đã có thẻ ATM
   Then Xác minh không đúng chủ sỡ hữu - CCCD
   When gửi yêu cầu khóa thẻ 
   Then hệ thống từ chối yêu cầu Khóa thẻ
   And Hệ thống thông báo lỗi “Không phải thẻ của mình”

#import "../config.typ": photo2, text_card, note_card, compact_flow, down_arrow

= Tiếp cận IoT và kiểm thử kết nối thiết bị - ứng dụng

== Phạm vi tiếp cận IoT

Trong kỳ thực tập, nội dung IoT chỉ được trình bày ở mức quan sát, hỗ trợ và thử nghiệm. Em không tự thiết kế hệ thống, không xây server và không phát triển trọn vẹn ứng dụng. Phần em tiếp cận chủ yếu là cách thiết bị thông minh phản hồi với app, cách trạng thái được kiểm tra và vì sao kết nối có thể ảnh hưởng đến trải nghiệm sử dụng cũng như quá trình bảo hành.

IoT trong thiết bị gia dụng không tách rời phần cứng. Một trạng thái hiển thị trên app có thể phụ thuộc vào nguồn cấp, cảm biến, firmware, module kết nối, điều kiện mạng và thao tác người dùng. Vì vậy, kiểm thử kết nối cần được nhìn như một phần của hệ thống nhúng, không chỉ là thao tác trên điện thoại @atzori2010 @buyya2016.

== Cấu trúc khối của thiết bị thông minh

Một thiết bị thông minh thường gồm phần nguồn, vi điều khiển hoặc bo xử lý, cảm biến, cơ cấu chấp hành, module kết nối, firmware và ứng dụng. Khi người dùng thao tác trên app, lệnh cần đi qua lớp kết nối rồi quay lại thành phản hồi của thiết bị. Nếu phản hồi sai hoặc chậm, nguyên nhân có thể nằm ở phần cứng, mạng, firmware hoặc cách sử dụng.

#compact_flow(
  [Cấu trúc khối kiểm thử kết nối giữa thiết bị và ứng dụng.],
[
  #text_card([Ứng dụng], [Gửi thao tác điều khiển, đọc trạng thái và hiển thị phản hồi cho người dùng.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([Module kết nối / firmware], [Truyền lệnh, cập nhật trạng thái và xử lý điều kiện kết nối.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([Phần cứng thiết bị], [Nguồn, cảm biến, tải, giao diện và cơ cấu chấp hành tạo ra trạng thái thực tế.])
]
)

== Kiểm thử kết nối app - thiết bị

Khi quan sát kiểm thử kết nối, em chú ý các điểm như thiết bị có được nhận trong app hay không, thao tác trên app có làm thiết bị phản hồi không, trạng thái có cập nhật lại không, lỗi có lặp lại không và điều kiện mạng có ảnh hưởng rõ rệt không. Cách ghi nhận cần nêu rõ thao tác, điều kiện thử và phản hồi quan sát được.

#photo2(
  "assets/test_computer.jpg",
  "assets/control_display_module.jpg",
  [Thiết bị kiểm tra và cụm hiển thị/điều khiển liên quan đến quá trình quan sát phản hồi.]
)

#note_card(
  [Giới hạn trình bày],
  [Báo cáo chỉ mô tả IoT ở mức tiếp cận trong kỳ thực tập. Các kiến trúc server, firmware nội bộ hoặc pipeline dữ liệu không được suy diễn nếu không có cơ sở quan sát trực tiếp.]
)

== Liên hệ giữa IoT, QC và Bảo hành SP

Với sản phẩm có kết nối, QC cần kiểm tra thêm phản hồi trạng thái và tính ổn định khi thao tác qua app. Bảo hành SP cần phân biệt lỗi phần cứng, lỗi vận hành và lỗi kết nối. Ví dụ, app không nhận trạng thái có thể liên quan đến mạng, module kết nối, nguồn, firmware hoặc thao tác cấu hình. Nếu chỉ nhìn từ phía app, rất dễ kết luận sai nguyên nhân.

Trong quá trình quan sát, em thấy việc kiểm thử nên ghi theo từng tình huống nhỏ: ghép nối lần đầu, khởi động lại thiết bị, thay đổi trạng thái trên app, kiểm tra phản hồi trên thiết bị, kiểm tra trạng thái sau một khoảng thời gian và ghi nhận lỗi nếu thao tác không lặp lại được. Cách ghi này không đi sâu vào kiến trúc phần mềm nội bộ, nhưng vẫn đủ để liên hệ giữa phần cứng, firmware, kết nối và trải nghiệm người dùng.

Dữ liệu trạng thái, nếu được ghi nhận đúng, có thể hỗ trợ bảo hành vì cho biết điều kiện xảy ra lỗi và phản hồi của thiết bị tại thời điểm kiểm tra. Tuy nhiên, dữ liệu này chỉ có ý nghĩa khi được đặt cạnh quan sát phần cứng và điều kiện vận hành thực tế.


#compact_flow(
  [Chuỗi ghi nhận rút gọn khi kiểm thử kết nối thiết bị với ứng dụng.],
[
  #text_card([Điều kiện thử], [Nguồn thiết bị, trạng thái mạng, tài khoản/app, vị trí thao tác và trạng thái ban đầu.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([Thao tác], [Ghép nối, điều khiển, đọc trạng thái, chờ phản hồi hoặc khởi động lại theo hướng dẫn.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([Kết quả], [Thiết bị phản hồi đúng/chậm/không phản hồi, trạng thái app cập nhật hay không và lỗi có lặp lại không.])
]
)



== Những điểm dễ nhầm khi kiểm thử IoT

Khi kiểm thử kết nối thiết bị - ứng dụng, một lỗi nhìn từ phía người dùng có thể bị nhầm là lỗi phần mềm, trong khi nguyên nhân thực tế có thể nằm ở nguồn, module kết nối, tín hiệu mạng, trạng thái cảm biến hoặc thao tác cấu hình. Ngược lại, cũng có trường hợp phần cứng vận hành bình thường nhưng app cập nhật trạng thái chậm hoặc không đồng bộ. Vì vậy, ghi nhận kiểm thử cần nêu rõ cả trạng thái thiết bị thật và trạng thái hiển thị trên app.

#text_card(
  [Không đồng nhất giữa app và thiết bị],
  [Nếu app báo một trạng thái nhưng thiết bị thật không phản hồi tương ứng, cần ghi rõ thao tác đã thực hiện, thời điểm phản hồi, trạng thái đèn/màn hình/âm báo và điều kiện mạng. Không nên kết luận ngay là lỗi app hoặc lỗi bo khi chưa kiểm chứng cả hai phía.]
)

#v(0.10cm)

#text_card(
  [Lỗi không lặp lại ổn định],
  [Một số lỗi kết nối có thể chỉ xuất hiện khi khởi động lại thiết bị, đổi mạng, đứng xa điểm phát Wi-Fi hoặc thao tác quá nhanh. Với trường hợp này, giá trị của ghi nhận nằm ở điều kiện xuất hiện lỗi, không chỉ ở kết quả đúng/sai cuối cùng.]
)

#v(0.10cm)

#text_card(
  [Nhầm lẫn giữa lỗi vận hành và lỗi kết nối],
  [Nếu cảm biến, nguồn hoặc cơ cấu chấp hành đang ở trạng thái lỗi, app có thể hiển thị không như mong muốn. Vì vậy, kiểm thử IoT cần liên hệ lại phần cứng thay vì chỉ thao tác trên điện thoại hoặc máy tính.]
)

== Khung ghi nhận kiểm thử app - thiết bị

Để phần IoT không trở thành mô tả chung chung, em sử dụng khung ghi nhận ngắn gồm: điều kiện thử, thao tác, phản hồi thiết bị, phản hồi app, khả năng lặp lại và nhận xét giới hạn. Khung này không yêu cầu sinh viên biết kiến trúc server hoặc firmware nội bộ, nhưng đủ để thể hiện tư duy kiểm thử hệ thống nhúng có kết nối.

#compact_flow(
  [Khung đối chiếu trạng thái giữa ứng dụng và thiết bị thật.],
[
  #text_card([Trạng thái ban đầu], [Thiết bị bật/tắt, mạng đang dùng, app đã đăng nhập, thiết bị đã ghép nối hay chưa.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([Thao tác kiểm thử], [Bấm lệnh, đổi chế độ, đọc trạng thái, khởi động lại hoặc chờ phản hồi theo hướng dẫn.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([Đối chiếu hai phía], [So sánh trạng thái thực tế của thiết bị với trạng thái hiển thị trên ứng dụng.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([Kết luận trong phạm vi], [Ghi đúng điều kiện quan sát, chưa suy diễn kiến trúc hệ thống nếu không có dữ kiện.])
]
)

Trong báo cáo, phần IoT được giữ ở mức vừa phải vì trọng tâm thực tập vẫn là QC và Bảo hành SP. Tuy nhiên, phần này giúp em liên hệ ngành Điện tử - Viễn thông với sản phẩm thông minh hiện nay: thiết bị không chỉ cần chạy đúng về điện - cơ, mà còn cần phản hồi đúng với lớp điều khiển và hiển thị trạng thái cho người dùng. Khi sản phẩm có kết nối, lỗi kỹ thuật có thể nằm ở ranh giới giữa phần cứng, firmware, mạng và app, do đó kiểm thử phải có cách ghi nhận rõ ràng.

== Liên hệ với thiết bị chăm sóc sức khỏe thông minh

Ngoài nhóm điện gia dụng như bếp, máy rửa chén, máy hút mùi hoặc nồi chiên, doanh nghiệp còn có bối cảnh sản phẩm chăm sóc sức khỏe thông minh. Trong phạm vi báo cáo, nội dung này chỉ được nhắc ở mức liên hệ kỹ thuật: các thiết bị có điều khiển điện tử, cảm biến, cơ cấu chấp hành và đôi khi có lớp kết nối với app. Cách kiểm thử vẫn cần dựa trên nguyên tắc tương tự: kiểm tra trạng thái phần cứng trước, sau đó mới đối chiếu phản hồi phần mềm.

Với nhóm thiết bị có cơ cấu chuyển động, yêu cầu an toàn và ổn định càng quan trọng. Một lệnh điều khiển từ app cần tạo ra phản hồi đúng, nhưng cũng phải được giới hạn bởi trạng thái cảm biến và điều kiện vận hành thực tế. Điều này giúp em hiểu rằng IoT không chỉ là thêm kết nối vào thiết bị, mà là phối hợp giữa phần cứng, phần mềm nhúng, giao diện người dùng và quy trình kiểm thử.

== Kết luận chương

Phần IoT giúp em hiểu thêm mối liên hệ giữa phần cứng, firmware, module kết nối và ứng dụng. Trong bối cảnh thực tập, bài học quan trọng không phải là xây dựng hệ thống IoT hoàn chỉnh, mà là biết kiểm tra phản hồi thiết bị, ghi nhận điều kiện kết nối và tránh tách rời lỗi app khỏi trạng thái phần cứng thật.

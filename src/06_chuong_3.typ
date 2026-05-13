#import "../config.typ": photo4, photo2, text_card, step_card, compact_flow, down_arrow

= Thực tập tại Phòng QC

== Vai trò của Phòng QC

Phòng QC là nơi em tiếp cận rõ nhất với tư duy kiểm soát chất lượng sản phẩm. Trong phạm vi thực tập, QC không được nhìn như một bước kiểm tra hình thức, mà là quá trình đánh giá tình trạng kỹ thuật ban đầu, phát hiện bất thường, ghi nhận rủi ro và hỗ trợ xác nhận sản phẩm trước hoặc sau can thiệp kỹ thuật. Nội dung này liên hệ trực tiếp với kiến thức kiểm thử, độ tin cậy và vận hành hệ thống @montgomery2020.

Ở vị trí sinh viên, em chủ yếu quan sát, hỗ trợ ghi nhận và học cách đặt câu hỏi kỹ thuật. Mục tiêu không phải là tự kết luận lỗi, mà là biết cần quan sát gì: nguồn cấp, dây nối, bo mạch, cảm biến, cơ cấu, giao diện, nhiệt, tiếng ồn và phản hồi vận hành.

#photo4(
  "assets/workbench_qc.jpg",
  "assets/workbench_test_area.jpg",
  "assets/appliance_overview.jpg",
  "assets/stove_control_panel.jpg",
  [Không gian kiểm tra và một số sản phẩm được quan sát trong bối cảnh QC.]
)

== Kiểm tra ngoại quan và điều kiện ban đầu

Bước quan sát đầu tiên là kiểm tra tình trạng bên ngoài: vỏ, dây nguồn, tem nhãn, dấu hiệu va đập, nước, bụi, nhiệt, lắp đặt và trạng thái phụ kiện. Những dữ kiện này chưa đủ để kết luận nguyên nhân, nhưng giúp định hướng khu vực cần kiểm tra tiếp. Ví dụ, dấu hiệu ẩm có thể gợi ý kiểm tra kết nối hoặc cảm biến; dấu hiệu nhiệt cần chú ý đến nguồn, công suất và tản nhiệt.

#step_card(
  1,
  [Ghi nhận ban đầu],
  [Tạo cơ sở trước khi kiểm tra sâu.],
  [Quan sát ngoại quan, điều kiện đặt thiết bị, dây nối và trạng thái vận hành đầu tiên.],
  [Không ghi chung chung như "bị lỗi" nếu chưa rõ hiện tượng.],
  [Có mô tả đủ để trao đổi với người hướng dẫn.],
)

== Nhận diện cấu trúc bên trong thiết bị

Khi được hướng dẫn tháo mở, em tập trung nhận diện vị trí các cụm chính: bo nguồn, bo điều khiển, mạch công suất, cảm biến, dây tín hiệu, dây công suất, quạt, bơm, van hoặc cụm giao diện. Cách nhìn này giúp tránh việc chỉ gọi tên linh kiện rời rạc mà không hiểu vai trò của linh kiện trong hệ thống.

#photo4(
  "assets/dishwasher_open.jpg",
  "assets/dishwasher_inner_marked.jpg",
  "assets/dishwasher_side_marked.jpg",
  "assets/appliance_back_hose.jpg",
  [Một số khu vực bên trong thiết bị cần quan sát theo cụm chức năng.]
)

== Nhận diện khối nguồn, công suất và điều khiển

Khối nguồn có nhiệm vụ cấp năng lượng cho hệ thống; khối công suất điều khiển tải như cuộn dây, quạt, bơm, van hoặc điện trở; khối điều khiển xử lý tín hiệu, trạng thái và giao diện người dùng. Trong sản phẩm điện gia dụng, ba nhóm này thường liên hệ chặt chẽ: lỗi nguồn có thể làm bo điều khiển không hoạt động, lỗi tản nhiệt có thể làm công suất tự bảo vệ, lỗi cảm biến có thể khiến chương trình chạy sai.

Khi quan sát bo mạch, em chú ý thêm đến những chi tiết nhỏ nhưng dễ ảnh hưởng đến độ ổn định: đầu nối có bị lỏng không, dây có đi gần vùng nóng không, linh kiện công suất có tản nhiệt phù hợp không, chân hàn có dấu hiệu bất thường không và khu vực bo có vết ẩm hay bụi bẩn hay không. Các dấu hiệu này không thay thế cho đo kiểm, nhưng giúp định hướng bước kiểm tra tiếp theo và giúp em hiểu vì sao kỹ thuật viên thường quan sát tổng thể trước khi đi vào từng linh kiện.

#photo4(
  "assets/panel_board_long.jpg",
  "assets/power_board_close.jpg",
  "assets/control_display_module.jpg",
  "assets/small_mcu_close.jpg",
  [Các cụm bo mạch và linh kiện được quan sát theo hướng nguồn, điều khiển và công suất.]
)

#photo2(
  "assets/connector_module.jpg",
  "assets/ic_solder_close.jpg",
  [Chi tiết đầu nối và vùng linh kiện nhỏ cần quan sát cẩn thận khi kiểm tra bo mạch.]
)

== Đánh giá ổn định vận hành ban đầu

Một sản phẩm bật được chưa đồng nghĩa với hoạt động ổn định. Trong quá trình quan sát, em chú ý các yếu tố như thời gian chạy, nhiệt, tiếng ồn, quạt, bơm, hiển thị, mã lỗi, phản hồi nút bấm và hiện tượng lặp lại. Cách kiểm tra này giúp phân biệt giữa trạng thái hoạt động tức thời và trạng thái đủ tin cậy để bàn giao hoặc tiếp tục đánh giá @oconnor2012.

#compact_flow(
  [Chuỗi quan sát QC rút gọn đối với sản phẩm cần kiểm tra.],
[
  #text_card([Ngoại quan], [Tình trạng vỏ, dây, dấu hiệu nước, nhiệt, va đập và điều kiện lắp đặt.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([Cấu trúc bên trong], [Bo mạch, nguồn, công suất, cảm biến, dây nối và cơ cấu liên quan.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([Chạy thử], [Theo dõi hiển thị, âm báo, nhiệt, tiếng ồn, tải và phản hồi chức năng.])
]
)



== Phân tích theo nhóm khối chức năng trong QC

Để việc quan sát không bị rời rạc, em tập đọc sản phẩm theo các nhóm khối chức năng. Cách đọc này gần với tư duy hệ thống nhúng: mỗi khối có nhiệm vụ riêng, nhưng kết quả vận hành chỉ đúng khi các khối phối hợp ổn định. Với thiết bị điện gia dụng, những nhóm thường gặp gồm nguồn, điều khiển, công suất, cảm biến, giao diện người dùng, cơ cấu chấp hành và kết nối nếu sản phẩm có chức năng thông minh @wolf2012 @horowitz2015.

#text_card(
  [Khối nguồn],
  [Khối nguồn liên quan trực tiếp đến khả năng khởi động và độ ổn định của bo điều khiển. Khi quan sát, em chú ý dây nguồn, đầu nối, vùng linh kiện nguồn, dấu hiệu nhiệt, bụi, ẩm và cách bố trí dây gần vùng nóng. Một lỗi nguồn có thể biểu hiện thành thiết bị không lên, khởi động chập chờn hoặc mất phản hồi ở các cụm khác.]
)

#v(0.10cm)

#text_card(
  [Khối điều khiển và giao diện],
  [Khối điều khiển tiếp nhận tín hiệu từ cảm biến, xử lý trạng thái và điều phối tải. Giao diện người dùng như nút bấm, màn hình, đèn báo hoặc âm báo là nơi thể hiện phản hồi của hệ thống. Khi quan sát, em không chỉ xem bo có hình dạng ra sao mà còn liên hệ với phản hồi vận hành: có hiển thị không, phím có nhận không, trạng thái có thay đổi đúng không.]
)

#v(0.10cm)

#text_card(
  [Khối công suất và tải],
  [Khối công suất thường chịu dòng lớn và nhiệt cao hơn các vùng tín hiệu. Với bếp từ có thể liên quan đến cuộn dây, IGBT, tản nhiệt, tụ và quạt; với máy rửa chén có thể liên quan đến bơm, van, điện trở gia nhiệt hoặc tải cơ điện khác. Khi quan sát, em đặc biệt chú ý tản nhiệt, dây nối, vết đổi màu, tiếng ồn và khả năng tự ngắt.]
)

#v(0.10cm)

#text_card(
  [Cảm biến và dây nối],
  [Cảm biến giúp thiết bị biết điều kiện thật như nhiệt độ, mức nước, trạng thái cửa, tốc độ hoặc trạng thái vận hành. Dây nối và đầu cắm là phần dễ bị xem nhẹ nhưng có thể làm lỗi xuất hiện không ổn định. Vì vậy, kiểm tra dây không chỉ là nhìn có đứt hay không, mà còn chú ý độ chắc đầu cắm, đường đi dây và khả năng bị kéo căng, nóng hoặc ẩm.]
)

#photo4(
  "assets/board_extra_01.jpg",
  "assets/board_extra_02.jpg",
  "assets/board_extra_03.jpg",
  "assets/board_extra_04.jpg",
  [Một số chi tiết bo mạch và linh kiện hỗ trợ quan sát theo nhóm chức năng.]
)

== Ghi nhận hiện tượng theo mức độ chắc chắn

Một bài học quan trọng trong QC là không phải dữ kiện nào cũng có mức độ chắc chắn như nhau. Dữ kiện quan sát trực tiếp như "đèn không sáng", "quạt không quay", "có mùi khét", "đầu nối lỏng" thường chắc hơn suy đoán như "hỏng nguồn" hoặc "hỏng bo". Vì vậy, khi viết báo cáo hoặc ghi chú, em ưu tiên mô tả hiện tượng trước, sau đó mới nêu khả năng liên quan nếu có cơ sở.

#step_card(
  1,
  [Mô tả triệu chứng],
  [Ghi điều nhìn thấy hoặc nghe thấy được.],
  [Nêu trạng thái nguồn, màn hình, âm báo, quạt, bơm, nhiệt, tiếng ồn hoặc trạng thái app nếu có.],
  [Không dùng câu kết luận như "hỏng bo" khi chưa kiểm chứng.],
  [Người đọc hiểu đúng hiện tượng ban đầu.]
)

#v(0.10cm)

#step_card(
  2,
  [Gắn với điều kiện thử],
  [Làm rõ lỗi xuất hiện trong hoàn cảnh nào.],
  [Ghi khi mới bật nguồn, khi chạy tải, sau một khoảng thời gian, khi thay đổi chế độ hoặc khi thao tác trên app.],
  [Nếu bỏ điều kiện thử, hiện tượng dễ bị hiểu sai.],
  [Có cơ sở đánh giá khả năng lặp lại.]
)

#v(0.10cm)

#step_card(
  3,
  [Đánh dấu phần chưa chắc chắn],
  [Tách dữ kiện đã quan sát khỏi giả thuyết.],
  [Chỉ ghi "có thể liên quan đến nguồn/cảm biến/kết nối" khi có lý do, và cần người có chuyên môn kiểm chứng.],
  [Không biến giả thuyết thành kết luận cuối.],
  [Báo cáo giữ được tính trung thực.]
)

== Liên hệ QC với an toàn điện và độ tin cậy

Trong môi trường QC, yêu cầu an toàn không chỉ nhằm bảo vệ người kiểm tra mà còn giúp kết quả đánh giá đáng tin cậy. Nếu thiết bị chưa được đặt đúng điều kiện, dây nối chưa chắc, nguồn cấp không ổn định hoặc chưa kiểm tra dấu hiệu nước/nhiệt, việc chạy thử có thể tạo rủi ro và làm sai lệch kết quả. Vì vậy, quy trình quan sát cần đi từ điều kiện an toàn đến chức năng, rồi mới đến đánh giá ổn định.

Đối với sinh viên Điện tử - Viễn thông, phần này giúp em liên hệ giữa kiến thức mạch và công việc thực tế. Trên lớp, nguồn, cảm biến, công suất và vi điều khiển thường được học theo từng môn. Trong sản phẩm thật, các khối này nằm trong cùng một thiết bị, chịu ảnh hưởng của nhiệt, rung, bụi, nước, dây dẫn, thao tác người dùng và môi trường sử dụng. Vì vậy, độ tin cậy không thể chỉ nhìn từ sơ đồ mạch mà còn phải được kiểm tra trong điều kiện vận hành.

== Nhận xét kỹ thuật và kết luận chương

Nội dung QC giúp em hiểu rằng kiểm tra sản phẩm cần sự cẩn trọng và cách ghi nhận thống nhất. Một hiện tượng lỗi có thể đến từ nhiều cụm chức năng khác nhau, nên sinh viên không nên kết luận vội khi chưa đủ dữ kiện. Bài học quan trọng nhất là đọc sản phẩm theo hệ thống: từ ngoại quan, cấu trúc bên trong, khối nguồn, công suất, cảm biến đến phản hồi vận hành.

Một điểm em thấy hữu ích là QC không chỉ phục vụ phát hiện lỗi tức thời, mà còn tạo dữ kiện cho bảo hành và cải tiến sản phẩm. Nếu một hiện tượng được ghi nhận rõ điều kiện thử, ảnh minh chứng và phản hồi vận hành, bộ phận tiếp theo có thể hiểu nhanh hơn vấn đề cần kiểm tra. Ngược lại, nếu ghi nhận quá chung chung, việc khoanh vùng lỗi sẽ mất thời gian và dễ phụ thuộc vào kinh nghiệm cá nhân.

Qua chương này, em hình thành nền tảng để tiếp tục quan sát Phòng Bảo hành SP. Nếu QC giúp nhìn sản phẩm ở trạng thái cần đánh giá chất lượng, thì Bảo hành SP giúp nhìn sản phẩm khi đã phát sinh lỗi trong sử dụng thật. Hai nội dung này bổ sung cho nhau trong chuỗi đảm bảo chất lượng sản phẩm.

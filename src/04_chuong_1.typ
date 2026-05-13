#import "../config.typ": photo4, photo2, text_card, compact_flow, down_arrow

= Giới thiệu đơn vị thực tập

== Thông tin chung về đơn vị tiếp nhận

Đơn vị tiếp nhận thực tập là *Chi nhánh phía Nam - Công ty Cổ phần Đầu tư Thương mại Bách Tường Phát (BTP Holdings)*, mã số thuế *0109147321-001*, địa chỉ *Tầng 11, TCT 319 - Pico Plaza, 20 Cộng Hòa, Phường Bảy Hiền, TP.HCM*. Kỳ thực tập diễn ra từ *12/01/2026* đến *10/04/2026*, tổng thời lượng *400 giờ*. Người hướng dẫn trực tiếp là *ông Trần Văn Cát - Phó phòng Bảo hành SP*. Báo cáo bám theo mẫu báo cáo thực tập thực tế của Khoa Điện tử - Viễn thông @mau2022.

BTP Holdings hoạt động trong lĩnh vực điện gia dụng và một số sản phẩm chăm sóc gia đình, chăm sóc sức khỏe. Trong báo cáo này, phần giới thiệu doanh nghiệp chỉ được trình bày ở mức cần thiết để làm rõ bối cảnh kỹ thuật: sản phẩm thật, quy trình QC, bảo hành, kiểm thử sau sửa chữa và tiếp cận kết nối IoT. Các nội dung mang tính quảng bá hoặc số liệu kinh doanh không phục vụ trực tiếp cho kỳ thực tập được lược bỏ.

#photo4(
  "assets/office_reception.jpg",
  "assets/office_workspace.jpg",
  "assets/office_work_area.jpg",
  "assets/technical_meeting.jpg",
  [Không gian làm việc và hoạt động trao đổi kỹ thuật tại đơn vị thực tập.]
)

== Mô hình hoạt động và nhóm sản phẩm

Theo dữ liệu tham khảo được cung cấp, doanh nghiệp có hoạt động nghiên cứu, thiết kế, phối hợp sản xuất và phân phối tại thị trường Việt Nam @databtp2026. Các nhóm sản phẩm có liên quan đến báo cáo gồm bếp đôi từ, máy rửa chén, máy hút mùi, lò vi sóng, nồi cơm điện, nồi chiên không dầu và một số thiết bị chăm sóc sức khỏe thông minh. Danh mục mã hàng chỉ được dùng để đối chiếu tên nhóm sản phẩm, không đưa nguyên bảng vào báo cáo @mahh2025.

Từ góc nhìn Điện tử - Viễn thông, điểm đáng chú ý không nằm ở tên thương mại của sản phẩm, mà ở cấu trúc kỹ thuật bên trong: khối nguồn, khối điều khiển, mạch công suất, cảm biến, giao diện người dùng, cơ cấu chấp hành và trong một số dòng có thêm module kết nối. Đây là nền tảng để sinh viên hiểu vì sao QC và Bảo hành SP cần ghi nhận hiện tượng lỗi một cách có hệ thống.

== Các bộ phận liên quan đến nội dung thực tập

Trong vòng đời sản phẩm, R&D, Thiết kế, MCD / Merchandise, Kinh doanh, IT, QC và Bảo hành SP đều có vai trò riêng. Tuy nhiên, hai bộ phận gắn trực tiếp nhất với kỳ thực tập là *Phòng QC* và *Phòng Bảo hành SP*. QC tập trung vào kiểm tra, đánh giá tình trạng kỹ thuật và ghi nhận rủi ro chất lượng. Bảo hành SP tiếp cận sản phẩm phát sinh lỗi, chẩn đoán, sửa chữa và kiểm thử lại sau can thiệp.

#compact_flow(
  [Luồng phối hợp kỹ thuật ở mức sinh viên được quan sát.],
[
  #text_card([R&D / thiết kế], [Định hướng cấu trúc sản phẩm và phối hợp kỹ thuật với các bộ phận liên quan.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([QC], [Kiểm tra sản phẩm, đánh giá vận hành ban đầu và ghi nhận bất thường.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([Bảo hành SP], [Tiếp nhận lỗi, hỗ trợ chẩn đoán, xử lý và kiểm thử sau sửa chữa.])
]
)

== Vai trò của QC và Bảo hành SP

QC và Bảo hành SP khác nhau về thời điểm tiếp cận sản phẩm nhưng liên hệ chặt chẽ với nhau. QC giúp giảm rủi ro trước hoặc trong quá trình đánh giá sản phẩm; Bảo hành SP phản ánh những lỗi xuất hiện khi sản phẩm đi vào sử dụng thật. Khi dữ liệu lỗi được ghi nhận rõ, thông tin này có thể hỗ trợ QC, R&D và các bộ phận liên quan cải thiện chất lượng.

Trong thực tế, một hiện tượng lỗi không chỉ do linh kiện hỏng. Nó có thể liên quan đến cách bố trí dây, điều kiện tản nhiệt, độ kín nước, nguồn điện, thao tác người dùng hoặc điều kiện lắp đặt. Vì vậy, báo cáo ưu tiên cách nhìn sản phẩm theo hệ thống thay vì mô tả rời rạc từng linh kiện.

#photo2(
  "assets/warehouse_product.jpg",
  "assets/warranty_conference.jpg",
  [Bối cảnh sản phẩm, đào tạo và phối hợp liên quan đến hoạt động bảo hành.]
)

== Phạm vi thực tập và giới hạn trình bày

Phạm vi thực tập của em tập trung vào QC, Bảo hành SP và một phần kiểm thử kết nối thiết bị - ứng dụng ở mức quan sát, hỗ trợ. Báo cáo không mô tả em tự thiết kế sản phẩm, tự phát triển hệ thống IoT hoặc tự chịu trách nhiệm chẩn đoán toàn bộ thiết bị. Những nhận xét kỹ thuật được trình bày theo đúng vai trò thực tập sinh: quan sát, ghi nhận, đối chiếu, học cách phân tích hiện tượng và tôn trọng an toàn khi tiếp cận thiết bị điện.

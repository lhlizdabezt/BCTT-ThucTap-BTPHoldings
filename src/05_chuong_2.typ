#import "../config.typ": photo4, photo2, text_card, note_card, step_card, compact_flow, down_arrow

= Môi trường và nội dung thực tập

== Mục tiêu thực tập

Kỳ thực tập giúp em chuyển từ cách học trên bài thí nghiệm sang cách quan sát sản phẩm kỹ thuật trong môi trường doanh nghiệp. Mục tiêu chính là làm quen với sản phẩm điện gia dụng thật, đọc thiết bị theo khối chức năng và ghi nhận hiện tượng lỗi có cấu trúc. Với sinh viên Điện tử - Viễn thông, đây là bước quan trọng để liên hệ kiến thức mạch điện, điện tử công suất, cảm biến, hệ thống nhúng và kiểm thử với tình huống sử dụng thực tế.

#compact_flow(
  [Ba mục tiêu chính trong quá trình thực tập.],
[
  #text_card([Quan sát sản phẩm thật], [Tiếp cận thiết bị hoàn chỉnh, môi trường làm việc, quy trình QC và Bảo hành SP.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([Đọc theo khối chức năng], [Nhận diện nguồn, điều khiển, công suất, cảm biến, giao diện, dây nối và cơ cấu chấp hành.])
  #v(0.06cm)
  #down_arrow()
  #v(0.06cm)
  #text_card([Ghi nhận có kiểm chứng], [Mô tả hiện tượng, điều kiện thử, thao tác quan sát và kết quả trong giới hạn vai trò sinh viên.])
]
)

== Phạm vi công việc được tiếp cận

Trong thời gian thực tập, em chủ yếu quan sát và hỗ trợ tại Phòng QC và Phòng Bảo hành SP. Ở QC, nội dung tập trung vào kiểm tra sản phẩm, đánh giá tình trạng ban đầu, khảo sát cấu trúc bên trong và ghi nhận rủi ro vận hành. Ở Bảo hành SP, nội dung tập trung vào sản phẩm phát sinh lỗi, kiểm tra bo mạch, phân loại hiện tượng và kiểm thử lại sau sửa chữa. Ngoài ra, em có tiếp cận một phần kiểm thử kết nối app - thiết bị ở mức hỗ trợ, không mở rộng thành báo cáo phần mềm thuần túy.

== Nhật ký thực tập theo tuần

Phần nhật ký dưới đây tóm tắt tiến độ thực tập trong giai đoạn *12/01/2026 - 10/04/2026*. Nội dung được viết ngắn gọn theo tuần để thể hiện trọng tâm công việc, kết quả và bài học chính.

#set table(stroke: 0.45pt + rgb("#b7b7b7"), inset: 4pt)
#table(
  columns: (3.0cm, 5.1cm, 1fr),
  align: (center, left, left),
  table.header([*Tuần*], [*Trọng tâm*], [*Kết quả / bài học*]),
  [1\ 12/01-18/01], [Làm quen đơn vị, nội quy, QC và Bảo hành SP.], [Xác định phạm vi thực tập và cách ghi nhận đúng vai trò.],
  [2\ 19/01-25/01], [Tìm hiểu nhóm sản phẩm điện gia dụng.], [Nhận diện sản phẩm theo chức năng, không chỉ theo tên thương mại.],
  [3\ 26/01-01/02], [Quan sát kiểm tra ngoại quan và vận hành ban đầu.], [Biết mô tả triệu chứng theo điều kiện thử.],
  [4\ 02/02-08/02], [Khảo sát bo mạch, dây nối, nguồn, công suất, cảm biến.], [Bắt đầu khoanh vùng lỗi theo cụm chức năng.],
  [5\ 09/02-15/02], [Quan sát kiểm thử sản phẩm mới / sau can thiệp.], [Hiểu yêu cầu theo dõi ổn định, nhiệt, tải và phản hồi.],
  [6\ 16/02-22/02], [Tiếp cận quy trình tiếp nhận sản phẩm lỗi.], [Phân biệt triệu chứng, điều kiện phát sinh và nguyên nhân cần kiểm chứng.],
  [7\ 23/02-01/03], [Quan sát lỗi nguồn, bo mạch, dây nối, vận hành.], [Kết luận kỹ thuật phải dựa trên đo kiểm và chạy thử.],
  [8\ 02/03-08/03], [Theo dõi kiểm tra sau sửa chữa.], [Hiểu vai trò của kiểm thử trước khi bàn giao.],
  [9\ 09/03-15/03], [Liên hệ thông tin lỗi giữa Bảo hành SP và QC.], [Dữ liệu lỗi có cấu trúc giúp cải tiến chất lượng.],
  [10\ 16/03-22/03], [Quan sát kiểm thử kết nối app - thiết bị.], [Hiểu quan hệ giữa phần cứng, firmware, module kết nối và app.],
  [11\ 23/03-29/03], [Phân loại ảnh minh chứng kỹ thuật.], [Ưu tiên ảnh bo mạch, sản phẩm, thao tác và khu vực kiểm tra.],
  [12\ 30/03-05/04], [Hệ thống hóa nhận xét về nguồn, công suất, cảm biến, an toàn.], [Hoàn thiện nội dung QC, Bảo hành SP và IoT.],
  [13\ 06/04-10/04], [Rà soát báo cáo, form, caption, tài liệu tham khảo.], [Hoàn thiện bản cuối trung thực và đúng bố cục.],
)

#photo4(
  "assets/workshop_overview.jpg",
  "assets/workbench_qc.jpg",
  "assets/workbench_test_area.jpg",
  "assets/test_computer.jpg",
  [Khu vực làm việc kỹ thuật, bàn thao tác và bối cảnh ghi nhận trong quá trình thực tập.]
)

Nhìn theo tiến độ tuần, nội dung thực tập có sự dịch chuyển rõ: giai đoạn đầu thiên về làm quen môi trường, giai đoạn giữa tập trung vào QC và Bảo hành SP, giai đoạn cuối dùng để hệ thống hóa hình ảnh, ghi chú kỹ thuật và hoàn thiện báo cáo. Cách chia này giúp em tránh viết báo cáo theo kiểu liệt kê rời rạc, mà trình bày được quá trình học nghề: từ quan sát chung, nhận diện cụm chức năng, ghi nhận lỗi đến liên hệ với kiểm thử sau sửa chữa.

Trong quá trình ghi nhật ký, em không ghi quá chi tiết các thông tin nội bộ hoặc lỗi riêng của từng sản phẩm. Phần được giữ lại trong báo cáo là các nhóm hoạt động có giá trị học tập: cách mô tả hiện tượng, cách phân loại dữ kiện, cách chọn ảnh minh chứng và cách rút ra bài học kỹ thuật. Điều này phù hợp với vai trò thực tập sinh và giúp báo cáo giữ được tính trung thực.



== Diễn giải tiến độ theo giai đoạn thực tập

Từ nhật ký theo tuần, em có thể chia quá trình thực tập thành ba giai đoạn chính. Cách chia này giúp báo cáo không chỉ liệt kê công việc, mà còn cho thấy sự thay đổi trong cách quan sát của sinh viên: ban đầu nhìn môi trường và sản phẩm ở mức tổng quát, sau đó đọc sản phẩm theo khối chức năng, cuối cùng biết liên hệ QC, Bảo hành SP và IoT trong một quy trình thống nhất.

#text_card(
  [Giai đoạn 1 - Làm quen môi trường và sản phẩm],
  [Ở các tuần đầu, nội dung trọng tâm là hiểu cơ cấu phòng ban, nội quy làm việc, cách giao tiếp trong môi trường doanh nghiệp và nhóm sản phẩm được tiếp cận. Em ghi nhận rằng một sản phẩm điện gia dụng không chỉ gồm phần cơ khí bên ngoài, mà còn có bo điều khiển, nguồn, cảm biến, dây nối, cơ cấu chấp hành và đôi khi có thêm module kết nối. Giai đoạn này giúp em đặt nền tảng để quan sát đúng hơn ở các tuần sau.]
)

#v(0.10cm)

#text_card(
  [Giai đoạn 2 - Quan sát kỹ thuật tại QC và Bảo hành SP],
  [Ở giai đoạn giữa kỳ, em tập trung vào thao tác quan sát sản phẩm, khu vực kiểm tra, bo mạch và quy trình ghi nhận hiện tượng. Điểm quan trọng là học cách tách triệu chứng khỏi nguyên nhân: một sản phẩm không chạy có thể liên quan đến nguồn, điều khiển, công suất, dây nối, cảm biến hoặc điều kiện vận hành. Vì vậy, việc ghi nhận phải theo thứ tự và không kết luận khi chưa có dữ kiện.]
)

#v(0.10cm)

#text_card(
  [Giai đoạn 3 - Hệ thống hóa, đối chiếu và hoàn thiện báo cáo],
  [Ở giai đoạn cuối, em rà soát lại hình ảnh, ghi chú và nội dung đã quan sát để chọn những minh chứng có giá trị kỹ thuật. Các ảnh đưa vào báo cáo được ưu tiên theo tiêu chí: rõ sản phẩm, rõ bo mạch, rõ khu vực thao tác hoặc hỗ trợ giải thích quy trình QC/Bảo hành. Phần này cũng giúp em nhận ra báo cáo kỹ thuật cần trung thực về phạm vi tham gia, không viết quá mức vai trò thực tập sinh.]
)

Ba giai đoạn trên có tính kế thừa. Nếu không có giai đoạn làm quen, em khó hiểu cách gọi tên sản phẩm và phòng ban; nếu không có giai đoạn quan sát kỹ thuật, báo cáo sẽ thiếu minh chứng thực tế; nếu không có giai đoạn hệ thống hóa, nội dung dễ bị rời rạc và biến thành album ảnh. Vì vậy, mục nhật ký thực tập được giữ trong Chương 2 để thầy hướng dẫn có thể thấy tiến độ làm việc xuyên suốt kỳ thực tập.

#photo2(
  "assets/workbench_qc.jpg",
  "assets/checklist_record.jpg",
  [Bàn thao tác và ghi chú kiểm tra giúp liên kết giữa quan sát thực tế với nội dung báo cáo.]
)

== Cách chuyển ghi chú thực tập thành nội dung báo cáo

Trong quá trình viết, em không đưa toàn bộ ghi chú thô vào báo cáo. Các ghi chú ban đầu thường ngắn, rời rạc và phụ thuộc vào bối cảnh lúc quan sát. Khi biên tập lại, em chuyển chúng thành các nhóm nội dung có thể kiểm chứng: bối cảnh quan sát, hiện tượng, khối chức năng liên quan, giới hạn thao tác và bài học kỹ thuật. Cách làm này giúp báo cáo có tính học thuật hơn nhưng vẫn giữ được cảm giác thực tế.

Một ví dụ là nhóm ghi chú về bo mạch. Nếu chỉ viết "xem bo mạch", nội dung gần như không có giá trị. Khi viết lại, cần nêu rõ em quan sát bo ở khía cạnh nào: vùng nguồn, vùng điều khiển, đầu nối ra tải, đầu nối cảm biến, dấu hiệu nhiệt, dây nối và tình trạng lắp ráp. Tương tự, với máy rửa chén hoặc bếp từ, cần mô tả thiết bị như một hệ thống có nhiều cụm phối hợp, thay vì gọi tên sản phẩm rồi kết thúc.

Cách chuyển đổi này cũng giúp giới hạn thông tin nhạy cảm. Báo cáo không cần mô tả mã lỗi nội bộ, dữ liệu khách hàng hay thông tin chi tiết của từng trường hợp sửa chữa. Thay vào đó, báo cáo giữ lại bài học kỹ thuật chung: quan sát phải có điều kiện, kết luận phải có kiểm chứng và hình ảnh phải phục vụ nội dung.

== Phương pháp quan sát và ghi nhận

Khi tiếp cận sản phẩm thật, em ưu tiên an toàn và không tự ý thao tác vượt phạm vi hướng dẫn. Một thiết bị điện gia dụng có thể có điện áp lưới, tụ điện còn tích điện, linh kiện công suất tỏa nhiệt, cạnh kim loại sắc hoặc dây nối dễ hỏng. Vì vậy, quan sát kỹ thuật cần có mục tiêu rõ, biết dữ kiện nào có thể ghi nhận và thao tác nào cần người có kinh nghiệm thực hiện.

#step_card(
  1,
  [Quan sát ngoại quan],
  [Xác định tình trạng ban đầu.],
  [Kiểm tra vỏ, dây, tem, dấu hiệu nước, nhiệt, va đập, bụi và cách lắp đặt.],
  [Ngoại quan chỉ giúp định hướng, chưa đủ kết luận nguyên nhân.],
  [Có dữ kiện nền để trao đổi với người hướng dẫn.],
)

#v(0.10cm)

#step_card(
  2,
  [Đọc cấu trúc bên trong],
  [Hiểu cách các cụm chức năng được bố trí.],
  [Nhận diện bo nguồn, bo điều khiển, công suất, cảm biến, dây nối, bơm, quạt, van hoặc giao diện.],
  [Không tháo sâu nếu chưa được hướng dẫn.],
  [Hình thành cách nhìn thiết bị theo hệ thống.],
)

#v(0.10cm)

#step_card(
  3,
  [Ghi nhận phản hồi vận hành],
  [Liên hệ hiện tượng với cụm chức năng có thể liên quan.],
  [Quan sát hiển thị, âm báo, nút bấm, chu kỳ chạy, nhiệt, tiếng ồn, rò nước hoặc trạng thái kết nối.],
  [Thiết bị chạy lại tức thời chưa chắc đã ổn định.],
  [Có cơ sở cho bước kiểm tra sau sửa chữa.],
)

== Môi trường phối hợp và nguyên tắc an toàn

Môi trường thực tập cho thấy QC, Bảo hành SP, R&D, IT và các bộ phận vận hành cần trao đổi thông tin để xử lý sản phẩm hiệu quả. Với vai trò sinh viên, em tập trung học cách ghi nhận hiện tượng rõ ràng, không nhầm triệu chứng với nguyên nhân và không ghi dữ liệu vượt quá phạm vi cần thiết.

#photo2(
  "assets/checklist_record.jpg",
  "assets/lockout_tag.jpg",
  [Biểu mẫu ghi nhận và nhắc nhở an toàn giúp quá trình kiểm tra có cơ sở bàn giao.]
)

#note_card(
  [Nguyên tắc chung],
  [Không tự thao tác trên vùng điện áp lưới, khối nguồn hoặc khối công suất nếu chưa được hướng dẫn. Khi chưa đủ dữ kiện, báo cáo chỉ ghi nhận hiện tượng và điều kiện quan sát, không kết luận nguyên nhân thay cho kỹ thuật viên.]
)


Khi chọn ảnh đưa vào báo cáo, em ưu tiên ảnh có khả năng giải thích công việc hơn là ảnh đẹp. Một ảnh bo mạch rõ, một ảnh khu vực thao tác, hoặc một ảnh thể hiện cấu trúc bên trong thiết bị thường có giá trị hơn nhiều ảnh họp hoặc ảnh sự kiện. Vì vậy, các ảnh trong chương chính được đặt gần nội dung liên quan để người đọc hiểu ngay ảnh đang minh họa cho phần QC, Bảo hành SP hay kiểm thử kết nối.

== Định hướng các chương tiếp theo

Các chương sau trình bày lần lượt nội dung thực tập tại Phòng QC, Phòng Bảo hành SP, phần tiếp cận IoT, kết quả đạt được và kết luận. Trọng tâm chung là sản phẩm thật, bo mạch thật, lỗi thực tế, kiểm thử sau sửa chữa và bài học kỹ thuật rút ra từ môi trường doanh nghiệp.

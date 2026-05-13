#import "../config.typ": meta

#let acknowledgement_page() = [
  #{
    show heading: none
    heading(numbering: none)[Lời cảm ơn]
  }
  #align(center)[#text(16pt, weight: "bold")[LỜI CẢM ƠN]]
  #v(0.20cm)

  Em xin trân trọng cảm ơn Khoa Điện tử - Viễn thông, Trường Đại học Khoa học Tự nhiên - ĐHQG TP.HCM đã tổ chức học phần Thực tập thực tế và tạo điều kiện để sinh viên tiếp cận môi trường doanh nghiệp đúng với định hướng đào tạo của ngành Kỹ thuật Điện tử - Viễn thông.

  Em xin chân thành cảm ơn Chi nhánh phía Nam - Công ty Cổ phần Đầu tư Thương mại Bách Tường Phát đã tiếp nhận và hỗ trợ em trong suốt thời gian thực tập. Quá trình được quan sát sản phẩm thật, bo mạch thật, hiện tượng lỗi thật và cách phối hợp giữa QC, Bảo hành SP, kỹ thuật, IT cùng các bộ phận liên quan đã giúp em hiểu rõ hơn khoảng cách giữa kiến thức trên lớp với yêu cầu công việc thực tế.

  Em xin gửi lời cảm ơn sâu sắc đến ông Trần Văn Cát - Phó phòng Bảo hành SP, người hướng dẫn trực tiếp của em tại đơn vị. Sự hướng dẫn cẩn trọng của ông giúp em tiếp cận đúng cách với quy trình chẩn đoán, kiểm tra bo mạch, ghi nhận hiện tượng, kiểm thử sau sửa chữa và thái độ cần có trong công việc kỹ thuật.

  Em cũng xin cảm ơn các anh chị thuộc Phòng QC, Phòng Bảo hành SP và các bộ phận hỗ trợ đã tạo điều kiện để em quan sát, đặt câu hỏi và hoàn thiện góc nhìn liên phòng ban đối với sản phẩm điện gia dụng. Do thời gian thực tập có giới hạn, báo cáo khó tránh khỏi thiếu sót; em kính mong nhận được góp ý từ quý Thầy/Cô và đơn vị thực tập.

  #v(0.45cm)
  #align(right)[
    #block(width: 6.6cm)[
      #align(center)[#meta.city, #meta.month_year]
      #v(0.18cm)
      #align(center)[Sinh viên thực hiện]
      #v(1.45cm)
      #align(center)[#text(weight: "bold")[#meta.student_name]]
    ]
  ]

  #pagebreak()
]

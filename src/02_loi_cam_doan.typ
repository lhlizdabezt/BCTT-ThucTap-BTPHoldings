#import "../config.typ": meta

#let commitment_page() = [
  #{
    show heading: none
    heading(numbering: none)[Lời cam đoan]
  }
  #align(center)[#text(16pt, weight: "bold")[LỜI CAM ĐOAN]]
  #v(0.20cm)

  Em xin cam đoan báo cáo thực tập thực tế này được thực hiện dựa trên quá trình thực tập của bản thân tại Chi nhánh phía Nam - Công ty Cổ phần Đầu tư Thương mại Bách Tường Phát trong thời gian từ ngày 12/01/2026 đến ngày 10/04/2026.

  Các nội dung mô tả về môi trường thực tập, công việc quan sát, hình ảnh minh họa, nhận xét kỹ thuật và kết quả đạt được được tổng hợp từ trải nghiệm thực tế, tư liệu do đơn vị cho phép sử dụng, tài liệu học tập và các nguồn tham khảo có ghi nhận trong phần tài liệu tham khảo. Báo cáo không sao chép nguyên văn từ tài liệu khác và không cố ý trình bày sai lệch vai trò thực tập sinh.

  Những phần phân tích kỹ thuật trong báo cáo chỉ được diễn giải ở mức phù hợp với phạm vi quan sát, hỗ trợ và học tập của sinh viên. Em không tự nhận đã thiết kế, phát triển hoặc vận hành trọn vẹn các hệ thống kỹ thuật của doanh nghiệp nếu thực tế chỉ dừng ở mức tiếp cận, hỗ trợ hoặc kiểm thử theo hướng dẫn.

  Em xin chịu trách nhiệm về tính trung thực của nội dung trình bày trong báo cáo.

  #v(0.55cm)
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

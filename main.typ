#import "config.typ": meta, body_leading, page_footer, centered_title, title_rule
#import "src/00_trang_bia_va_bia_phu.typ": cover_pages
#import "src/01_loi_cam_on.typ": acknowledgement_page
#import "src/02_loi_cam_doan.typ": commitment_page
#import "src/03_danh_muc_viet_tat.typ": abbreviations_page

#set document(title: meta.report_type, author: (meta.student_name,))
#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 3cm, right: 2cm),
)
#set text(font: ("Times New Roman", "Liberation Serif", "Noto Serif"), size: 13pt, lang: "vi", top-edge: 0.8em, bottom-edge: -0.2em)
#set par(justify: true, leading: body_leading, first-line-indent: (amount: 0.7cm, all: true))
#set heading(numbering: "1.1.1.")
#set figure(numbering: "1.1", supplement: [Hình])

#show heading.where(level: 1): it => [
  #pagebreak(weak: true)
  #v(0.05cm)
  #title_rule(rule_width: 3.5cm)
  #v(0.10cm)
  #align(center)[#text(16pt, weight: "bold")[CHƯƠNG #counter(heading).get().first()]]
  #v(0.10cm)
  #align(center)[#text(15pt, weight: "bold")[#upper(it.body)]]
  #v(0.10cm)
  #title_rule(rule_width: 7cm)
  #v(0.16cm)
]

#cover_pages()

#set page(numbering: "i", footer: page_footer)
#counter(page).update(1)

#acknowledgement_page()
#commitment_page()

#{
  show heading: none
  heading(numbering: none)[Mục lục]
}
#centered_title([MỤC LỤC])
#outline(title: none, depth: 3)
#pagebreak()

#abbreviations_page()

#{
  show heading: none
  heading(numbering: none)[Danh sách hình]
}
#centered_title([DANH SÁCH HÌNH])
#outline(title: none, target: figure.where(kind: image))
#pagebreak()

#{
  show heading: none
  heading(numbering: none)[Danh sách bảng]
}
#centered_title([DANH SÁCH BẢNG])
Báo cáo ưu tiên dùng đoạn văn, card kỹ thuật, sơ đồ khối và photo grid thay cho bảng dài. Bản cuối chỉ dùng một bảng ngắn cho nhật ký thực tập; phần này được giữ theo đúng thứ tự tiền mục của mẫu báo cáo.
#pagebreak()

#set page(numbering: "1", footer: page_footer)
#counter(page).update(1)

#include "src/04_chuong_1.typ"
#include "src/05_chuong_2.typ"
#include "src/06_chuong_3.typ"
#include "src/07_chuong_4.typ"
#include "src/08_chuong_5.typ"
#include "src/09_chuong_6.typ"
#include "src/10_chuong_7.typ"

#pagebreak()
#{
  show heading: none
  heading(numbering: none)[Tài liệu tham khảo]
}
#align(center)[#text(16pt, weight: "bold")[TÀI LIỆU THAM KHẢO]]
#v(0.12cm)
#title_rule(rule_width: 5cm)
#v(0.22cm)
#bibliography("tai_lieu_tham_khao.bib", style: "ieee", title: none, full: true)

#pagebreak()
#include "src/11_phu_luc.typ"

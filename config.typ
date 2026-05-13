#let meta = (
  university_top: "ĐẠI HỌC QUỐC GIA THÀNH PHỐ HỒ CHÍ MINH",
  university_name: "TRƯỜNG ĐẠI HỌC KHOA HỌC TỰ NHIÊN",
  faculty_name: "KHOA ĐIỆN TỬ - VIỄN THÔNG",
  department_name: "BỘ MÔN MÁY TÍNH - HỆ THỐNG NHÚNG",
  report_type: "BÁO CÁO THỰC TẬP THỰC TẾ",
  school_year: "Năm học 2025 - 2026",

  student_name: "Lương Hải Long",
  student_id: "22207056",
  cohort: "Khóa 2022",
  major_name: "Kỹ thuật Điện tử - Viễn thông",
  training_program: "Hệ Chất lượng cao",
  student_email: "22207056@student.hcmus.edu.vn",

  company_name: "CHI NHÁNH PHÍA NAM - CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG MẠI BÁCH TƯỜNG PHÁT",
  company_short: "BTP Holdings",
  company_code: "0109147321-001",
  company_address: "Tầng 11, TCT 319 - Pico Plaza, 20 Cộng Hòa, Phường Bảy Hiền, TP.HCM",
  company_website: "https://btpholdings.com.vn/",
  internship_period: "12/01/2026 - 10/04/2026",
  internship_hours: "400 giờ",

  supervisor_name: "Ông Trần Văn Cát",
  supervisor_position: "Phó phòng Bảo hành SP",
  supervisor_phone: "0936 022 201",
  supervisor_email: "cat.tv@btpholdings.vn",

  city: "TP. Hồ Chí Minh",
  month_year: "Tháng 4 năm 2026",
)

#let body_leading = 0.58em
#let page_footer = context align(right)[#counter(page).display()]

#let title_rule(rule_width: 4.4cm, thickness: 0.7pt) = [
  #align(center)[#rect(width: rule_width, height: thickness, fill: black)]
]

#let centered_title(text_value) = [
  #align(center)[#text(16pt, weight: 700)[#text_value]]
  #v(0.12cm)
  #title_rule()
  #v(0.20cm)
]

#let field_row(label, value, label_width: 4.8cm, gap_width: 0.22cm) = grid(
  columns: (label_width, gap_width, 1fr),
  column-gutter: 0cm,
  row-gutter: 0cm,
  [#label],
  [ : ],
  [#value],
)

#let text_card(title, body) = block(
  width: 100%,
  inset: 8pt,
  stroke: (paint: rgb("#8c929e"), thickness: 0.65pt),
  radius: 5pt,
  fill: rgb("#f6f7f9"),
)[
  #text(weight: 700)[#title]
  #v(0.06cm)
  #body
]

#let note_card(title, body) = block(
  width: 100%,
  inset: 7pt,
  stroke: (paint: rgb("#a2a2a2"), thickness: 0.55pt),
  radius: 4pt,
)[
  #text(weight: 700)[#title]
  #v(0.04cm)
  #body
]

#let textfig(caption_text, body, width: 94%) = figure(
  block(width: width, inset: 0pt)[
    #align(center)[#body]
  ],
  kind: image,
  caption: [#caption_text],
)

#let fig(path, caption_text, width: 78%) = textfig(caption_text, image(path, width: width))

#let photo2(path_a, path_b, caption_text) = textfig(
  caption_text,
  grid(
    columns: (1fr, 1fr),
    column-gutter: 0.20cm,
    row-gutter: 0.20cm,
    image(path_a, width: 100%),
    image(path_b, width: 100%),
  ),
)

#let photo4(path_a, path_b, path_c, path_d, caption_text) = textfig(
  caption_text,
  grid(
    columns: (1fr, 1fr),
    column-gutter: 0.20cm,
    row-gutter: 0.20cm,
    image(path_a, width: 100%),
    image(path_b, width: 100%),
    image(path_c, width: 100%),
    image(path_d, width: 100%),
  ),
)

#let step_card(step, title, goal, technical, note, outcome) = text_card(
  [Bước #step. #title],
[
  - *Mục tiêu:* #goal
  - *Thao tác kỹ thuật chính:* #technical
  - *Ghi nhận / quan sát:* #note
  - *Kết quả hoặc ý nghĩa kỹ thuật:* #outcome
],
)

#let down_arrow() = align(center)[#text(12pt, weight: 700)[↓]]
#let right_arrow() = align(center)[#text(12pt, weight: 700)[→]]

#let compact_flow(caption_text, items) = textfig(
  caption_text,
  block(width: 94%)[#items],
)

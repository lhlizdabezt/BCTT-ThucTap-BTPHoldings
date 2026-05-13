#import "../config.typ": meta, field_row

#let university_header() = align(center)[
  #stack(
    dir: ttb,
    spacing: 0.13cm,
    text(12pt, weight: "bold")[#meta.university_top],
    text(12pt, weight: "bold")[#meta.university_name],
    text(12pt, weight: "bold")[#meta.faculty_name],
    text(12pt, weight: "bold")[#meta.department_name],
  )
]

#let cover_frame(body) = [
  #rect(
    stroke: 4pt,
    inset: 7pt,
    width: 100%,
    height: 100%,
    [
      #rect(
        stroke: 1pt,
        inset: 12pt,
        width: 100%,
        height: 100%,
        [
          #pad(left: 0.85cm, right: 0.85cm, top: 0.85cm, bottom: 0.85cm)[
            #block(width: 100%, height: 100%)[#body]
          ]
        ],
      )
    ],
  )
]

#let cover_label_value(label, value) = field_row(
  [#text(12pt)[#label]],
  [#text(12pt)[#value]],
  label_width: 4.35cm,
)

#let inner_label_value(label, value, label_width: 4.95cm) = field_row(
  [#text(12pt)[#label]],
  [#pad(left: 0.08cm)[#value]],
  label_width: label_width,
)

#let outer_cover() = [
  #set page(numbering: none, footer: none)
  #set par(justify: false, first-line-indent: 0cm, leading: 0.48em)

  #cover_frame[
    #university_header()
    #v(1.18cm)
    #align(center)[#text(16pt, weight: "bold")[#meta.report_type]]
    #v(0.18cm)
    #align(center)[#text(12pt)[#meta.school_year]]

    #v(1.25cm)
    #align(center)[
      #block(width: 12.2cm)[
        #cover_label_value([Họ và tên sinh viên], [#meta.student_name])
        #v(0.16cm)
        #cover_label_value([Mã số sinh viên], [#meta.student_id])
        #v(0.16cm)
        #cover_label_value([Khóa], [#meta.cohort])
        #v(0.16cm)
        #cover_label_value([Ngành học], [#meta.major_name\ #meta.training_program])
      ]
    ]

    #v(1fr)
    #align(center)[#text(12pt, weight: "bold")[#meta.city, #meta.month_year]]
  ]
  #pagebreak()
]

#let inner_cover() = [
  #set page(numbering: none, footer: none)
  #set par(justify: false, first-line-indent: 0cm, leading: 0.48em)

  #cover_frame[
    #university_header()
    #v(0.82cm)
    #align(center)[#text(16pt, weight: "bold")[#meta.report_type]]
    #v(0.16cm)
    #align(center)[#text(12pt)[#meta.school_year]]

    #v(0.56cm)
    #align(center)[
      #block(width: 13.3cm)[
        #inner_label_value([Họ và tên sinh viên], [#meta.student_name])
        #v(0.10cm)
        #inner_label_value([Mã số sinh viên], [#meta.student_id])
        #v(0.10cm)
        #inner_label_value([Email sinh viên], [#meta.student_email])
        #v(0.10cm)
        #inner_label_value([Nơi thực tập], [#text(11.2pt)[CHI NHÁNH PHÍA NAM\ CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG MẠI\ BÁCH TƯỜNG PHÁT]])
        #v(0.10cm)
        #inner_label_value([Mã số thuế], [#meta.company_code])
        #v(0.10cm)
        #inner_label_value([Địa chỉ], [#meta.company_address])
        #v(0.10cm)
        #inner_label_value([Website], [#meta.company_website])
        #v(0.10cm)
        #inner_label_value([Thời gian thực tập], [Từ ngày 12/01/2026 đến ngày 10/04/2026])
        #v(0.10cm)
        #inner_label_value([Tổng thời lượng], [#meta.internship_hours])
        #v(0.10cm)
        #inner_label_value([Người hướng dẫn trực tiếp], [#meta.supervisor_name])
        #v(0.10cm)
        #inner_label_value([Chức vụ], [#meta.supervisor_position])
        #v(0.10cm)
        #inner_label_value([Điện thoại], [#meta.supervisor_phone])
        #v(0.10cm)
        #inner_label_value([Email], [#meta.supervisor_email])
      ]
    ]

    #v(0.36cm)
    #align(center)[#text(12pt, weight: "bold")[#meta.city, #meta.month_year]]
  ]
  #pagebreak()
]

#let cover_pages() = [
  #outer_cover()
  #inner_cover()
]

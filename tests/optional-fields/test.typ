#import "../../src/lib.typ": *

// An omitted ORCID or contact field must not require an external package.
#show: resume.with(author: "Minimal Resume")

== Education

#edu(
  institution: "Example University",
  degrees: (
    (dates: "2022–2024", degree: "M.S. Computer Science", body: [- Thesis]),
    (dates: "2018–2022", degree: "B.S. Mathematics"),
  ),
)

== Projects

#project(name: "Name only")

#project(name: "URL only", url: "example.org")

#project(name: "Dates only", dates: "2024")

#project(name: "URL and dates", url: "example.org", dates: "2024")

#certificates(name: "Certificate", issuer: "Example Institute")

#assert.eq(dates-helper(end-date: "2024"), "2024")

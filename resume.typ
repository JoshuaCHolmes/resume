// Joshua Holmes - Resume
// Typst source - compile with: typst compile resume.typ

#set document(title: "Joshua Holmes - Resume", author: "Joshua Holmes")
#set page(margin: (x: 0.5in, y: 0.4in))
#set text(font: "New Computer Modern", size: 9.5pt)
#set par(justify: true)

// Disable default heading numbering
#set heading(numbering: none)

// Colors
#let accent = rgb("#2b5797")

// Helper functions
#let section(title) = {
  v(4pt)
  text(weight: "bold", fill: accent, size: 10pt)[#upper(title)]
  v(-3pt)
  line(length: 100%, stroke: 0.5pt + accent)
  v(1pt)
}

#let entry(title, location, date, details) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold")[#title], text(style: "italic")[#date]
  )
  if location != none {
    text(style: "italic")[#location]
  }
  if details != none {
    v(1pt)
    details
  }
  v(2pt)
}

#let project(name, tech, url, details) = {
  grid(
    columns: (1fr, auto),
    [*#name* #text(fill: gray)[| #tech]], 
    if url != none { link(url)[#text(fill: accent, size: 8.5pt)[GitHub]] }
  )
  details
  v(2pt)
}

// Header
#align(center)[
  #text(size: 18pt, weight: "bold")[Joshua Holmes]
  #v(-6pt)
  #text(size: 9.5pt)[
    #link("mailto:joshuaholmestx@gmail.com")[joshuaholmestx\@gmail.com] |
    (832) 928-7671 |
    #link("https://linkedin.com/in/joshua-c-holmes")[linkedin.com/in/joshua-c-holmes] |
    #link("https://github.com/JoshuaCHolmes")[github.com/JoshuaCHolmes]
  ]
]

// Education
#section("Education")

#entry(
  "Texas A&M University",
  "Bachelor of Science in Computer Science",
  "Aug 2024 – May 2028",
  [
    *Major GPA: 4.0* #h(1fr) College Station, TX \
    *Coursework:* Data Structures & Algorithms, Discrete Math, Programming Languages, Computer Architecture
  ]
)

// Experience
#section("Experience")

#entry(
  "AI Training Specialist",
  [Outlier AI (Scale AI) — Remote],
  "2025 – Present",
  list(
    [Evaluated and ranked AI-generated code for correctness, efficiency, and prompt adherence],
    [Authored coding problems and test cases for large language model training pipelines],
    [Developed prompt evaluation criteria for human review and model self-reflection],
    [Provided correctional training data by documenting errors and explaining proper implementation patterns],
  )
)

// Projects
#section("Projects")

#project(
  "Live Earth Wallpaper",
  "Rust, Win32 API",
  "https://github.com/JoshuaCHolmes/live-earth-wallpaper",
  list(
    [Native Windows app displaying real-time geostationary satellite imagery as desktop wallpaper],
    [Renders 25,800-star field from HYG catalog; implements orbital mechanics (JPL elements, Meeus lunar theory) for accurate Sun/Moon/planet positioning from satellite viewpoint],
    [Multi-monitor support, high-DPI aware, automatic failover with offline caching],
  )
)

#project(
  "NixOS Easy Install",
  "Rust, egui, Nix",
  "https://github.com/JoshuaCHolmes/nixos-easy-install",
  list(
    [Windows GUI installer enabling NixOS dual-boot via loopback disk images — no partition changes],
    [Secure Boot support via signed shim/GRUB; auto-generates hardware-optimized NixOS configs],
  )
)

#project(
  "Neural Evolution Simulator",
  "GDScript, Godot",
  none,
  list(
    [Organisms with neural network brains evolve via genetic algorithm and natural selection],
    [Feedforward networks with configurable architecture; mutations on weights/biases drive evolution],
  )
)

#project(
  "Wireframe Asteroids",
  [C\#, MonoGame],
  none,
  list(
    [Fully procedural arcade game — all graphics, audio, and UI generated mathematically with zero external assets],
    [3D wireframe models with rigid body rotation projected to 2D; procedural world generation and particle effects],
  )
)

// Organizations
#section("Leadership & Organizations")

#entry(
  "FLiNT — Texas A&M University",
  none,
  "2024 – Present",
  list(
    [*Staff Organizer (2025–26):* Coordinate build teams and engineering competition events],
    [*Autopilot (2025–26):* Led development of self-driving single-passenger vehicle — *1st Place, FLiNT Shark Tank 2026*],
    [*Flockheed Martin (2024–25):* Built medical resupply drone — *1st Place, FLiNT Shark Tank 2025*],
  )
)

#entry(
  "VEX Robotics — Bridgeland High School",
  none,
  "2020 – 2024",
  list(
    [*Lead Programmer:* Autonomous and driver control systems; aided mechanical design — *World Championship (2024)*],
  )
)

// Skills & Certifications
#section("Skills & Certifications")

*Languages:* Rust, Python, C/C++, C\#, Java, Haskell, GDScript, Nix, JavaScript, SQL \
*Tools & Platforms:* Git, Linux/NixOS, Windows API, Godot, egui \
*Concepts:* Neural Networks, Genetic Algorithms, Systems Programming, RLHF, Embedded Systems

*Certifications:*
#list(
  [AI Professional Skills — OpenAI, 2025 #h(1fr) #text(fill: gray, size: 8pt)[ID: 168754974]],
  [Data Querying — Intel, 2025 #h(1fr) #text(fill: gray, size: 8pt)[ID: 163462103]],
)


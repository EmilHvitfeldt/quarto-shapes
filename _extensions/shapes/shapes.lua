-- shapes.lua

local shapes = {
  circle        = '<circle cx="50" cy="50" r="47" class="shape-path"/>',
  square        = '<rect x="2" y="2" width="96" height="96" class="shape-path"/>',
  rectangle     = '<rect x="2" y="15" width="96" height="70" class="shape-path"/>',
  triangle      = '<polygon points="50,2 98,98 2,98" class="shape-path"/>',
  diamond       = '<polygon points="50,2 98,50 50,98 2,50" class="shape-path"/>',
  hexagon       = '<polygon points="25,2 75,2 98,50 75,98 25,98 2,50" class="shape-path"/>',
  pentagon      = '<polygon points="50,2 98,35 80,95 20,95 2,35" class="shape-path"/>',
  octagon       = '<polygon points="29,2 71,2 98,29 98,71 71,98 29,98 2,71 2,29" class="shape-path"/>',
  oval          = '<ellipse cx="50" cy="50" rx="48" ry="30" class="shape-path"/>',
  parallelogram = '<polygon points="20,2 98,2 80,98 2,98" class="shape-path"/>',
  trapezoid     = '<polygon points="20,2 80,2 98,98 2,98" class="shape-path"/>',
  star          = '<polygon points="50,2 61,35 96,35 68,56 78,89 50,69 22,89 32,56 4,35 39,35" class="shape-path"/>',
  ["star-4"]    = '<polygon points="50,2 64,36 98,50 64,64 50,98 36,64 2,50 36,36" class="shape-path"/>',
  ["star-6"]    = '<polygon points="50,2 61,31 92,26 72,50 92,74 61,69 50,98 39,69 8,74 28,50 8,26 39,31" class="shape-path"/>',
  ["star-8"]    = '<polygon points="50,2 58,32 84,16 68,42 98,50 68,58 84,84 58,68 50,98 42,68 16,84 32,58 2,50 32,42 16,16 42,32" class="shape-path"/>',
  sun           = '<polygon points="50,2 61,24 84,16 76,39 98,50 76,61 84,84 61,76 50,98 39,76 16,84 24,61 2,50 24,39 16,16 39,24" class="shape-path"/>',
  moon          = '<path d="M50,5 C20,5 5,25 5,50 C5,75 20,95 50,95 C35,80 28,66 28,50 C28,34 35,20 50,5 Z" class="shape-path"/>',
  lightning     = '<polygon points="60,2 22,52 46,52 40,98 78,48 54,48" class="shape-path"/>',
  shield        = '<path d="M10,10 L90,10 L90,55 C90,78 72,92 50,98 C28,92 10,78 10,55 Z" class="shape-path"/>',
  teardrop      = '<path d="M50,95 C28,78 8,62 8,44 C8,22 27,5 50,5 C73,5 92,22 92,44 C92,62 72,78 50,95 Z" class="shape-path"/>',
  semicircle    = '<path d="M3,50 A47,47 0 0,1 97,50 Z" class="shape-path"/>',
  donut         = '<path fill-rule="evenodd" d="M50,3 A47,47 0 1,1 50,97 A47,47 0 1,1 50,3 M50,22 A28,28 0 1,0 50,78 A28,28 0 1,0 50,22" class="shape-path"/>',
  ["rounded-square"] = '<rect x="5" y="5" width="90" height="90" rx="15" ry="15" class="shape-path"/>',
  ["speech-bubble"]  = '<path d="M5,5 L95,5 L95,68 L62,68 L50,88 L38,68 L5,68 Z" class="shape-path"/>',
  heart         = '<path d="M50,85 C30,70 5,60 5,40 C5,20 20,10 35,15 C42,17 48,22 50,28 C52,22 58,17 65,15 C80,10 95,20 95,40 C95,60 70,70 50,85 Z" class="shape-path"/>',
  cloud         = '<path d="M28,65 C15,65 5,56 5,45 C5,35 12,27 22,26 C22,14 31,5 43,5 C52,5 59,10 63,18 C66,15 71,13 76,13 C86,13 94,21 94,31 C97,33 97,40 97,47 C97,57 89,65 79,65 Z" class="shape-path"/>',
  -- More polygons
  heptagon      = '<polygon points="50,3 87,21 96,60 70,92 30,92 4,60 13,21" class="shape-path"/>',
  decagon       = '<polygon points="50,3 78,12 95,36 95,64 78,88 50,97 22,88 5,64 5,36 22,12" class="shape-path"/>',
  dodecagon     = '<polygon points="50,3 74,9 91,27 97,50 91,74 74,91 50,97 26,91 9,74 3,50 9,26 26,9" class="shape-path"/>',
  -- More stars
  ["star-10"]   = '<polygon points="50,3 56,31 78,12 66,38 95,36 70,50 95,64 66,62 78,88 56,69 50,97 44,69 22,88 34,62 5,64 30,50 5,36 34,38 22,12 44,31" class="shape-path"/>',
  ["star-12"]   = '<polygon points="50,3 56,27 74,9 67,33 91,27 73,44 97,50 73,56 91,74 67,67 74,91 56,73 50,97 44,73 26,91 33,67 9,74 27,56 3,50 27,44 9,26 33,33 26,9 44,27" class="shape-path"/>',
  starburst     = '<polygon points="50,3 60,13 74,9 77,23 91,27 87,40 97,50 87,60 91,74 77,77 74,91 60,87 50,97 40,87 26,91 23,77 9,74 13,60 3,50 13,40 9,26 23,23 26,9 40,13" class="shape-path"/>',
  -- More arrows
  ["arrow-double"]   = '<polygon points="2,50 20,15 20,35 80,35 80,15 98,50 80,85 80,65 20,65 20,85" class="shape-path"/>',
  ["pentagon-arrow"] = '<polygon points="2,15 72,15 98,50 72,85 2,85" class="shape-path"/>',
  ["notched-arrow"]  = '<polygon points="2,35 60,35 60,15 98,50 60,85 60,65 2,65 15,50" class="shape-path"/>',
  -- Callouts
  ["callout-round"]  = '<path d="M50,5 C76,5 95,24 95,50 C95,76 76,95 50,95 L30,98 L38,85 C18,79 5,66 5,50 C5,24 24,5 50,5 Z" class="shape-path"/>',
  -- Flowchart shapes
  terminator    = '<rect x="5" y="20" width="90" height="60" rx="30" ry="30" class="shape-path"/>',
  cylinder      = '<path d="M5,20 A45,15 0 0,1 95,20 L95,80 A45,15 0 0,1 5,80 Z" class="shape-path"/>',
  document      = '<path d="M5,5 L95,5 L95,78 C82,90 70,68 57,80 C44,92 32,70 18,82 C12,87 8,88 5,86 Z" class="shape-path"/>',
  ["manual-input"] = '<polygon points="5,30 95,5 95,95 5,95" class="shape-path"/>',
  delay         = '<path d="M5,5 L60,5 A45,45 0 0,1 60,95 L5,95 Z" class="shape-path"/>',
  -- Block shapes
  pie           = '<path d="M50,50 L50,3 A47,47 0 0,1 97,50 Z" class="shape-path"/>',
  wave          = '<path d="M2,35 C18,15 32,15 50,35 C68,55 82,55 98,35 L98,65 C82,85 68,85 50,65 C32,45 18,45 2,65 Z" class="shape-path"/>',
  arc           = '<path d="M50,5 A45,45 0 0,0 50,95 L50,70 A20,20 0 0,1 50,30 Z" class="shape-path"/>',
  ["no-symbol"] = '<path fill-rule="evenodd" d="M50,3 A47,47 0 1,0 50,97 A47,47 0 1,0 50,3 M14,22 L22,14 L86,78 L78,86 Z" class="shape-path"/>',
  -- Banners
  ribbon        = '<polygon points="2,20 85,20 98,50 85,80 2,80 15,50" class="shape-path"/>',
  -- Functional arrows
  arrow         = '<polygon points="2,30 65,30 65,10 98,50 65,90 65,70 2,70" class="shape-path"/>',
  chevron       = '<polygon points="2,2 65,2 98,50 65,98 2,98 35,50" class="shape-path"/>',
  cross         = '<polygon points="35,2 65,2 65,35 98,35 98,65 65,65 65,98 35,98 35,65 2,65 2,35 35,35" class="shape-path"/>',
}

local function get_shape_name(classes)
  for _, cls in ipairs(classes) do
    local name = cls:match("^shape%-(.+)$")
    if name and shapes[name] then return name end
  end
end

function Div(el)
  local shape = get_shape_name(el.classes)
  if not shape then return end

  quarto.doc.add_html_dependency({
    name = "shapes",
    version = "0.1.0",
    stylesheets = { "shapes.css" }
  })

  local class_str = table.concat(el.classes, " ")

  local open = pandoc.RawBlock("html", string.format(
    '<div class="shape-wrapper %s">'
    .. '<svg class="shape-svg" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">%s</svg>'
    .. '<div class="shape-content">',
    class_str,
    shapes[shape]
  ))
  local close = pandoc.RawBlock("html", "</div></div>")

  local blocks = pandoc.Blocks({ open })
  blocks:extend(el.content)
  blocks:insert(close)
  return blocks
end

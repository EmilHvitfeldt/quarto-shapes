-- shapes.lua
-- TODO: implement filter logic

local css_injected = false

local shapes = {
  circle       = '<circle cx="50" cy="50" r="47" class="shape-path"/>',
  square       = '<rect x="2" y="2" width="96" height="96" class="shape-path"/>',
  rectangle    = '<rect x="2" y="15" width="96" height="70" class="shape-path"/>',
  triangle     = '<polygon points="50,2 98,98 2,98" class="shape-path"/>',
  diamond      = '<polygon points="50,2 98,50 50,98 2,50" class="shape-path"/>',
  hexagon      = '<polygon points="25,2 75,2 98,50 75,98 25,98 2,50" class="shape-path"/>',
  pentagon     = '<polygon points="50,2 98,35 80,95 20,95 2,35" class="shape-path"/>',
  octagon      = '<polygon points="29,2 71,2 98,29 98,71 71,98 29,98 2,71 2,29" class="shape-path"/>',
  oval         = '<ellipse cx="50" cy="50" rx="48" ry="30" class="shape-path"/>',
  parallelogram = '<polygon points="20,2 98,2 80,98 2,98" class="shape-path"/>',
  trapezoid    = '<polygon points="20,2 80,2 98,98 2,98" class="shape-path"/>',
}

local function get_shape_name(classes)
  for _, cls in ipairs(classes) do
    local name = cls:match("^shape%-(.+)$")
    if name and shapes[name] then return name end
  end
end

local function inject_css(doc)
  local css_path = quarto.utils.resolve_path("shapes.css")
  local f = io.open(css_path, "r")
  if not f then return doc end
  local css = f:read("*a")
  f:close()
  local style = pandoc.RawBlock("html", "<style>\n" .. css .. "\n</style>")
  table.insert(doc.blocks, 1, style)
  return doc
end

function Div(el)
  local shape = get_shape_name(el.classes)
  if not shape then return end
  css_injected = true

  local class_str = table.concat(el.classes, " ")
  local inner = pandoc.write(pandoc.Pandoc(el.content), "html")

  local html = string.format(
    '<div class="shape-wrapper %s">'
    .. '<svg class="shape-svg" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">%s</svg>'
    .. '<div class="shape-content">%s</div>'
    .. '</div>',
    class_str,
    shapes[shape],
    inner
  )

  return pandoc.RawBlock("html", html)
end

function Pandoc(doc)
  if css_injected then
    return inject_css(doc)
  end
end

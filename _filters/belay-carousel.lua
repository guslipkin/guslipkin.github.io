-- belay-carousel.lua
-- Pandoc Lua filter: replaces a ::: {.belay-carousel} div with a Bootstrap
-- carousel whose slides are auto-discovered from assets/belay-photos/.

function Div(el)
  if not el.classes:includes("belay-carousel") then
    return nil
  end

  local dir = "assets/belay-photos"
  local files = {}

  -- Collect image files from the photos directory
  local ok, entries = pcall(pandoc.system.list_directory, dir)
  if not ok then
    io.stderr:write("[belay-carousel] could not list " .. dir .. "\n")
    return el
  end

  for _, entry in ipairs(entries) do
    if entry:match("%.[jJ][pP][eE]?[gG]$")
      or entry:match("%.[pP][nN][gG]$")
      or entry:match("%.[wW][eE][bB][pP]$") then
      table.insert(files, entry)
    end
  end

  table.sort(files, function(a, b) return a > b end)

  if #files == 0 then
    return el
  end

  -- Build carousel HTML
  local parts = {}
  table.insert(parts, '<div id="belay-carousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="4000" data-bs-touch="true">')
  table.insert(parts, '<div class="carousel-inner">')

  for i, file in ipairs(files) do
    local caption = file:gsub("%.[^.]+$", "")  -- strip extension
    local active = i == 1 and " active" or ""
    table.insert(parts, '<div class="carousel-item' .. active .. '">')
    table.insert(parts, '<img src="' .. dir .. '/' .. file .. '">')
    table.insert(parts, '<div class="polaroid-caption">' .. caption .. '</div>')
    table.insert(parts, '</div>')
  end

  table.insert(parts, '</div>')
  table.insert(parts, '<button class="carousel-control-prev" type="button" data-bs-target="#belay-carousel" data-bs-slide="prev">')
  table.insert(parts, '<span class="carousel-control-prev-icon"></span>')
  table.insert(parts, '</button>')
  table.insert(parts, '<button class="carousel-control-next" type="button" data-bs-target="#belay-carousel" data-bs-slide="next">')
  table.insert(parts, '<span class="carousel-control-next-icon"></span>')
  table.insert(parts, '</button>')
  table.insert(parts, '</div>')

  return pandoc.RawBlock("html", table.concat(parts, "\n"))
end

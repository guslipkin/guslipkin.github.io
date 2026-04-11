-- belay-carousel.lua
-- Pandoc Lua filter: replaces a ::: {.belay-carousel} div with a custom
-- polaroid card stack with shuffle animation.

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

  -- Build polaroid stack HTML
  local parts = {}
  table.insert(parts, '<div class="polaroid-stack">')

  for _, file in ipairs(files) do
    local caption = file:gsub("%.[^.]+$", "")  -- strip extension
    table.insert(parts, '  <div class="polaroid-card">')
    table.insert(parts, '    <img src="' .. dir .. '/' .. file .. '">')
    table.insert(parts, '    <div class="polaroid-caption">' .. caption .. '</div>')
    table.insert(parts, '  </div>')
  end

  table.insert(parts, '</div>')

  -- Only add shuffle script if there are multiple photos
  if #files > 1 then
    table.insert(parts, '<script>')
    table.insert(parts, [[(function() {
  const stack = document.querySelector('.polaroid-stack');
  if (!stack) return;
  let timer = null;

  function shuffle() {
    const cards = stack.querySelectorAll('.polaroid-card');
    if (cards.length < 2) return;
    const top = cards[cards.length - 1];
    if (top.classList.contains('shuffling')) return;
    top.classList.add('shuffling');
    top.addEventListener('animationend', function handler() {
      top.removeEventListener('animationend', handler);
      top.classList.remove('shuffling');
      stack.insertBefore(top, stack.firstElementChild);
    }, { once: true });
  }

  function startTimer() {
    stopTimer();
    timer = setInterval(shuffle, 7000);
  }

  function stopTimer() {
    if (timer) { clearInterval(timer); timer = null; }
  }

  stack.addEventListener('click', function() {
    shuffle();
    startTimer();
  });

  stack.addEventListener('mouseenter', stopTimer);
  stack.addEventListener('mouseleave', startTimer);

  let touchStartX = 0;
  stack.addEventListener('touchstart', function(e) {
    touchStartX = e.changedTouches[0].clientX;
  }, { passive: true });
  stack.addEventListener('touchend', function(e) {
    const dx = e.changedTouches[0].clientX - touchStartX;
    if (Math.abs(dx) > 30) {
      shuffle();
      startTimer();
    }
  }, { passive: true });

  startTimer();
})();]])
    table.insert(parts, '</script>')
  end

  return pandoc.RawBlock("html", table.concat(parts, "\n"))
end

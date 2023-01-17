--
--  log-utils.lua
--  factorio-k2-anti-material-rifle
--
--  Created by Rakesh Ayyaswami on 16 Jan 2023.
--

local inspect = require("inspect")

local log_utils = {
  enabled = true,
}

function log_utils.disablelog_utilss()
  log_utils.enabled = false
end

function log_utils.enablelog_utilss()
  log_utils.enabled = true
end

-- @ txt
function log_utils.info(txt)
  return log_utils._(txt, "INFO")
end

-- @ txt
function log_utils.config(txt)
  return log_utils._(txt, "CONFIG")
end

-- @ txt
function log_utils.warning(txt)
  return log_utils._(txt, "WARNING")
end

-- @ txt
function log_utils.error(txt)
  return log_utils._(txt, "ERROR")
end

-- @ txt
function log_utils.severe(txt)
  return log_utils._(txt, "SEVERE")
end

function log_utils._(level, txt)

  -- abort if logging is disabled
  if not log_utils.enabled then
    return false
  end

  local base_level = 1
  if debug.getinfo(3) then
    base_level = 2
  end
  local out_file, out_function_name, out_line =
  debug.getinfo(base_level + 1).short_src,
      debug.getinfo(base_level + 1).name,
      debug.getinfo(base_level + 1).currentline
  local in_file, in_function_name, in_line =
  debug.getinfo(base_level).short_src, debug.getinfo(base_level).name, debug.getinfo(base_level).currentline

  log("logLevel:" .. level)
  if in_function_name then
    log("file:" .. in_file .. "->function:" .. in_function_name .. "->line:" .. in_line)
  else
    log("file:" .. in_file .. "->line:" .. in_line)
  end
  if out_function_name then
    log("Called in->file:" .. out_file .. "->function:" .. out_function_name .. "->line:" .. out_line)
  else
    log("Called in->file:" .. out_file .. "->line:" .. out_line)
  end
  log("Message: " .. inspect(txt))

  return true
end

return log_utils

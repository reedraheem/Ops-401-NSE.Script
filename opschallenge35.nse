-- Example NSE script: gather-info.nse

description = "Gather information about open ports on a target server"
author = "Raheem Sharif Reed"
license = "GPLv2+"
categories = {"default", "discovery"}

-- Define the portrule (target port range)
portrule = function(host, port)
  return true
end

-- Action to perform when a port is discovered as open
action = function(host, port)
  local service = nmap.get_port_service(port.protocol, port.number) or "unknown"
  print(string.format("Open port: %s/%s (%s)", port.number, port.protocol, service))
end

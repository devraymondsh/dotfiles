if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]
  exec startx
end

# Rootless docker
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Deno
export PATH="$HOME/.deno/bin:$PATH"

setxkbmap -layout "us,ir" -option "grp:alt_shift_toggle"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

#Zig
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$HOME/.zvm:$PATH"

function fport --argument-names 'port'
   if test -n "$port"
        kill -9 $(lsof -t -i:$port -sTCP:LISTEN)
    else
	echo "No argument passed!"
    end
end
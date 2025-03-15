function exportconfig
  set nameConfig $argv
  switch $argv[1]
    case nvim
      cp -rf ~/.config/nvim/{init.lua, LICENSE, lazy-lock.json, lazyvim.json, stylua.toml, lua/} ~/g.configs/G.Nvim/nvim/
      if test $status -ne 0
        echo "error: $status"
      else
        echo "Done, you $argv config was succefully copied" 
      end
      return

    case zellij
      cp -rf ~/.config/zellij/ ~/g.configs/G.Zellij/zellij/
      if test $status -ne 0
        echo "error: $status"
      else
        echo "Done, you $argv config was succefully copied" 
      end
      return

    case fish
      cp -rf ~/.config/fish/ ~/g.configs/G.Fish/fish/
      if test $status -ne 0
        echo "error: $status"
      else
        echo "Done, you $argv config was succefully copied" 
      end
      return

  end
end

function importconfig
  set nameConfig $argv
  switch $argv[1]
    case nvim
      cp -rf ~/g.configs/G.Nvim/nvim/{init.lua, LICENSE, lazy-lock.json, lazyvim.json, stylua.toml, lua/} ~/.config/nvim/
      if test $status -ne 0
        echo "error: $status"
      else
        echo "Done, you $argv config was succefully copied" 
      end
      return

    case zellij
      cp -rf ~/g.configs/G.Zellij/zellij/ ~/.config/zellij/
      if test $status -ne 0
        echo "error: $status"
      else
        echo "Done, you $argv config was succefully copied" 
      end
      return

    case fish
      cp -rf ~/g.configs/G.Fish/fish/ ~/.config/fish/
      if test $status -ne 0
        echo "error: $status"
      else
        echo "Done, you $argv config was succefully copied" 
      end
      return

  end
end

function cc
    set executable_name (basename $argv[1] .c) # Crea una variable que guarda el nombre del ejecutable (sin la extencion .c)
    gcc $argv[1] -o $executable_name # ejecuta el compilador gcc para crear el ejecutable
    chmod +x $executable_name # Dando permisos del archivo para que sea ejecutable
    if test -x $executable_name # Verifica si tiene permisos de ejecucion
        eval "$PWD/$executable_name" # Ejecuta el programa ya compilado anteriormente
    else
        echo "Error: El archivo ejecutable $executable_name no tiene permisos de ejecución."
    end
end

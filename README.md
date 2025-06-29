# Mis "Dotfiles"

Este repositorio está pensado para gestionar dotfiles con el uso de **GNU Stow**

## Para crear un nuevo "paquete":
- Añadir un directorio con el nombre del paquete 
- Crear en el directorio la ruta exacta desde ~/ donde se creará el symlink 

## Para copiar los cambios de un paquete 

```bash
$ stow route/To/Package/
```

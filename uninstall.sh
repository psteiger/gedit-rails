#!/bin/sh
set -v

killall gedit

# Remove rails-related mime types
sudo rm /usr/share/mime/packages/rails.xml
sudo update-mime-database /usr/share/mime

# Remove syntaxt definitions for erb and yaml
sudo rm /usr/share/gtksourceview-2.0/language-specs/erb.lang
sudo rm /usr/share/gtksourceview-2.0/language-specs/yaml.lang

# Remove snippets/* from ~/.gnome2/gedit/snippets
for FILE in `ls snippets/`
do
  rm $HOME/.gnome2/gedit/snippets/$FILE
done

# Remove ~/.gnome2/gedit/snippets if empty
rmdir $HOME/.gnome2/gedit/snippets

# Remove plugins/* from ~/.gnome2/gedit/plugins
for FILE in `ls plugins/`
do
  rm -rf $HOME/.gnome2/gedit/plugins/$FILE
done

# Remove ~/.gnome2/gedit/plugins if empty
rmdir $HOME/.gnome2/gedit/plugins

# Remove ~/.gnome2/gedit if empty
rmdir $HOME/.gnome2/gedit


#!/bin/bash

mkdir -p ~/.ssh/vagrant_keys

for vm in web1 web2 db observer lbserver; do
  src="/mnt/d/stackforge/.vagrant/machines/$vm/virtualbox/private_key"
  dest="$HOME/.ssh/vagrant_keys/${vm}_key"
  if [ -f "$src" ]; then
    cp "$src" "$dest"
    chmod 600 "$dest"
    echo "✅ $vm key copied and permissions set."
  else
    echo "⚠️  $vm key not found at $src"
  fi
done

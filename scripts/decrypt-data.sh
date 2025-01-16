gpg --locate-keys --auto-key-locate clear,nodefault,wkd gpg@yvn.no && \
gpg --decrypt data.tar.gz.gpg | tar -xzf -
gpg --decrypt instructions.tar.gz.gpg | tar -xzf -


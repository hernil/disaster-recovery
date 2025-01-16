tar -cz data | gpg --trust-model always --encrypt --recipient gpg@yvn.no > data.tar.gz.gpg
tar -cz instructions | gpg --trust-model always --encrypt --recipient gpg@yvn.no > instructions.tar.gz.gpg


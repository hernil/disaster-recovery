# Disaster recovery

This document describes how to recover my digital life in case of emergency or death. While some information will be plain text there is quite a bit of information encrypted with `gpg`. Decrypting that will be essential for complete recovery. 

## Common information

Decrypting the information in this repository. 

### Download data

Either `git clone` this repo or download a zip from this webpage. 

### Get hardware key

You need to be in possession of one of the three Yubikeys set up to decrypt this information: 

  - My personal key should be in my wallet
  - Home backup key should be found in top right drawer of living room 
  - Off site backup key stored with my parents

### Decrypt data

We assume you are on a Linux or Mac - we simply do not have time for Windows (although WSL might work). 

Plug in the Yubikey and run 
```
./scripts/decrypt-data.sh
```

Enter the pin (found in the sealed boxes next to the keys if you do not know it already). 

You have now unlocked the files and you should have a data folder and an instructions folder. 

## Recovery Scenario

[Recover Bitwarden account](instructions/bitwarden.md)
[Bitwarden service interuption or account termination](instructions/bitwarden-down.md)
[Fire or similar with no surviving devices](instructions/off-site-recovery.md)
[Death](instructions/death.md)

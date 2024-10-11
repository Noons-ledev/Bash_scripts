#!/bin/bash
init_path="/mnt/c/Users/nbrie/Documents/Premierprojet"
end_path="/mnt/c/Users/nbrie/Backup"
log_file="/mnt/c/Users/nbrie/Backup/backupfile.log"
echo "Vérifications des répertoires..." | tee -a "$log_file"
if [ -d "$init_path" ] && [ -d "$end_path" ] ; then
    cp -r "$init_path/"* "$end_path" 
    echo "Le back up a été créé au chemin indiqué à $(date)" | tee -a "$log_file"
else
    echo "Erreur : Un des repertoires est inexistant $(date)" | tee -a "$log_file"
fi

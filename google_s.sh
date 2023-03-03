#!/bin/bash

# Récupérer les arguments de la ligne de commande
query=$*

# Envoyer la requête à l'API de recherche Google
response=$(curl -s "https://www.google.com/search?q=$query")

# Extraire les résultats de la réponse
results=$(echo "$response" | sed -n 's/.*<cite>\([^<]*\)<\/cite>.*/\1/p')

# Afficher les résultats
echo "$results"

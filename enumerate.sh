#Enumerate domain names from the certifacate
sslscan domain.com | grep "Altnames:" | awk -F': ' '{for (i=2; i<=NF; i++) {split($i, domains, " "); for (j in domains) {if (domains[j] != "") {gsub("DNS:", "", domains[j]); print domains[j]}}}}'

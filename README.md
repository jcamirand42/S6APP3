# S6APP3

# À faire
## AM DONE
La modulation AM est de type AM conventionnelle ou de type DSB (Double Side Band). Pour le démodulateur,
il doit être fait de manière cohérente. Vous devez justifier votre indice de modulation
## ASK
La modulation ASK (Amplitude Shift Keying) ou OOK (On-Off Keying) possède un débit de 1 kBits/seconde. Le
démodulateur doit être fait de manière cohérente

** FAIT EN PARTIE**
Il manque à faire la partie matlab, où on encode les bits à transmettre. 
## 4-QAM
La modulation 4-QAM est constituée de deux modulateur BPSK (Bipolar Phase Shift Keying) en quadrature
ceci permet de doublé le débit sans augmenter les erreurs sur le signal de sortie. Pour chaque quadrature, on
retrouve les deux symboles de -1 et 1 correspondant respectivement aux symboles binaires de 0 et à 1. Il est
à remarquer que le 4-QAM et le 4-QPSK (Quadrature Phase Shift Keying) possèdent des constellations identiques, 
mais qui sont créés de manière différentes. Il est donc possible d’utiliser les deux démodulateurs
soient : par tangente inverse (QPSK) ou de manière cohérente (QAM). 
## FM DONE
La modulation FM sera une modulation de cosinus et le démodulée par intégrale et détecteur d’enveloppe.
L’utilisation des blocs d’intégrale et de dérivée sont suggérés afin de faciliter la conception. Vous devez
justifier votre facteur de modulation
## FSK
La modulation FSK (Frequency Shift Keying) doit être faite avec les deux porteuses et un interrupteur qui
permet de laisser passer l’une des deux porteuses selon la valeur du bit à transmettre. Le démodulateur peut
être fait à l’aide d’un band de filtres suivi d’une valeur absolue. La méthode de décision est simplement,
choisir le signal de sortie des filtres le plus haut afin de retrouver les bits. Par convention la porteuse la plus
haute correspond au symbole binaire 1 et la plus basse au symbole binaire 0. Vous devez justifier le choix de
vos deux fréquences porteuses.

## 16-PSK

# 01_import.R — Téléchargement et chargement des données freMTPL2
# Source : package CASdatasets (Dutang & Charpentier)

base_url <- "https://github.com/dutangc/CASdatasets/raw/c49cbbb37235fc49616cac8ccac32e1491cdc619/data/"

for (f in c("freMTPL2freq.rda", "freMTPL2sev.rda")) {
  dest <- file.path("data", f)
  if (!file.exists(dest)) download.file(paste0(base_url, f), dest, mode = "wb")
  load(dest)
}

# Premier coup d'œil
str(freMTPL2freq)
str(freMTPL2sev)
summary(freMTPL2freq)
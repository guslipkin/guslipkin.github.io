needed <- unique(renv::dependencies()$Package)

needed <- needed[!(needed %in% installed.packages())]

install.packages(needed, repos = 'https://packagemanager.posit.co/cran/latest')
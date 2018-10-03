# Set time zone for macs
Sys.setenv(TZ = "America/Denver")

# Create list of useful packages
pkgs <- c("devtools", "usethis", "testthat", "rlang", "caret", "nullabor", "magrittr", "lubridate", "stringr", "forcats", "scales", "broom", "modelr", "purrr", "dplyr", "tidyverse")

# Install any missing packages and load them
if (length(setdiff(pkgs, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(pkgs, rownames(installed.packages())))  
}
lapply(pkgs, require, character.only = T)

#Provide an Overstock color pallette for visualizations
overstock_palette <- c(`red` = "#FF1F2C", 
                       `aqua` = "#08B3C6", 
                       `yellow` = "#FFC000",
                       `dark grey` = "#545151",
                       `medium grey` = "#807E7d",
                       `light grey` = "#C4C4C1",
                       `light yellow` = "#FFEA00",
                       `orange` = "#FF771D",
                       `light green` = "#BED90D",
                       `green` = "#2BB236",
                       `cool blue` = "#3DD2B7",
                       `blue` = "#0088EE",
                       `pink` = "#F04085",
                       `purple` = "#B41F8B")

overstock_colors <- function(...){
  cols <- c(...)
  if (is.null(cols))
    return(unname(overstock_palette))
  unname(overstock_palette[cols])
}

# Create rda files from SQL
# map(list.files("data") %>% paste0("data/", .),
#     ~.x %>%
#       readLines %>%
#       paste(collapse = "\n") %>%
#       dbGetQuery(con, .) %>%
#       saveRDS(file = .x %>%
#                 str_replace("data/", "") %>%
#                 str_replace(".sql", "") %>%
#                 paste0("data/rdas/", ., ".rda")
#               )
#     )


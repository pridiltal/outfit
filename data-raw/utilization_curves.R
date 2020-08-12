## code to prepare `utilization_curves` dataset

# Read Data
utilization_curves <- read.csv(here::here("data-raw", "utilization_curves_sample.csv"), header = TRUE)

# To make is userfriendly, column headings were converted to lowercase
colnames(utilization_curves) <- colnames(utilization_curves) %>% tolower()

# Save data as utilization_curves
usethis::use_data(utilization_curves, overwrite = TRUE)

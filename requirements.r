# Core meta-packages (these will install many dependencies)
core_packages <- c("tidyverse", "tidymodels")

# Additional packages not included in tidyverse/tidymodels
extra_packages <- c(
  "glue", "patchwork", "ggtext", "themis", "xgboost",
  "ranger", "glmnet", "ISLR2", "nycflights13"
)

# Combine all required packages
required_packages <- c(core_packages, extra_packages)

# Install missing packages
for (pkg in required_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    message(paste("Installing", pkg, "..."))
    install.packages(pkg)
  } else {
    message(paste(pkg, "is already installed."))
  }
}

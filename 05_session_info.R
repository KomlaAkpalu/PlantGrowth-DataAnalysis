# 05_session_info.R

# Print the version of R
print(R.version)

# Alternatively, you can use sessionInfo() to print detailed information about the current R session.
# This includes R version, OS, and attached or loaded packages
sessionInfo()

# If you want to specifically list all installed packages and their versions, you can use the installed.packages() function
installed_packages <- installed.packages()[, c("Package", "Version")]
print(installed_packages)

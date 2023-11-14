#####
# Rscript project_setup.R <project>
# Note: don't include path
# path will be "C:/Users/MPcoo/OneDrive/Documents/project"
#####


# 1.0 get command line arguments ----

args <- commandArgs(trailingOnly = TRUE)
# Rscript project_setup.R project
cat("project name is:", args, "\n")
project_directory_name <- args

# 2.0 mkdir project ----
project_directory_name = paste0("C:/Users/MPcoo/OneDrive/Documents/project", project_directory_name)
## obtained from video
if (file.exists(project_directory_name)) {
  setwd(project_directory_name)
 } else {
    dir.create(project_directory_name)
    setwd(project_directory_name)
 }


# 3.0 change to project dir ----

setwd(project_directory_name)

# 4.0 create subdirectories ----

dir.create("00_original_data")
dir.create("00_working_data")
dir.create("01_scripts_and_functions")
dir.create("02_figures")
dir.create("03_results")


#loading the dataset exported as .csv, transforming it into a YAML template

df <- read.csv("llb.csv", header = TRUE)
iteration = 1

##Template_Version : 0.5

for (iteration in 1:3){


  stra = paste0(
    "\nTemplate_Version : 0.5

   \nheader:
    \n complete: false
    \n altered:\n  anonymized: false\n  point_focus: false\n  rotated: false
\n transcribed_by:
\n Fulcrum_id: " , df [iteration, "fulcrum_id"],
    "\n photo_url: ", df [iteration,"photos_url"],
    "\n revised_id: ", iteration,
    "\n date_taken: ", df [iteration, "date"],
    "\n time_taken: ", df [iteration,  "created_at3"],
    "\n time_zone: " , df [iteration, "created_at4"],
    "\n created_by: ", df [iteration, "revised_id"],
    "\n latitude: ", df [iteration, "latitude"],
    "\n longitude: ", df [iteration, "longitude"],
    "\n\n languages: ", df [iteration, "languages_used"], " ", df [iteration, "languages_used_other"],
    "\n  dominant_language: null
    \n script: ", df [iteration, "scripts_used"], " ", df [iteration, "scripts_used_other"],
    "\n  dominant_script: null
    \n Characteristics: ", df [iteration, "features"], " ", df [iteration, "features_other"],
    "\n general_context: ", df [iteration, "general_context"], " ", df [iteration, "general_context_other"],
    "\n material:

    \n comments: ", df [iteration, "comments"],
    "\n comments2: ", df [iteration, "comments_2"],
    "\n\n Body:",
    "\n  Paragraph1:",
    "\n     \"Insert text here\"",
    "\n      Script:",
    "\n      Language:",
    "\n      Feature:",
    "\n     \"Insert text here\"",
    "\n      Script:",
    "\n      Language:",
    "\n      Feature:",
    "\n  Paragraph2:",
    "\n     \"Insert text here\"",
    "\n      Script:",
    "\n      Language:",
    "\n      Feature:",
    "\n     \"Insert text here\"",
    "\n      Script:",
    "\n      Language:",
    "\n      Feature:"
    )

  cat(stra, file=paste0(iteration,".yml"))

}

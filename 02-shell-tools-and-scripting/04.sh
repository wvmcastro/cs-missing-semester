if [[ $# -eq 0 ]]; 
then
  find . -name '*.html' -print0 | xargs -d \\0 zip html.zip
elif [[ $# -eq 1 ]]; 
then
  find $1 -name '*.html' -print0 | xargs -d \\0 zip html.zip
fi
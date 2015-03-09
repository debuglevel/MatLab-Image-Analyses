 #!/bin/bash
 
 for i in *; do
   echo "Converting $i..."
   convert -resize "100000@>"	-colors 250	"$i" "preprocessed/$i";
   #convert -resize "100000@>"			"$i" "preprocessed/$i";
 done
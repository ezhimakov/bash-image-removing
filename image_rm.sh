
#!/bin/bash
cd "/sitedir/public_html/uploads"
for fpath in $(find -type f)
do
        foldername=`dirname "$fpath"`
        file_name=`basename "$fpath"`

#       echo $foldername

        if [[ ! -z `find $foldername -type f -name "*-$file_name"` ]];
        then
                echo -e "$file_name has duplicates"
                echo "------------------------------"
                find $foldername -type f -name "*-$file_name"
                echo -e "\n"
                echo -e "Removing $fpath ..."
                rm $fpath
                echo -e  "\n"
        fi

done
 

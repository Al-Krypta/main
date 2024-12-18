function helpPanel(){
    echo -e "Script run wrongly"
}

declare -i parameter_counter=0; while getopts ":u:h:" arg; do
    case $arg in
        u) update_data=$OPTARG; let parameter_counter+=1 ;;
        h) helpPanel
    esac
done

if [ $parameter_counter -ne 1 ]; then
    helpPanel
else
    git add . && git commit -m $update_data && git push
fi
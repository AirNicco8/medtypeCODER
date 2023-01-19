DEFAULT='\033[0m'
BOLD='\033[1;32m\e[1m'

if ! python -c "import gdown" &> /dev/null; then
	echo -e "${BOLD} MedType> Install gdown package ${DEFAULT}"
	pip install gdown
fi

if [ ! -d "./datasets" ]
then
	echo -e "${BOLD} MedType> Setting up directories ${DEFAULT}"
	mkdir datasets
fi


if [ ! -f "./datasets/medmentions.json" ]
then
	# For MedMentions
	echo -e "${BOLD} MedType> Downloading MedMentions dataset ${DEFAULT}"
	gdown --id 1E_cSs3GJy84oATsMBYE7xMEoif-f4Ei6 -O datasets/medmentions.zip

	echo -e "${BOLD} MedType> Extracting MedMentions dataset ${DEFAULT}"
	unzip datasets/medmentions.zip -d datasets/
	rm -f datasets/medmentions.zip
fi


echo -e "${BOLD} MedType> All Set! ${DEFAULT}"
if [ ! -d "./models/pretrained_models" ]
then
	echo -e "${BOLD} MedType> Setting up directories ${DEFAULT}"
	mkdir -p models/pretrained_models
fi

if [ ! -f "./models/pretrained_models/general_model.bin" ]
then
	# Pretrained model for General domain text
	echo -e "${BOLD} MedType> Downloading pre-trained model for general articles: general_model.bin ${DEFAULT}"
	gdown --id 15vKHwzEa_jcipyEDClNSzJguPxk0VOC7 -O models/pretrained_models/general_model.zip

	echo -e "${BOLD} MedType> Extracting model ${DEFAULT}"
	unzip models/pretrained_models/general_model.zip -d models/pretrained_models/
	rm -f models/pretrained_models/general_model.zip
fi

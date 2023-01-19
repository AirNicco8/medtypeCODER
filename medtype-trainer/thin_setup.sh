DEFAULT='\033[0m'
BOLD='\033[1;32m\e[1m'

echo -e "${BOLD} MedType> Creating Directories ${DEFAULT}"

if ! python -c "import gdown" &> /dev/null; then
	echo -e "${BOLD} MedType> Install gdown package ${DEFAULT}"
	pip install gdown
fi

check_dir () { 
	if [ ! -d $1 ] 
	then 
		mkdir $1
	fi
}

check_dir "./data" 			# For data
check_dir "./logs" 			# For logs
check_dir "./models" 			# For storing model parameters
check_dir "./models/bert_dumps" 	# For storing fine-tuned BERT parameters
check_dir "./predictions" 		# For storing model's predictions
check_dir "./results" 			# For entity linking results


if [ ! -f "./data/medmentions.pkl" ]
then
	echo -e "${BOLD} MedType> Downloading Processed MedMentions Data ${DEFAULT}"
	gdown --id 13Qszq-WGo8Ej9XTa7ccQ83_AdRZZ1vIU -O data/medmentions_processed.zip

	echo -e "${BOLD} MedType> Extracting MedMentions Data ${DEFAULT}"
	unzip data/medmentions_processed.zip -d data/
	rm -f data/medmentions_processed.zip
fi 


if [ ! -f "./data/umls2type.pkl" ]
then
	echo -e "${BOLD} MedType> Downloading UMLS to Semantic Type Mapping ${DEFAULT}"
	gdown --id 1Jly06IjI7iWgQRmj456filYD5FyBLQAg -O data/umls2type.zip
	unzip data/umls2type.zip -d data/
	rm -f data/umls2type.zip
fi 


echo -e "${BOLD} MedType> All Set! ${DEFAULT}"
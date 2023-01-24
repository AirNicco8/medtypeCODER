python medtype.py --data medmentions \
		--model bert_coder \
		--name 160k_sub \
		--log_freq 50 \
		--num_workers 0 \
		--model_dir ./../../data/models/500k_16ksub_8bs_10e_cos_sim/ \
		--batch 4 \
		--epoch 1 \
		--restore
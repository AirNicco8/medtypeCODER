python medtype.py --data medmentions \
		--model og_coder \
		--name coder_base \
		--log_freq 50 \
		--num_workers 0 \
		--model_dir ./../../data/models/500k_16ksub_8bs_10e_cos_sim/ \
		--batch 4 \
		--epoch 1 
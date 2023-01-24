python3 medtype.py --data medmentions \
                  --gpu 0 \
                  --model bert_coder \
				  --name 160k_sub \
		  --num_workers 0 \
                  --batch_factor 1 \
                  --batch 16 \
                  --model_dir ./../../data/models/500k_16ksub_8bs_10e_cos_sim/ \
				  --dump_only --restore 

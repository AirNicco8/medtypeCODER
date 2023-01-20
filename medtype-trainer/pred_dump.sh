CUDA_LAUNCH_BLOCKING=1 python3 medtype.py --data medmentions \
                  --gpu -1 \
                  --model og_coder \
				  --name og_coder \
                  --batch_factor 1 \
                  --batch 4 \
                  --model_dir ./../../data/models/500k_16ksub_8bs_10e_cos_sim/ \
				  --dump_only --restore 

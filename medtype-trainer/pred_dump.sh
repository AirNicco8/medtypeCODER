python3 medtype.py --data medmentions \
                  --gpu 0 \
                  --model bert_plain \
				  --name gen \
                  --batch_factor 1 \
                  --num_workers 0 \
                  --batch 4 \
				  --dump_only --restore 

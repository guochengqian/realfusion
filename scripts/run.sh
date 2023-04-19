DATA_DIR=$2

CUDA_VISIBLE_DEVICES=$1 python main.py --O \
	--image_path $DATA_DIR/rgba.png \
	--learned_embeds_path $DATA_DIR/learned_embeds.bin \
	--text "A high-resolution DSLR image of a <token>" ${@:3}



```
xxx

```
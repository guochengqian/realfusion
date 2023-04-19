DATA_DIR=$2

CUDA_VISIBLE_DEVICES=$1 python main.py --O \
	--image_path $DATA_DIR/rgba.png \
	--text "A high-resolution DSLR image of a dragon statue" ${@:3}

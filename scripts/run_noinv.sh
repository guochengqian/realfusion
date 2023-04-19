DATA_DIR=$2

CUDA_VISIBLE_DEVICES=$1 python main.py --O \
	--image_path $DATA_DIR/rgba.png \
	--text "A photorealistic image of a grey dragon statue" ${@:3}

# --O --image_path examples/natural-images/dragon_statue_1/rgba.png --text "A photorealistic image of a grey dragon statue" --ema_decay -1 --optim adan --grid_levels_mask 0 --HW_vis 800 --replace_synthetic_camera_every 0 --HW_synthetic 64 --

# orient not over 100
# --density_thresh 10



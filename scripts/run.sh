CUDA_VISIBLE_DEVICES=$1 python main.py --O \
--image_path $DATA_DIR/rgba.png \
--learned_embeds_path $DATA_DIR/learned_embeds.bin \
--text "A high-resolution DSLR image of a <token>" ${@:3}


# original
# bash scripts/run.sh 1 examples/natural-images/dragon_statue_1 --ema_decay 0.95 --optim adamw --grid_levels_mask 8  --replace_synthetic_camera_every 10  --noise_real_camera 0.001 --fovy_range [40,70]

# ours.
# bash scripts/run.sh 1 examples/natural-images/dragon_statue_1

# --lambda_image 10.0 --lambda_mask 1.0 --blob_density 10 --blob_radius 0.5 --lambda_entropy 1e-3   --bound 1.0

# TOOD: test. Albedo warmup and finetuning seems to be important.


MODEL_NAME="stabilityai/stable-diffusion-2-1-base"
DATA_DIR=$2 # "path-to-dir-containing-your-image"
OUTPUT_DIR=$3 # "path-to-desired-output-dir"
placeholder_token=$4 # _ironman_
init_token=$5 # _ironman_

CUDA_VISIBLE_DEVICES=$1 python textual-inversion/textual_inversion.py \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --train_data_dir=$DATA_DIR \
  --learnable_property="object" \
  --placeholder_token=$placeholder_token \
  --initializer_token=$init_token \
  --resolution=512 \
  --train_batch_size=1 \
  --gradient_accumulation_steps=4 \
  --max_train_steps=3000 \
  --learning_rate=5.0e-04 --scale_lr \
  --lr_scheduler="constant" \
  --lr_warmup_steps=0 \
  --output_dir=$OUTPUT_DIR \
  --use_augmentations

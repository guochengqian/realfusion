export MODEL_NAME="runwayml/stable-diffusion-v1-5"
export DATA_DIR="data/image" # "path-to-dir-containing-your-image"
export OUTPUT_DIR="data/text_embedding" # "path-to-desired-output-dir"

python textual_inversion.py \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --train_data_dir=$DATA_DIR \
  --learnable_property="object" \
  --placeholder_token="_cat_statue_" \
  --initializer_token="cat" \
  --resolution=512 \
  --train_batch_size=1 \
  --gradient_accumulation_steps=4 \
  --max_train_steps=3000 \
  --learning_rate=5.0e-04 --scale_lr \
  --lr_scheduler="constant" \
  --lr_warmup_steps=0 \
  --output_dir=$OUTPUT_DIR \
  --use_augmentations

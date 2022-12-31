# Setup
DATATYPE=msrvtt
N_GPU=2
N_THREAD=16

DATA_PATH=../dataset/MSRVTT/MSRVTT_data.json
CKPT_ROOT=../checkpoints
INIT_MODEL_PATH=../weight/univl.pretrained.bin
# Path to the features you extracted from CLIP4Clip
FEATURES_PATH=../extracted_feats/msvd/MSVD_CLIP4Clip_features.pickle
# Tuning Params
LEARNING_RATE=(1e-5 3e-5 7e-5 1e-4 3e-4 7e-4)

for lr in "${LEARNING_RATE[@]}"
do
  python -m torch.distributed.launch --nproc_per_node=${N_GPU} \
  ../train.py --do_train --num_thread_reader=${N_THREAD} \
  --epochs=50 --batch_size=1024 --n_display=50 --gradient_accumulation_steps 2 \
  --data_path ${DATA_PATH} --features_path ${FEATURES_PATH} \
  --output_dir ${CKPT_ROOT}/${DATATYPE}_lr${lr}_gnn \
  --bert_model bert-base-uncased --do_lower_case \
  --lr ${lr} --max_words 48 --max_frames 20 --batch_size_val 128 \
  --visual_num_hidden_layers 2 --decoder_num_hidden_layers 2 \
  --datatype ${DATATYPE} --init_model ${INIT_MODEL_PATH} \
  --d_model 512 --video_dim 512
done

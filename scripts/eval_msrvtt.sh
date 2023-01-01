# make sure to change the value of INIT_MODEL_PATH

# Setup
DATATYPE=msrvtt
N_GPU=1
N_THREAD=16

DATA_PATH=../dataset/MSRVTT/MSRVTT_data.json
CKPT_ROOT=../checkpoints
# init with the desired model
INIT_MODEL_PATH=<location to the pretrained model> 
# Path to the features you extracted from CLIP4Clip
FEATURES_PATH=../extracted_feats/msrvtt/MSRVTT_CLIP4Clip_features.pickle
# Tuning Params
LEARNING_RATE=7e-5 

python -m torch.distributed.launch --nproc_per_node=${N_GPU} \
../train.py --do_eval --num_thread_reader=${N_THREAD} \
--epochs=50 --batch_size=1024 --n_display=50 --gradient_accumulation_steps 2 \
--data_path ${DATA_PATH} --features_path ${FEATURES_PATH} \
--output_dir ${CKPT_ROOT}/${DATATYPE}_lr${LEARNING_RATE}_eval \
--bert_model bert-base-uncased --do_lower_case \
--lr ${LEARNING_RATE} --max_words 48 --max_frames 20 --batch_size_val 128 \
--visual_num_hidden_layers 2 --decoder_num_hidden_layers 2 \
--datatype ${DATATYPE} --init_model ${INIT_MODEL_PATH} \
--d_model 512 --video_dim 512

# How to extract the video features from CLIP4Clip
## Prepare the Dataset
Dowload the raw videos of MSVD ([link](https://www.cs.utexas.edu/users/ml/clamp/videoDescription/)) and MSR-VTT ([link](https://github.com/VisionLearningGroup/caption-guided-saliency/issues/6)), and put the videos in `raw` folder as displayed below
```bash
├── feature_extractor
├── dataset
│   ├── MSVD
│   │   ├── raw # put the 1970 raw videos in here
│   │   ├── captions 
│   │   ├── raw-captions_mapped.pkl # mapping between video id with captions
│   │   ├── train_list_mapping.txt
│   │   ├── val_list_mapping.txt
│   │   ├── test_list_mapping.txt
│   ├── MSRVTT
│   │   ├── raw # put the 10000 raw videos in here
│   │   ├── msrvtt.csv # list of video id in msrvtt dataset
│   │   ├── MSRVTT_data.json # metadata of msrvtt dataset, which includes video url, video id, and caption
```
## Details
To be added

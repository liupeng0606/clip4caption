# Reproducing CLIP4Caption
This is the first unofficial implementation of CLIP4Caption method.

**Note**: The provided extracted features and the reproduced results are not obtained using TSN sampling as in the CLIP4Caption paper. However, even without TSN sampling, i.e., only using original sampling method in CLIP4Clip, it is found that the similar (even slightly better) performance results can be achieved as in the CLIP4Caption paper. While reproducing the results, it was observed that using TSN sampling could not achieve the similar performance results as in the paper.

**Paper**: Mingkang Tang, Zhanyu Wang, Zhenhua LIU, Fengyun Rao, Dian Li, and Xiu Li. 2021. CLIP4Caption: CLIP for Video Caption. In Proceedings of the 29th ACM International Conference on Multimedia (MM '21). Association for Computing Machinery, New York, NY, USA, 4858–4862. > https://dl.acm.org/doi/10.1145/3474085.3479207

## Reproduced Results
### MSRVTT
| Method  | BLEU@4 | METEOR | ROUGE-L | CIDEr | Checkpoint |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| CLIP4Caption* (ViT-B/32) | 46.1  | 30.7  | 63.7  | 57.7  | - |
| CLIP4Caption (ViT-B/32)  | 46.63  | 30.73  | 63.86 | 58.46  | [link](https://github.com/willyfh/clip4caption/raw/main/checkpoints/msrvtt/clip4caption_vit-b-32_model.bin) |

(*) Original results from the paper

## Setup
### Preliminary
To be added

### Requirements
To be added

## Extract the Features
To be added

## Training
To be added

## Testing
To be added

## Details
To be added

## References
To be added


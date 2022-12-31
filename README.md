# Reproducing CLIP4Caption
This is the first unofficial implementation of CLIP4Caption method.

**Note**: The provided extracted features are not extracted using TSN sampling as in the CLIP4Caption paper. It is found that even without TSN sampling, i.e., only using original sampling method in CLIP4Clip, the similar (even +slightly better) performance results can be achieved as in the CLIP4Caption paper. In my experiment, using TSN sampling could not achieve the similar performance results as in the paper.

**Paper**: Mingkang Tang, Zhanyu Wang, Zhenhua LIU, Fengyun Rao, Dian Li, and Xiu Li. 2021. CLIP4Caption: CLIP for Video Caption. In Proceedings of the 29th ACM International Conference on Multimedia (MM '21). Association for Computing Machinery, New York, NY, USA, 4858–4862. > https://dl.acm.org/doi/10.1145/3474085.3479207

## Reproduced Results
### MSRVTT
| Method  | BLEU@4 | METEOR | ROUGE-L | CIDEr | Checkpoint |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| CLIP4Caption* (ViT-B/32) | 46.1  | 30.7  | 63.7  | 57.7  | - |
| CLIP4Caption (ViT-B/32)  | 46.63  | 30.73  | 63.86 | 58.46  | - |

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


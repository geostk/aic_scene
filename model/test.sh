#!/usr/bin/env bash
BASE_DIR=..
LD_PRELOAD="/usr/lib/libtcmalloc.so.4" python test.py --model_dir=${BASE_DIR}/checkpoints \
                --train_json=${BASE_DIR}/data/ai_challenger_scene_train_20170904/scene_train_annotations_20170904.json \
                --train_image_dir=${BASE_DIR}/data/ai_challenger_scene_train_20170904/scene_train_images_20170904 \
                --validate_json=${BASE_DIR}/data/ai_challenger_scene_validation_20170908/scene_validation_annotations_20170908.json \
                --validate_image_dir=${BASE_DIR}/data/ai_challenger_scene_validation_20170908/scene_validation_images_20170908 \
                --test_list=${BASE_DIR}/data/ai_challenger_scene_test_a_20170922/imgs.txt \
                --test_image_dir=${BASE_DIR}/data/ai_challenger_scene_test_a_20170922/scene_test_a_images_20170922 \
                --pretrained_model_path=${BASE_DIR}/pre_trained/inception_resnet_v2.ckpt

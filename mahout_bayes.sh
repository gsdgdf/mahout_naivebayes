#!/bin/sh
echo "Creating sequence files from yuqing data"
mahout seqdirectory -i ./yuqing_seg -o ./yuqing_seq_new -c UTF-8 -ow

echo "Converting sequence files to vectors"
mahout seq2sparse -i ./yuqing_seq_new -o ./yuqing_vectors_new -lnorm -nv -wt tfidf -ow

echo "Creating training and holdout set with a random 80-20 split of the generated vector dataset"
mahout split -i ./yuqing_vectors_new/tfidf-vectors/ \
--trainingOutput ./yuqing_train_vectors_new \
--testOutput ./yuqing_test_vectors_new \
--randomSelectionPct 40 --overwrite --sequenceFiles -xm sequential

echo "Training Naive Bayes model"
mahout trainnb -i ./yuqing_train_vectors_new -el -o ./yuqing_model_new -li ./yuqing_labelindex_new -ow -c

echo "Self testing on training set"
mahout testnb -i ./yuqing_test_vectors_new -m ./yuqing_model_new -l ./yuqing_labelindex_new -ow -o yuqing_testing_new -c

echo "project end time"
echo $date 

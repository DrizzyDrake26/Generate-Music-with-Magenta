convert_dir_to_note_sequences --input_dir=Dataset --output_file=notesequences.tfrecord --recursive

polyphony_rnn_create_dataset --input=notesequences.tfrecord --output_dir=polyphony_rnn/sequence_examples --eval_ratio=0.10

polyphony_rnn_train --run_dir=polyphony_rnn --sequence_example_file=polyphony_rnn/sequence_examples/training_poly_tracks.tfrecord --hparams="batch_size=128, rnn_layer_sizes=[256,256,256]" --num_training_steps=10000




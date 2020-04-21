
polyphony_rnn_generate --run_dir=polyphony_rnn --hparams="batch_size=128,rnn_layer_sizes=[256,256,256]" --output_dir=polyphony_rnn/generated --num_outputs=25 --num_steps=512 ------primer_pitch="[67,64,60]" --condition_on_primer=true --inject_primer_during_generation=false

$fileDirectory = "C:/Users/Simon/Desktop/Zeug/Python/Magenta/polyphony_rnn/generated";

foreach ($file in Get-ChildItem $fileDirectory) {
    
    $filePath = $fileDirectory + "\" + $file;

    $new_file = $filePath.Replace('mid','wav');

    fluidsynth -T wav -F $new_file -ni C:\Users\Simon\Desktop\Zeug\Python\Magenta\Soundfonts\nintendo_soundfont.sf2 $filePath
    
}
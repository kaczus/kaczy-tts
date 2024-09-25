onnx=$PWD/piper-voices/pl/pl_PL/gosia/medium/pl_PL-gosia-medium.onnx
json=$PWD/piper-voices/pl/pl_PL/gosia/medium/pl_PL-gosia-medium.onnx.json
while read in; do
	echo $in | piper -m $onnx -c $json --output_file - | aplay
done

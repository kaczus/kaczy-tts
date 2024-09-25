onnx=$PWD/piper-voices/pl/pl_PL/gosia/medium/pl_PL-gosia-medium.onnx
json=$PWD/piper-voices/pl/pl_PL/gosia/medium/pl_PL-gosia-medium.onnx.json
[ -n "$1" ] && out="$1" || out="out.mp3"
while read in; do
	echo $in | piper -m $onnx -c $json --output_file -
done | lame --preset cbr 192 - $out

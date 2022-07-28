#!/bin/bash

for i in */intro.md;
do
	cp $i $i.bak
	sed -i -e 's/Challenge/Challenge Lab/g' $i
	sed -i -e 's/Scenario/Lab/g' $i
	sed -i -e 's/his challenge/his challenge lab/g' $i
	sed -i -e 's/hese challenges/hese challenge labs/g' $i
	sed -i -e 's/challenges/challenge labs/g' $i
	sed -i -e 's/challenge lab lab/challenge lab/g' $i
	sed -i -e 's/his scenario/his lab/g' $i
	sed -i -e 's/hese scenarios/hese labs/g' $i
	sed -i -e 's/interactive scenario/interactive lab/g' $i
done

for j in */index.json
do
	sed -i -e 's/challenge@0.8/challenge@0.9/g' $j
	sed -i -e 's/Challenge/Challenge Lab/g' $j
	sed -i -e 's/Scenario/Lab/g' $j
done

for k in */finish.md;
do
        cp $k $k.bak
        sed -i -e 's/Challenge/Challenge Lab/g' $k
        sed -i -e 's/Scenario/Lab/g' $k
        sed -i -e 's/his challenge/his challenge lab/g' $k
        sed -i -e 's/hese challenges/hese challenge labs/g' $k
        sed -i -e 's/challenges/challenge labs/g' $k
        sed -i -e 's/challenge lab lab/challenge lab/g' $k
        sed -i -e 's/his scenario/his lab/g' $k
done

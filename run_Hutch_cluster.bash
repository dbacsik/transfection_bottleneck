#!/bin/bash
snakemake \
    -j 999 \
    --cluster-config cluster.yaml \
    --cluster "sbatch -p {cluster.partition} -c {cluster.cpus} --mem={cluster.mem} -t {cluster.time} -J {cluster.name}" \
    --latency-wait 60

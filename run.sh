
docker run --rm -it --mount type=bind,source=$(pwd),target=/workdir --mount type=bind,source=$(pwd)/deploy,target=/worktmp/deploy -v yoctotmp:/worktmp crops/poky:ubuntu-18.04 --workdir=/workdir --id ${UID}:${GID}


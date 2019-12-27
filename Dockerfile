FROM ubuntu:xenial

# PREPARE, INSTALL, CLEAN
RUN apt-key adv --recv-key --keyserver keys.gnupg.net 79F5CBA4 \
    && echo "deb http://downloads.silentdynamics.de/ubuntu xenial main" >> /etc/apt/sources.list \
    && echo "# deb-src http://downloads.silentdynamics.de/ubuntu xenial main" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y \
        insightcae-base \
        insightcae-cad \
    && rm -rf /var/lib/apt/lists/* \
    && echo "source /usr/bin/insight_setenv.sh" >> /root/.bashrc \
    && echo "source /opt/OpenFOAM/OpenFOAM-v1806/etc/bashrc" >> /root/.bashrc

ENTRYPOINT ["/bin/bash"]

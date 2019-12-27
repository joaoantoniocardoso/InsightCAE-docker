FROM ubuntu:xenial

# PREPARE
RUN apt-key adv --recv-key --keyserver keys.gnupg.net 79F5CBA4 && \
    echo "deb http://downloads.silentdynamics.de/ubuntu xenial main" >> /etc/apt/sources.list && \
    echo "# deb-src http://downloads.silentdynamics.de/ubuntu xenial main" >> /etc/apt/sources.list && \
	apt-get update

# INSTALL
RUN apt-get install -y insightcae-base insightcae-cad
echo "source /usr/bin/insight_setenv.sh" >> /root/.bashrc
echo "source /opt/OpenFOAM/OpenFOAM-v1806/etc/bashrc" >> /root/.bashrc

ENTRYPOINT ["/bin/bash"]

# /usr/share/insight

# /usr/lib/cmake/insightcae
# /usr/share/doc/openfoamesi1806-insightcae
# /usr/share/insight
# /usr/include/insightcae

# /usr/bin/insight.bashrc.OpenFOAM
# /usr/bin/insight_setenv.sh
# /usr/bin/insight.aliases.OpenFOAM
# /usr/bin/insight_isofplottabular_aliases.sh
# /usr/bin/insight.bashrc.of1806
# /usr/bin/insight_aliases.sh
# /usr/bin/insight.profile.OpenFOAM



FROM centos:7
RUN set -ex; \
 curl "http://download.rasdaman.org/packages/rpm/stable/CentOS/7/x86_64/rasdaman.repo" -o /etc/yum.repos.d/rasdaman.repo; \
 yum install -y epel-release; \
 yum install --setopt=obsoletes=0 -y rasdaman
ENV PATH="/opt/rasdaman/bin:${PATH}"
RUN set -ex; \
 useradd rasdaman; \
 mkdir -p /opt/rasdaman/log; \
 chown -R rasdaman /opt/rasdaman; \
 chgrp -R rasdaman /opt/rasdaman; \
 echo "alias q='rasql --user rasadmin --passwd rasadmin --out string -q'" >> /home/rasdaman/.bashrc

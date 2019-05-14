FROM centos:7
RUN set -ex; \
 curl "http://download.rasdaman.org/packages/rpm/stable/CentOS/7/x86_64/rasdaman.repo" -o /etc/yum.repos.d/rasdaman.repo; \
 yum install -y epel-release; \
 yum install --setopt=obsoletes=0 -y rasdaman
ENV PATH="/opt/rasdaman/bin:${PATH}"
RUN create_db.sh

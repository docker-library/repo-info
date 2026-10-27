## `percona:ps-9.7.2-2`

```console
$ docker pull percona@sha256:5e6729e5c4024c0030cb88c62331998247aae5e2577bf088cb13c28c7846cd0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-9.7.2-2` - linux; amd64

```console
$ docker pull percona@sha256:7a14df6ccd3cd814c79e735b27e56e820896bd9923cf125c1b3290f89e09c2f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.1 MB (459112585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97df54abc4f5cf3828567649b6a1e47b9d7fa95561485c2731d42214088587ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:34:11 GMT
ENV container oci
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:0bbd26efdf764fb2a803e39c5f9309efe9ad8dccb284af5b7fa3a1cebd98b694 in /      
# Mon, 26 Oct 2026 21:34:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:34:12 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:33:49Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:33:49Z" "architecture"="x86_64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:33:49Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:40:20 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 27 Oct 2026 17:40:20 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Tue, 27 Oct 2026 17:40:20 GMT
ENV PS_VERSION=9.7.2-2.1
# Tue, 27 Oct 2026 17:40:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1
# Tue, 27 Oct 2026 17:40:20 GMT
ENV OS_VER=el9
# Tue, 27 Oct 2026 17:40:20 GMT
ENV FULL_PERCONA_VERSION=9.7.2-2.1.el9
# Tue, 27 Oct 2026 17:40:20 GMT
ENV FULL_MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 17:40:20 GMT
ENV PS_REPO=testing
# Tue, 27 Oct 2026 17:40:20 GMT
ENV PS_TELEMETRY_VERSION=9.7.2-2-1
# Tue, 27 Oct 2026 17:40:20 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 27 Oct 2026 17:40:20 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Tue, 27 Oct 2026 17:40:20 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 27 Oct 2026 17:40:20 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 27 Oct 2026 17:40:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-97-lts ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Tue, 27 Oct 2026 17:41:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         curl-minimal         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Tue, 27 Oct 2026 17:41:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Tue, 27 Oct 2026 17:41:01 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 27 Oct 2026 17:41:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Tue, 27 Oct 2026 17:41:02 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 27 Oct 2026 17:41:02 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:41:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:41:02 GMT
USER mysql
# Tue, 27 Oct 2026 17:41:02 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 17:41:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8f4a4ef7ec87af1eb84ab8382222fe461e965d7d1c9f8b34dd0890b7009a51bb`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 40.7 MB (40654237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8fbf156a69b57d19a0932ba6d472fc01278b8928fa94e376a4077282663dc13`  
		Last Modified: Tue, 27 Oct 2026 17:41:44 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46a628fc3a6ebe60a8458d9d9597c47bfcb2a8c791d3279fba82c6af955f14b`  
		Last Modified: Tue, 27 Oct 2026 17:41:45 GMT  
		Size: 9.3 MB (9319009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f3e349c2acdd5698df0b6e280266ad587de4bd20c75f0093f082886a554931`  
		Last Modified: Tue, 27 Oct 2026 17:41:52 GMT  
		Size: 409.1 MB (409129608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a822b7ba3ce9d55d7d3a76270a35f47a2e9e610f148be0469b736b9c29205ff`  
		Last Modified: Tue, 27 Oct 2026 17:41:46 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d45a6bb9a7380a9763b29f5c02c5cf819bc88d50d38000afdb1d312d77f5a180`  
		Last Modified: Tue, 27 Oct 2026 17:41:46 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f119b88914810abad98dce21d63560cc4926cd6f4fc6512e70599982b8531c`  
		Last Modified: Tue, 27 Oct 2026 17:41:47 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-9.7.2-2` - unknown; unknown

```console
$ docker pull percona@sha256:9a32dcb1d97ea942a809c82d1feb9af4db5883ec7d0bb9d0a73bc8381514c679
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 KB (29970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9030bff9cebd83abbb43b5ac5edbdf51f19d5990d2c7c30965dfe80c1b4014a1`

```dockerfile
```

-	Layers:
	-	`sha256:25e3cb656efc73082fe0590580482ab7b0d7b24e4900486ecdedec272c42a465`  
		Last Modified: Tue, 27 Oct 2026 17:41:45 GMT  
		Size: 30.0 KB (29970 bytes)  
		MIME: application/vnd.in-toto+json

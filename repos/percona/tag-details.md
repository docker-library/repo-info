<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:8`](#percona8)
-	[`percona:8-centos`](#percona8-centos)
-	[`percona:8.0`](#percona80)
-	[`percona:8.0-centos`](#percona80-centos)
-	[`percona:8.0.46-37`](#percona8046-37)
-	[`percona:8.0.46-37-centos`](#percona8046-37-centos)
-	[`percona:ps-8`](#perconaps-8)
-	[`percona:ps-8.0`](#perconaps-80)
-	[`percona:ps-8.0.46-37`](#perconaps-8046-37)
-	[`percona:psmdb-6.0`](#perconapsmdb-60)
-	[`percona:psmdb-6.0.29`](#perconapsmdb-6029)
-	[`percona:psmdb-7.0`](#perconapsmdb-70)
-	[`percona:psmdb-7.0.37`](#perconapsmdb-7037)
-	[`percona:psmdb-8.0`](#perconapsmdb-80)
-	[`percona:psmdb-8.0.26`](#perconapsmdb-8026)

## `percona:8`

```console
$ docker pull percona@sha256:0b9af1b526935497b900328e6c8732457e72e0249caaa8533adf961aa5afda99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8` - linux; amd64

```console
$ docker pull percona@sha256:5e356516b7df4e48ee6240986f2c00dba321f3c3f50be5b76731a38a3f03a992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (411044122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cf9e0577f860c9939630b5ca656ec0b1555e9e7f11a3a642a856e4884f3ab7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:14 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:14 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_REPO=testing
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:14 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:14 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:19 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 16 Jul 2026 00:20:45 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:45 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:45 GMT
USER mysql
# Thu, 16 Jul 2026 00:20:45 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 00:20:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3f54ec84796f197e1fb462ad1f23cddb548eaf23e8ba4c1526d33a55c00c7f`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f4c9b024acc060fc6587e6bf8ff9dcd8d42d31f350215547eb15316eb4493`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 9.2 MB (9200259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5c6c77b45a1bac32f56946e4d536895e17527c31adb8ed36da820901ff4662`  
		Last Modified: Thu, 16 Jul 2026 00:21:30 GMT  
		Size: 361.1 MB (361145991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339d743b2f1adec8f99f8b7d6269edc2b9be054a35ffd00a58f56cfdce91e055`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13b82a93a9d8b78f8f714f74706a21362de8c1796387815f3c0af2bf13b60fe`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d9219bb06ac0bdda64a07ec2d5e9e8bb6c998e51781eb232a0ca96cade0ceb`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8` - unknown; unknown

```console
$ docker pull percona@sha256:23e3fa01ae8bcda8c9fd594e8542e12a725ee5b44ffef798543729598679a555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86124b03e14c2a90c649a915ae273d12554d8af8731594b069060409ce619214`

```dockerfile
```

-	Layers:
	-	`sha256:738d6795bfe7c83bf48e055af5691ff4b76ddfcbd6e96e83c139d01f1d68e138`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8-centos`

```console
$ docker pull percona@sha256:0b9af1b526935497b900328e6c8732457e72e0249caaa8533adf961aa5afda99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8-centos` - linux; amd64

```console
$ docker pull percona@sha256:5e356516b7df4e48ee6240986f2c00dba321f3c3f50be5b76731a38a3f03a992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (411044122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cf9e0577f860c9939630b5ca656ec0b1555e9e7f11a3a642a856e4884f3ab7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:14 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:14 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_REPO=testing
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:14 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:14 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:19 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 16 Jul 2026 00:20:45 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:45 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:45 GMT
USER mysql
# Thu, 16 Jul 2026 00:20:45 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 00:20:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3f54ec84796f197e1fb462ad1f23cddb548eaf23e8ba4c1526d33a55c00c7f`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f4c9b024acc060fc6587e6bf8ff9dcd8d42d31f350215547eb15316eb4493`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 9.2 MB (9200259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5c6c77b45a1bac32f56946e4d536895e17527c31adb8ed36da820901ff4662`  
		Last Modified: Thu, 16 Jul 2026 00:21:30 GMT  
		Size: 361.1 MB (361145991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339d743b2f1adec8f99f8b7d6269edc2b9be054a35ffd00a58f56cfdce91e055`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13b82a93a9d8b78f8f714f74706a21362de8c1796387815f3c0af2bf13b60fe`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d9219bb06ac0bdda64a07ec2d5e9e8bb6c998e51781eb232a0ca96cade0ceb`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8-centos` - unknown; unknown

```console
$ docker pull percona@sha256:23e3fa01ae8bcda8c9fd594e8542e12a725ee5b44ffef798543729598679a555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86124b03e14c2a90c649a915ae273d12554d8af8731594b069060409ce619214`

```dockerfile
```

-	Layers:
	-	`sha256:738d6795bfe7c83bf48e055af5691ff4b76ddfcbd6e96e83c139d01f1d68e138`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0`

```console
$ docker pull percona@sha256:0b9af1b526935497b900328e6c8732457e72e0249caaa8533adf961aa5afda99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0` - linux; amd64

```console
$ docker pull percona@sha256:5e356516b7df4e48ee6240986f2c00dba321f3c3f50be5b76731a38a3f03a992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (411044122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cf9e0577f860c9939630b5ca656ec0b1555e9e7f11a3a642a856e4884f3ab7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:14 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:14 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_REPO=testing
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:14 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:14 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:19 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 16 Jul 2026 00:20:45 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:45 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:45 GMT
USER mysql
# Thu, 16 Jul 2026 00:20:45 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 00:20:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3f54ec84796f197e1fb462ad1f23cddb548eaf23e8ba4c1526d33a55c00c7f`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f4c9b024acc060fc6587e6bf8ff9dcd8d42d31f350215547eb15316eb4493`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 9.2 MB (9200259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5c6c77b45a1bac32f56946e4d536895e17527c31adb8ed36da820901ff4662`  
		Last Modified: Thu, 16 Jul 2026 00:21:30 GMT  
		Size: 361.1 MB (361145991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339d743b2f1adec8f99f8b7d6269edc2b9be054a35ffd00a58f56cfdce91e055`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13b82a93a9d8b78f8f714f74706a21362de8c1796387815f3c0af2bf13b60fe`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d9219bb06ac0bdda64a07ec2d5e9e8bb6c998e51781eb232a0ca96cade0ceb`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0` - unknown; unknown

```console
$ docker pull percona@sha256:23e3fa01ae8bcda8c9fd594e8542e12a725ee5b44ffef798543729598679a555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86124b03e14c2a90c649a915ae273d12554d8af8731594b069060409ce619214`

```dockerfile
```

-	Layers:
	-	`sha256:738d6795bfe7c83bf48e055af5691ff4b76ddfcbd6e96e83c139d01f1d68e138`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0-centos`

```console
$ docker pull percona@sha256:0b9af1b526935497b900328e6c8732457e72e0249caaa8533adf961aa5afda99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0-centos` - linux; amd64

```console
$ docker pull percona@sha256:5e356516b7df4e48ee6240986f2c00dba321f3c3f50be5b76731a38a3f03a992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (411044122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cf9e0577f860c9939630b5ca656ec0b1555e9e7f11a3a642a856e4884f3ab7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:14 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:14 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_REPO=testing
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:14 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:14 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:19 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 16 Jul 2026 00:20:45 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:45 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:45 GMT
USER mysql
# Thu, 16 Jul 2026 00:20:45 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 00:20:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3f54ec84796f197e1fb462ad1f23cddb548eaf23e8ba4c1526d33a55c00c7f`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f4c9b024acc060fc6587e6bf8ff9dcd8d42d31f350215547eb15316eb4493`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 9.2 MB (9200259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5c6c77b45a1bac32f56946e4d536895e17527c31adb8ed36da820901ff4662`  
		Last Modified: Thu, 16 Jul 2026 00:21:30 GMT  
		Size: 361.1 MB (361145991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339d743b2f1adec8f99f8b7d6269edc2b9be054a35ffd00a58f56cfdce91e055`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13b82a93a9d8b78f8f714f74706a21362de8c1796387815f3c0af2bf13b60fe`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d9219bb06ac0bdda64a07ec2d5e9e8bb6c998e51781eb232a0ca96cade0ceb`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0-centos` - unknown; unknown

```console
$ docker pull percona@sha256:23e3fa01ae8bcda8c9fd594e8542e12a725ee5b44ffef798543729598679a555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86124b03e14c2a90c649a915ae273d12554d8af8731594b069060409ce619214`

```dockerfile
```

-	Layers:
	-	`sha256:738d6795bfe7c83bf48e055af5691ff4b76ddfcbd6e96e83c139d01f1d68e138`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0.46-37`

```console
$ docker pull percona@sha256:0b9af1b526935497b900328e6c8732457e72e0249caaa8533adf961aa5afda99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0.46-37` - linux; amd64

```console
$ docker pull percona@sha256:5e356516b7df4e48ee6240986f2c00dba321f3c3f50be5b76731a38a3f03a992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (411044122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cf9e0577f860c9939630b5ca656ec0b1555e9e7f11a3a642a856e4884f3ab7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:14 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:14 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_REPO=testing
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:14 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:14 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:19 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 16 Jul 2026 00:20:45 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:45 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:45 GMT
USER mysql
# Thu, 16 Jul 2026 00:20:45 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 00:20:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3f54ec84796f197e1fb462ad1f23cddb548eaf23e8ba4c1526d33a55c00c7f`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f4c9b024acc060fc6587e6bf8ff9dcd8d42d31f350215547eb15316eb4493`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 9.2 MB (9200259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5c6c77b45a1bac32f56946e4d536895e17527c31adb8ed36da820901ff4662`  
		Last Modified: Thu, 16 Jul 2026 00:21:30 GMT  
		Size: 361.1 MB (361145991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339d743b2f1adec8f99f8b7d6269edc2b9be054a35ffd00a58f56cfdce91e055`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13b82a93a9d8b78f8f714f74706a21362de8c1796387815f3c0af2bf13b60fe`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d9219bb06ac0bdda64a07ec2d5e9e8bb6c998e51781eb232a0ca96cade0ceb`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0.46-37` - unknown; unknown

```console
$ docker pull percona@sha256:23e3fa01ae8bcda8c9fd594e8542e12a725ee5b44ffef798543729598679a555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86124b03e14c2a90c649a915ae273d12554d8af8731594b069060409ce619214`

```dockerfile
```

-	Layers:
	-	`sha256:738d6795bfe7c83bf48e055af5691ff4b76ddfcbd6e96e83c139d01f1d68e138`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0.46-37-centos`

```console
$ docker pull percona@sha256:0b9af1b526935497b900328e6c8732457e72e0249caaa8533adf961aa5afda99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0.46-37-centos` - linux; amd64

```console
$ docker pull percona@sha256:5e356516b7df4e48ee6240986f2c00dba321f3c3f50be5b76731a38a3f03a992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (411044122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cf9e0577f860c9939630b5ca656ec0b1555e9e7f11a3a642a856e4884f3ab7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:14 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:14 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_REPO=testing
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:14 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:14 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:19 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 16 Jul 2026 00:20:45 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:45 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:45 GMT
USER mysql
# Thu, 16 Jul 2026 00:20:45 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 00:20:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3f54ec84796f197e1fb462ad1f23cddb548eaf23e8ba4c1526d33a55c00c7f`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f4c9b024acc060fc6587e6bf8ff9dcd8d42d31f350215547eb15316eb4493`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 9.2 MB (9200259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5c6c77b45a1bac32f56946e4d536895e17527c31adb8ed36da820901ff4662`  
		Last Modified: Thu, 16 Jul 2026 00:21:30 GMT  
		Size: 361.1 MB (361145991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339d743b2f1adec8f99f8b7d6269edc2b9be054a35ffd00a58f56cfdce91e055`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13b82a93a9d8b78f8f714f74706a21362de8c1796387815f3c0af2bf13b60fe`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d9219bb06ac0bdda64a07ec2d5e9e8bb6c998e51781eb232a0ca96cade0ceb`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0.46-37-centos` - unknown; unknown

```console
$ docker pull percona@sha256:23e3fa01ae8bcda8c9fd594e8542e12a725ee5b44ffef798543729598679a555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86124b03e14c2a90c649a915ae273d12554d8af8731594b069060409ce619214`

```dockerfile
```

-	Layers:
	-	`sha256:738d6795bfe7c83bf48e055af5691ff4b76ddfcbd6e96e83c139d01f1d68e138`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8`

```console
$ docker pull percona@sha256:0b9af1b526935497b900328e6c8732457e72e0249caaa8533adf961aa5afda99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8` - linux; amd64

```console
$ docker pull percona@sha256:5e356516b7df4e48ee6240986f2c00dba321f3c3f50be5b76731a38a3f03a992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (411044122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cf9e0577f860c9939630b5ca656ec0b1555e9e7f11a3a642a856e4884f3ab7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:14 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:14 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_REPO=testing
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:14 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:14 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:19 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 16 Jul 2026 00:20:45 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:45 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:45 GMT
USER mysql
# Thu, 16 Jul 2026 00:20:45 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 00:20:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3f54ec84796f197e1fb462ad1f23cddb548eaf23e8ba4c1526d33a55c00c7f`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f4c9b024acc060fc6587e6bf8ff9dcd8d42d31f350215547eb15316eb4493`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 9.2 MB (9200259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5c6c77b45a1bac32f56946e4d536895e17527c31adb8ed36da820901ff4662`  
		Last Modified: Thu, 16 Jul 2026 00:21:30 GMT  
		Size: 361.1 MB (361145991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339d743b2f1adec8f99f8b7d6269edc2b9be054a35ffd00a58f56cfdce91e055`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13b82a93a9d8b78f8f714f74706a21362de8c1796387815f3c0af2bf13b60fe`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d9219bb06ac0bdda64a07ec2d5e9e8bb6c998e51781eb232a0ca96cade0ceb`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8` - unknown; unknown

```console
$ docker pull percona@sha256:23e3fa01ae8bcda8c9fd594e8542e12a725ee5b44ffef798543729598679a555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86124b03e14c2a90c649a915ae273d12554d8af8731594b069060409ce619214`

```dockerfile
```

-	Layers:
	-	`sha256:738d6795bfe7c83bf48e055af5691ff4b76ddfcbd6e96e83c139d01f1d68e138`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8.0`

```console
$ docker pull percona@sha256:0b9af1b526935497b900328e6c8732457e72e0249caaa8533adf961aa5afda99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0` - linux; amd64

```console
$ docker pull percona@sha256:5e356516b7df4e48ee6240986f2c00dba321f3c3f50be5b76731a38a3f03a992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (411044122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cf9e0577f860c9939630b5ca656ec0b1555e9e7f11a3a642a856e4884f3ab7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:14 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:14 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_REPO=testing
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:14 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:14 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:19 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 16 Jul 2026 00:20:45 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:45 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:45 GMT
USER mysql
# Thu, 16 Jul 2026 00:20:45 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 00:20:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3f54ec84796f197e1fb462ad1f23cddb548eaf23e8ba4c1526d33a55c00c7f`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f4c9b024acc060fc6587e6bf8ff9dcd8d42d31f350215547eb15316eb4493`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 9.2 MB (9200259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5c6c77b45a1bac32f56946e4d536895e17527c31adb8ed36da820901ff4662`  
		Last Modified: Thu, 16 Jul 2026 00:21:30 GMT  
		Size: 361.1 MB (361145991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339d743b2f1adec8f99f8b7d6269edc2b9be054a35ffd00a58f56cfdce91e055`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13b82a93a9d8b78f8f714f74706a21362de8c1796387815f3c0af2bf13b60fe`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d9219bb06ac0bdda64a07ec2d5e9e8bb6c998e51781eb232a0ca96cade0ceb`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:23e3fa01ae8bcda8c9fd594e8542e12a725ee5b44ffef798543729598679a555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86124b03e14c2a90c649a915ae273d12554d8af8731594b069060409ce619214`

```dockerfile
```

-	Layers:
	-	`sha256:738d6795bfe7c83bf48e055af5691ff4b76ddfcbd6e96e83c139d01f1d68e138`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8.0.46-37`

```console
$ docker pull percona@sha256:0b9af1b526935497b900328e6c8732457e72e0249caaa8533adf961aa5afda99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0.46-37` - linux; amd64

```console
$ docker pull percona@sha256:5e356516b7df4e48ee6240986f2c00dba321f3c3f50be5b76731a38a3f03a992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (411044122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cf9e0577f860c9939630b5ca656ec0b1555e9e7f11a3a642a856e4884f3ab7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:14 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:14 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_REPO=testing
# Thu, 16 Jul 2026 00:20:14 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:14 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 16 Jul 2026 00:20:14 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:14 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:19 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 16 Jul 2026 00:20:44 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 16 Jul 2026 00:20:45 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:45 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:45 GMT
USER mysql
# Thu, 16 Jul 2026 00:20:45 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 00:20:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3f54ec84796f197e1fb462ad1f23cddb548eaf23e8ba4c1526d33a55c00c7f`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f4c9b024acc060fc6587e6bf8ff9dcd8d42d31f350215547eb15316eb4493`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 9.2 MB (9200259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5c6c77b45a1bac32f56946e4d536895e17527c31adb8ed36da820901ff4662`  
		Last Modified: Thu, 16 Jul 2026 00:21:30 GMT  
		Size: 361.1 MB (361145991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339d743b2f1adec8f99f8b7d6269edc2b9be054a35ffd00a58f56cfdce91e055`  
		Last Modified: Thu, 16 Jul 2026 00:21:23 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13b82a93a9d8b78f8f714f74706a21362de8c1796387815f3c0af2bf13b60fe`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d9219bb06ac0bdda64a07ec2d5e9e8bb6c998e51781eb232a0ca96cade0ceb`  
		Last Modified: Thu, 16 Jul 2026 00:21:24 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0.46-37` - unknown; unknown

```console
$ docker pull percona@sha256:23e3fa01ae8bcda8c9fd594e8542e12a725ee5b44ffef798543729598679a555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86124b03e14c2a90c649a915ae273d12554d8af8731594b069060409ce619214`

```dockerfile
```

-	Layers:
	-	`sha256:738d6795bfe7c83bf48e055af5691ff4b76ddfcbd6e96e83c139d01f1d68e138`  
		Last Modified: Thu, 16 Jul 2026 00:21:22 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-6.0`

```console
$ docker pull percona@sha256:8643954e285a34e2f1a5dcad131eddf9829450273af73bf6eaf6bc5603d0cacf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0` - linux; amd64

```console
$ docker pull percona@sha256:743c8e56e3070e7a15922fdd0dbe2809b2de1adf6988d0c418d2f1a552dec332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279037826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c89539389298120b586c81a19ed5699008e9490a044285a4792780847ea145`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:19 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:19 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 16 Jul 2026 00:20:19 GMT
ENV PSMDB_VERSION=6.0.29-23
# Thu, 16 Jul 2026 00:20:19 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:19 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Thu, 16 Jul 2026 00:20:19 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 16 Jul 2026 00:20:19 GMT
ENV PSMDB_REPO=release
# Thu, 16 Jul 2026 00:20:19 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:19 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:19 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:33 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 16 Jul 2026 00:20:33 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 16 Jul 2026 00:20:34 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 16 Jul 2026 00:20:34 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 16 Jul 2026 00:20:34 GMT
ENV GOSU_VERSION=1.11
# Thu, 16 Jul 2026 00:20:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 16 Jul 2026 00:20:35 GMT
VOLUME [/data/db]
# Thu, 16 Jul 2026 00:20:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:36 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:36 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 16 Jul 2026 00:20:36 GMT
USER 1001
# Thu, 16 Jul 2026 00:20:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e878622a22c8a69b957d9c316fbc77c197c33895781903c71167c15600bc06`  
		Last Modified: Thu, 16 Jul 2026 00:21:02 GMT  
		Size: 8.8 MB (8822716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3dc7d039b2034744c1b300a998a702189259068055314ac6b29906691f13f37`  
		Last Modified: Thu, 16 Jul 2026 00:21:06 GMT  
		Size: 228.6 MB (228574006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5de1765a4f4fc2629293b262b1cfe265e88ab5d7df2059e3a8cf595a9de8f7`  
		Last Modified: Thu, 16 Jul 2026 00:21:01 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d0946a23ba824cb0b4a1703c3d4419d0f5274763624a93e8c8999180f625423`  
		Last Modified: Thu, 16 Jul 2026 00:21:01 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d948c81b743e3839e1f1b54aa3aab957ba170858211317de59e762640d5cc4`  
		Last Modified: Thu, 16 Jul 2026 00:21:03 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f65d6a3e452b51f591ac454fd22534fc37ed988fd96dc667d96bd3c7feef47`  
		Last Modified: Thu, 16 Jul 2026 00:21:03 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ab233df95f453b55323f2a77b3d8aeecbc7eee5c2366b480dbd84af30c80d1`  
		Last Modified: Thu, 16 Jul 2026 00:21:03 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63fe3bedd0750b0bf3cef674cf661afca7819541b0efca86a37b0c654d0880f3`  
		Last Modified: Thu, 16 Jul 2026 00:21:04 GMT  
		Size: 4.0 KB (3958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1991cc75acba70f55348b786e4cd7dad278b5f1bc4fffcc89fdf1a0fc436b93b`  
		Last Modified: Thu, 16 Jul 2026 00:21:04 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0` - unknown; unknown

```console
$ docker pull percona@sha256:8538a7852486b0b466448518ebbf682f196dc9f7dc5664a7f419f09be729a14a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa23a75544fbb904b2966f4da9fec9f7de9fe8b31161d63bae58c459a0fe964`

```dockerfile
```

-	Layers:
	-	`sha256:72bb307574e503a78fc632ea22d8abe0f41ff6c87c4b61317f966f64d69f86d8`  
		Last Modified: Thu, 16 Jul 2026 00:21:01 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-6.0.29`

```console
$ docker pull percona@sha256:8643954e285a34e2f1a5dcad131eddf9829450273af73bf6eaf6bc5603d0cacf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0.29` - linux; amd64

```console
$ docker pull percona@sha256:743c8e56e3070e7a15922fdd0dbe2809b2de1adf6988d0c418d2f1a552dec332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279037826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c89539389298120b586c81a19ed5699008e9490a044285a4792780847ea145`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:19 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:19 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 16 Jul 2026 00:20:19 GMT
ENV PSMDB_VERSION=6.0.29-23
# Thu, 16 Jul 2026 00:20:19 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:19 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Thu, 16 Jul 2026 00:20:19 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 16 Jul 2026 00:20:19 GMT
ENV PSMDB_REPO=release
# Thu, 16 Jul 2026 00:20:19 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:19 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:19 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:33 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 16 Jul 2026 00:20:33 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 16 Jul 2026 00:20:34 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 16 Jul 2026 00:20:34 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 16 Jul 2026 00:20:34 GMT
ENV GOSU_VERSION=1.11
# Thu, 16 Jul 2026 00:20:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 16 Jul 2026 00:20:35 GMT
VOLUME [/data/db]
# Thu, 16 Jul 2026 00:20:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:36 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:36 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 16 Jul 2026 00:20:36 GMT
USER 1001
# Thu, 16 Jul 2026 00:20:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e878622a22c8a69b957d9c316fbc77c197c33895781903c71167c15600bc06`  
		Last Modified: Thu, 16 Jul 2026 00:21:02 GMT  
		Size: 8.8 MB (8822716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3dc7d039b2034744c1b300a998a702189259068055314ac6b29906691f13f37`  
		Last Modified: Thu, 16 Jul 2026 00:21:06 GMT  
		Size: 228.6 MB (228574006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5de1765a4f4fc2629293b262b1cfe265e88ab5d7df2059e3a8cf595a9de8f7`  
		Last Modified: Thu, 16 Jul 2026 00:21:01 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d0946a23ba824cb0b4a1703c3d4419d0f5274763624a93e8c8999180f625423`  
		Last Modified: Thu, 16 Jul 2026 00:21:01 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d948c81b743e3839e1f1b54aa3aab957ba170858211317de59e762640d5cc4`  
		Last Modified: Thu, 16 Jul 2026 00:21:03 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f65d6a3e452b51f591ac454fd22534fc37ed988fd96dc667d96bd3c7feef47`  
		Last Modified: Thu, 16 Jul 2026 00:21:03 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ab233df95f453b55323f2a77b3d8aeecbc7eee5c2366b480dbd84af30c80d1`  
		Last Modified: Thu, 16 Jul 2026 00:21:03 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63fe3bedd0750b0bf3cef674cf661afca7819541b0efca86a37b0c654d0880f3`  
		Last Modified: Thu, 16 Jul 2026 00:21:04 GMT  
		Size: 4.0 KB (3958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1991cc75acba70f55348b786e4cd7dad278b5f1bc4fffcc89fdf1a0fc436b93b`  
		Last Modified: Thu, 16 Jul 2026 00:21:04 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0.29` - unknown; unknown

```console
$ docker pull percona@sha256:8538a7852486b0b466448518ebbf682f196dc9f7dc5664a7f419f09be729a14a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa23a75544fbb904b2966f4da9fec9f7de9fe8b31161d63bae58c459a0fe964`

```dockerfile
```

-	Layers:
	-	`sha256:72bb307574e503a78fc632ea22d8abe0f41ff6c87c4b61317f966f64d69f86d8`  
		Last Modified: Thu, 16 Jul 2026 00:21:01 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-7.0`

```console
$ docker pull percona@sha256:bc7526c6d802dedaa9e98a999e9f8a28c5be8ecf37e26336a049c99db21e3b2b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0` - linux; amd64

```console
$ docker pull percona@sha256:af77a270b34aa0257552335f8e1ea99b7157faf31e3f242651d51c181b5cc8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.6 MB (300578179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c077cea4ea3b153b41fff5649111c44385d3876b965f33d67a9c8686d7fe208`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:21 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:21 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 16 Jul 2026 00:20:21 GMT
ENV PSMDB_VERSION=7.0.37-20
# Thu, 16 Jul 2026 00:20:21 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:21 GMT
ENV FULL_PERCONA_VERSION=7.0.37-20.el9
# Thu, 16 Jul 2026 00:20:21 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 16 Jul 2026 00:20:21 GMT
ENV PSMDB_REPO=release
# Thu, 16 Jul 2026 00:20:21 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:21 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:21 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
ENV GOSU_VERSION=1.11
# Thu, 16 Jul 2026 00:20:37 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 16 Jul 2026 00:20:37 GMT
VOLUME [/data/db]
# Thu, 16 Jul 2026 00:20:37 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 16 Jul 2026 00:20:38 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:38 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:38 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:38 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 16 Jul 2026 00:20:38 GMT
USER 1001
# Thu, 16 Jul 2026 00:20:38 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fe953d207630af46f537398760af5113bc62857a09e8f568f0a83e1fdd0c70`  
		Last Modified: Thu, 16 Jul 2026 00:21:09 GMT  
		Size: 8.8 MB (8818419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acca8354762e7aa630ad396b1b1d84233181ca2da04dbaeb4cb0d31a29b93710`  
		Last Modified: Thu, 16 Jul 2026 00:21:13 GMT  
		Size: 250.1 MB (250118652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0817dad9532ddbc707dbdd65feb52e6aad58053bcf602aefeb32febe2328181d`  
		Last Modified: Thu, 16 Jul 2026 00:21:08 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b02b9d123d14b7b090666f123ab70cf47e549f88fd1eafca3de24d79341bf3dc`  
		Last Modified: Thu, 16 Jul 2026 00:21:08 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96a67f604ddec5363a44d3a41aa49c2ad041a7a13862db806b24594c5a324c8`  
		Last Modified: Thu, 16 Jul 2026 00:21:09 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a55d3f595bf1b4f330325625ad2a0ac2ac203db0484a4d7fc31a3553629e4a6`  
		Last Modified: Thu, 16 Jul 2026 00:21:09 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dacdb500ea4bfd5b6d13cbdcb094405da9c72f918282557eea765ce1ea86675`  
		Last Modified: Thu, 16 Jul 2026 00:21:10 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9caad28a3a2eedb28a891e3cb4ffbe4e5234e324e93740af7bb352823e919f`  
		Last Modified: Thu, 16 Jul 2026 00:21:10 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76fa495d7df3af8c33220f1b413c0b15c0907fb8ebd6f82be31ee23e6f81b3e`  
		Last Modified: Thu, 16 Jul 2026 00:21:11 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0` - unknown; unknown

```console
$ docker pull percona@sha256:1df4f853f33843ebe8fe180d837a8fe20df741263f71971813ae79a60dd5ef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384e34fbd83e205cc2c9156f1af2dd8ca0fee69a4bb17faa4631c454707c7785`

```dockerfile
```

-	Layers:
	-	`sha256:8bd2f2610cd314be9d2a74060f61b8a161f5fa32529b28efb7356903c368a7c2`  
		Last Modified: Thu, 16 Jul 2026 00:21:08 GMT  
		Size: 32.4 KB (32369 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-7.0.37`

```console
$ docker pull percona@sha256:bc7526c6d802dedaa9e98a999e9f8a28c5be8ecf37e26336a049c99db21e3b2b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0.37` - linux; amd64

```console
$ docker pull percona@sha256:af77a270b34aa0257552335f8e1ea99b7157faf31e3f242651d51c181b5cc8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.6 MB (300578179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c077cea4ea3b153b41fff5649111c44385d3876b965f33d67a9c8686d7fe208`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:21 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:21 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 16 Jul 2026 00:20:21 GMT
ENV PSMDB_VERSION=7.0.37-20
# Thu, 16 Jul 2026 00:20:21 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:21 GMT
ENV FULL_PERCONA_VERSION=7.0.37-20.el9
# Thu, 16 Jul 2026 00:20:21 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 16 Jul 2026 00:20:21 GMT
ENV PSMDB_REPO=release
# Thu, 16 Jul 2026 00:20:21 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:21 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:21 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
ENV GOSU_VERSION=1.11
# Thu, 16 Jul 2026 00:20:37 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 16 Jul 2026 00:20:37 GMT
VOLUME [/data/db]
# Thu, 16 Jul 2026 00:20:37 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 16 Jul 2026 00:20:38 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:38 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:38 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:38 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 16 Jul 2026 00:20:38 GMT
USER 1001
# Thu, 16 Jul 2026 00:20:38 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fe953d207630af46f537398760af5113bc62857a09e8f568f0a83e1fdd0c70`  
		Last Modified: Thu, 16 Jul 2026 00:21:09 GMT  
		Size: 8.8 MB (8818419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acca8354762e7aa630ad396b1b1d84233181ca2da04dbaeb4cb0d31a29b93710`  
		Last Modified: Thu, 16 Jul 2026 00:21:13 GMT  
		Size: 250.1 MB (250118652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0817dad9532ddbc707dbdd65feb52e6aad58053bcf602aefeb32febe2328181d`  
		Last Modified: Thu, 16 Jul 2026 00:21:08 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b02b9d123d14b7b090666f123ab70cf47e549f88fd1eafca3de24d79341bf3dc`  
		Last Modified: Thu, 16 Jul 2026 00:21:08 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96a67f604ddec5363a44d3a41aa49c2ad041a7a13862db806b24594c5a324c8`  
		Last Modified: Thu, 16 Jul 2026 00:21:09 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a55d3f595bf1b4f330325625ad2a0ac2ac203db0484a4d7fc31a3553629e4a6`  
		Last Modified: Thu, 16 Jul 2026 00:21:09 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dacdb500ea4bfd5b6d13cbdcb094405da9c72f918282557eea765ce1ea86675`  
		Last Modified: Thu, 16 Jul 2026 00:21:10 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9caad28a3a2eedb28a891e3cb4ffbe4e5234e324e93740af7bb352823e919f`  
		Last Modified: Thu, 16 Jul 2026 00:21:10 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76fa495d7df3af8c33220f1b413c0b15c0907fb8ebd6f82be31ee23e6f81b3e`  
		Last Modified: Thu, 16 Jul 2026 00:21:11 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0.37` - unknown; unknown

```console
$ docker pull percona@sha256:1df4f853f33843ebe8fe180d837a8fe20df741263f71971813ae79a60dd5ef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384e34fbd83e205cc2c9156f1af2dd8ca0fee69a4bb17faa4631c454707c7785`

```dockerfile
```

-	Layers:
	-	`sha256:8bd2f2610cd314be9d2a74060f61b8a161f5fa32529b28efb7356903c368a7c2`  
		Last Modified: Thu, 16 Jul 2026 00:21:08 GMT  
		Size: 32.4 KB (32369 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.0`

```console
$ docker pull percona@sha256:dd4b597b62f0c2bc9a5ed1c80704bc19d71307ab5d3e1e52511bfa457a2ad74c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0` - linux; amd64

```console
$ docker pull percona@sha256:4abdcbcafcfeedd739e0b5a5d5b0b4f81da2ddf91070110f0ad513018229c92b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.7 MB (320719013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae8f08f1d6af9e245aa42f8888df1492f2bc193f9c32a1a5575609ad650a92e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:10 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:10 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 16 Jul 2026 00:20:10 GMT
ENV PSMDB_VERSION=8.0.26-11
# Thu, 16 Jul 2026 00:20:10 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:10 GMT
ENV FULL_PERCONA_VERSION=8.0.26-11.el9
# Thu, 16 Jul 2026 00:20:10 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 16 Jul 2026 00:20:10 GMT
ENV PSMDB_REPO=testing
# Thu, 16 Jul 2026 00:20:10 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Thu, 16 Jul 2026 00:20:10 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:10 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:10 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 16 Jul 2026 00:20:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 16 Jul 2026 00:20:25 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 16 Jul 2026 00:20:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 16 Jul 2026 00:20:25 GMT
ENV GOSU_VERSION=1.11
# Thu, 16 Jul 2026 00:20:27 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 16 Jul 2026 00:20:27 GMT
VOLUME [/data/db]
# Thu, 16 Jul 2026 00:20:28 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 16 Jul 2026 00:20:28 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:28 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:28 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:28 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 16 Jul 2026 00:20:28 GMT
USER 1001
# Thu, 16 Jul 2026 00:20:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b6b353d18cbf73d80147ef83abe4750dd8e24a64488e55787d4c5e9b515fbc`  
		Last Modified: Thu, 16 Jul 2026 00:20:59 GMT  
		Size: 8.8 MB (8818433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a84fce823d9e5d1b8e102ce6ac78f6a4ed3e338819558b451ee67caa681cdc1`  
		Last Modified: Thu, 16 Jul 2026 00:21:04 GMT  
		Size: 270.3 MB (270259474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf422d796a2fb5ccd9be489bbf51e5203812baf9a0fcc07505263bfe2bbc73f`  
		Last Modified: Thu, 16 Jul 2026 00:20:58 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1262597b4a53d6f5a08fe814cee5ed4ad1f99975793682ec6700fd0b77976f2`  
		Last Modified: Thu, 16 Jul 2026 00:21:00 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d24f136dd5259615e71f4d0e924b9b290e356d771bc44100bfa31f76c35dde`  
		Last Modified: Thu, 16 Jul 2026 00:21:00 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10165b9ad54b1c4e888f77ead4ea59991f07398e8807d7d930cdee7136f4c224`  
		Last Modified: Thu, 16 Jul 2026 00:21:01 GMT  
		Size: 914.5 KB (914519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f9ec6be0fc346f0fa4dbe9634799a2067354b6a9ba79eedb7def4f2b52b291a`  
		Last Modified: Thu, 16 Jul 2026 00:21:01 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edf209a28045882c94179094b1a7fe61f583f31fbf427d5cfe819d64e522fd42`  
		Last Modified: Thu, 16 Jul 2026 00:21:02 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50af325a9797def9c6650ebc39aebd8c6ffcae96121a14a1218bd95c40002f6`  
		Last Modified: Thu, 16 Jul 2026 00:21:02 GMT  
		Size: 5.0 KB (4965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:9e4df763cb5efcb05d629107391b75a53c29640f22932709d4a38684782de7d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b17125b3205b52c95af47e43e1348be9eb9ff16daddc82f836dbb448a343e52`

```dockerfile
```

-	Layers:
	-	`sha256:8a1b0f3ce00a944cbfca4b6bc9da2276884a8180a9c0028581502fa282d5fbab`  
		Last Modified: Thu, 16 Jul 2026 00:20:58 GMT  
		Size: 32.7 KB (32672 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.0.26`

```console
$ docker pull percona@sha256:dd4b597b62f0c2bc9a5ed1c80704bc19d71307ab5d3e1e52511bfa457a2ad74c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0.26` - linux; amd64

```console
$ docker pull percona@sha256:4abdcbcafcfeedd739e0b5a5d5b0b4f81da2ddf91070110f0ad513018229c92b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.7 MB (320719013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae8f08f1d6af9e245aa42f8888df1492f2bc193f9c32a1a5575609ad650a92e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:10 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:10 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 16 Jul 2026 00:20:10 GMT
ENV PSMDB_VERSION=8.0.26-11
# Thu, 16 Jul 2026 00:20:10 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:10 GMT
ENV FULL_PERCONA_VERSION=8.0.26-11.el9
# Thu, 16 Jul 2026 00:20:10 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 16 Jul 2026 00:20:10 GMT
ENV PSMDB_REPO=testing
# Thu, 16 Jul 2026 00:20:10 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Thu, 16 Jul 2026 00:20:10 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:10 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:10 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 16 Jul 2026 00:20:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 16 Jul 2026 00:20:25 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 16 Jul 2026 00:20:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 16 Jul 2026 00:20:25 GMT
ENV GOSU_VERSION=1.11
# Thu, 16 Jul 2026 00:20:27 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 16 Jul 2026 00:20:27 GMT
VOLUME [/data/db]
# Thu, 16 Jul 2026 00:20:28 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 16 Jul 2026 00:20:28 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:28 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:28 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:28 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 16 Jul 2026 00:20:28 GMT
USER 1001
# Thu, 16 Jul 2026 00:20:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b6b353d18cbf73d80147ef83abe4750dd8e24a64488e55787d4c5e9b515fbc`  
		Last Modified: Thu, 16 Jul 2026 00:20:59 GMT  
		Size: 8.8 MB (8818433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a84fce823d9e5d1b8e102ce6ac78f6a4ed3e338819558b451ee67caa681cdc1`  
		Last Modified: Thu, 16 Jul 2026 00:21:04 GMT  
		Size: 270.3 MB (270259474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf422d796a2fb5ccd9be489bbf51e5203812baf9a0fcc07505263bfe2bbc73f`  
		Last Modified: Thu, 16 Jul 2026 00:20:58 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1262597b4a53d6f5a08fe814cee5ed4ad1f99975793682ec6700fd0b77976f2`  
		Last Modified: Thu, 16 Jul 2026 00:21:00 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d24f136dd5259615e71f4d0e924b9b290e356d771bc44100bfa31f76c35dde`  
		Last Modified: Thu, 16 Jul 2026 00:21:00 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10165b9ad54b1c4e888f77ead4ea59991f07398e8807d7d930cdee7136f4c224`  
		Last Modified: Thu, 16 Jul 2026 00:21:01 GMT  
		Size: 914.5 KB (914519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f9ec6be0fc346f0fa4dbe9634799a2067354b6a9ba79eedb7def4f2b52b291a`  
		Last Modified: Thu, 16 Jul 2026 00:21:01 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edf209a28045882c94179094b1a7fe61f583f31fbf427d5cfe819d64e522fd42`  
		Last Modified: Thu, 16 Jul 2026 00:21:02 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50af325a9797def9c6650ebc39aebd8c6ffcae96121a14a1218bd95c40002f6`  
		Last Modified: Thu, 16 Jul 2026 00:21:02 GMT  
		Size: 5.0 KB (4965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0.26` - unknown; unknown

```console
$ docker pull percona@sha256:9e4df763cb5efcb05d629107391b75a53c29640f22932709d4a38684782de7d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b17125b3205b52c95af47e43e1348be9eb9ff16daddc82f836dbb448a343e52`

```dockerfile
```

-	Layers:
	-	`sha256:8a1b0f3ce00a944cbfca4b6bc9da2276884a8180a9c0028581502fa282d5fbab`  
		Last Modified: Thu, 16 Jul 2026 00:20:58 GMT  
		Size: 32.7 KB (32672 bytes)  
		MIME: application/vnd.in-toto+json

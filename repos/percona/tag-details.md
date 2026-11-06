<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:8`](#percona8)
-	[`percona:8-centos`](#percona8-centos)
-	[`percona:8.0`](#percona80)
-	[`percona:8.0-centos`](#percona80-centos)
-	[`percona:8.0.46-37`](#percona8046-37)
-	[`percona:8.0.46-37-centos`](#percona8046-37-centos)
-	[`percona:9`](#percona9)
-	[`percona:9.7`](#percona97)
-	[`percona:9.7.2-2`](#percona972-2)
-	[`percona:ps-8`](#perconaps-8)
-	[`percona:ps-8.0`](#perconaps-80)
-	[`percona:ps-8.0.46-37`](#perconaps-8046-37)
-	[`percona:ps-9`](#perconaps-9)
-	[`percona:ps-9.7`](#perconaps-97)
-	[`percona:ps-9.7.2-2`](#perconaps-972-2)
-	[`percona:psmdb-6.0`](#perconapsmdb-60)
-	[`percona:psmdb-6.0.29`](#perconapsmdb-6029)
-	[`percona:psmdb-7.0`](#perconapsmdb-70)
-	[`percona:psmdb-7.0.45`](#perconapsmdb-7045)
-	[`percona:psmdb-8.0`](#perconapsmdb-80)
-	[`percona:psmdb-8.0.34`](#perconapsmdb-8034)
-	[`percona:psmdb-8.3`](#perconapsmdb-83)
-	[`percona:psmdb-8.3.13`](#perconapsmdb-8313)

## `percona:8`

```console
$ docker pull percona@sha256:faaebdf1e0c8eb9c216c46157dfd4bab076a7df5c29076b033d2fec5ccd2c7e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8` - linux; amd64

```console
$ docker pull percona@sha256:c4373e35f1df80848fbc4e45f2df1cf9ef4d75f40ceb858828a8b3b6d4ed14fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411537643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e60af06460b172679a77914b9d16e8a76ae684174c175e8ba4e3d517c39ac7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:46:56 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:46:56 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:46:56 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:46:56 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:47:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:47:36 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:47:36 GMT
USER mysql
# Thu, 05 Nov 2026 22:47:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e06d71b5c5fc004f2413cd216daa0e74f2030f53c51becd958e027d882b0b11`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826ba5ad08852c4bdd9f1df2f7faa02fed252510d7cc7c82f0023fe32ea2106d`  
		Last Modified: Thu, 05 Nov 2026 22:48:14 GMT  
		Size: 9.3 MB (9333554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e7a1190c00213bf087dc5ac42c681188003c21a9cb65db1c15c39e398c1066`  
		Last Modified: Thu, 05 Nov 2026 22:48:21 GMT  
		Size: 361.5 MB (361537586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4ebe6da5958481e75ba5f32b26768e42872efbfae77f12cbb2cdd5bb79c0d1`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade53ba08137d1a7f24d10be7dda053c64316f1f37276766319eaf645d9bc93a`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b1c28b4903702bb13df310b3bd1a16491d0a15a7c366b9c6a169047c31f465`  
		Last Modified: Thu, 05 Nov 2026 22:48:16 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8` - unknown; unknown

```console
$ docker pull percona@sha256:ed7a3777df39a26ac436dba3e73063ffb5753af9eb1b19aeb235db202aa37b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945edc7e965129bf07d4fdfb4e9d53571d7d9a81e5b8659895966cab8e95ea38`

```dockerfile
```

-	Layers:
	-	`sha256:346beee64d3c7723613c52bfb5c61eca854e1893190f70af4f0bf4e2b434c341`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8-centos`

```console
$ docker pull percona@sha256:faaebdf1e0c8eb9c216c46157dfd4bab076a7df5c29076b033d2fec5ccd2c7e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8-centos` - linux; amd64

```console
$ docker pull percona@sha256:c4373e35f1df80848fbc4e45f2df1cf9ef4d75f40ceb858828a8b3b6d4ed14fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411537643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e60af06460b172679a77914b9d16e8a76ae684174c175e8ba4e3d517c39ac7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:46:56 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:46:56 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:46:56 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:46:56 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:47:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:47:36 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:47:36 GMT
USER mysql
# Thu, 05 Nov 2026 22:47:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e06d71b5c5fc004f2413cd216daa0e74f2030f53c51becd958e027d882b0b11`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826ba5ad08852c4bdd9f1df2f7faa02fed252510d7cc7c82f0023fe32ea2106d`  
		Last Modified: Thu, 05 Nov 2026 22:48:14 GMT  
		Size: 9.3 MB (9333554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e7a1190c00213bf087dc5ac42c681188003c21a9cb65db1c15c39e398c1066`  
		Last Modified: Thu, 05 Nov 2026 22:48:21 GMT  
		Size: 361.5 MB (361537586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4ebe6da5958481e75ba5f32b26768e42872efbfae77f12cbb2cdd5bb79c0d1`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade53ba08137d1a7f24d10be7dda053c64316f1f37276766319eaf645d9bc93a`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b1c28b4903702bb13df310b3bd1a16491d0a15a7c366b9c6a169047c31f465`  
		Last Modified: Thu, 05 Nov 2026 22:48:16 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8-centos` - unknown; unknown

```console
$ docker pull percona@sha256:ed7a3777df39a26ac436dba3e73063ffb5753af9eb1b19aeb235db202aa37b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945edc7e965129bf07d4fdfb4e9d53571d7d9a81e5b8659895966cab8e95ea38`

```dockerfile
```

-	Layers:
	-	`sha256:346beee64d3c7723613c52bfb5c61eca854e1893190f70af4f0bf4e2b434c341`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0`

```console
$ docker pull percona@sha256:faaebdf1e0c8eb9c216c46157dfd4bab076a7df5c29076b033d2fec5ccd2c7e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0` - linux; amd64

```console
$ docker pull percona@sha256:c4373e35f1df80848fbc4e45f2df1cf9ef4d75f40ceb858828a8b3b6d4ed14fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411537643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e60af06460b172679a77914b9d16e8a76ae684174c175e8ba4e3d517c39ac7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:46:56 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:46:56 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:46:56 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:46:56 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:47:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:47:36 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:47:36 GMT
USER mysql
# Thu, 05 Nov 2026 22:47:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e06d71b5c5fc004f2413cd216daa0e74f2030f53c51becd958e027d882b0b11`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826ba5ad08852c4bdd9f1df2f7faa02fed252510d7cc7c82f0023fe32ea2106d`  
		Last Modified: Thu, 05 Nov 2026 22:48:14 GMT  
		Size: 9.3 MB (9333554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e7a1190c00213bf087dc5ac42c681188003c21a9cb65db1c15c39e398c1066`  
		Last Modified: Thu, 05 Nov 2026 22:48:21 GMT  
		Size: 361.5 MB (361537586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4ebe6da5958481e75ba5f32b26768e42872efbfae77f12cbb2cdd5bb79c0d1`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade53ba08137d1a7f24d10be7dda053c64316f1f37276766319eaf645d9bc93a`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b1c28b4903702bb13df310b3bd1a16491d0a15a7c366b9c6a169047c31f465`  
		Last Modified: Thu, 05 Nov 2026 22:48:16 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0` - unknown; unknown

```console
$ docker pull percona@sha256:ed7a3777df39a26ac436dba3e73063ffb5753af9eb1b19aeb235db202aa37b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945edc7e965129bf07d4fdfb4e9d53571d7d9a81e5b8659895966cab8e95ea38`

```dockerfile
```

-	Layers:
	-	`sha256:346beee64d3c7723613c52bfb5c61eca854e1893190f70af4f0bf4e2b434c341`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0-centos`

```console
$ docker pull percona@sha256:faaebdf1e0c8eb9c216c46157dfd4bab076a7df5c29076b033d2fec5ccd2c7e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0-centos` - linux; amd64

```console
$ docker pull percona@sha256:c4373e35f1df80848fbc4e45f2df1cf9ef4d75f40ceb858828a8b3b6d4ed14fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411537643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e60af06460b172679a77914b9d16e8a76ae684174c175e8ba4e3d517c39ac7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:46:56 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:46:56 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:46:56 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:46:56 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:47:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:47:36 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:47:36 GMT
USER mysql
# Thu, 05 Nov 2026 22:47:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e06d71b5c5fc004f2413cd216daa0e74f2030f53c51becd958e027d882b0b11`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826ba5ad08852c4bdd9f1df2f7faa02fed252510d7cc7c82f0023fe32ea2106d`  
		Last Modified: Thu, 05 Nov 2026 22:48:14 GMT  
		Size: 9.3 MB (9333554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e7a1190c00213bf087dc5ac42c681188003c21a9cb65db1c15c39e398c1066`  
		Last Modified: Thu, 05 Nov 2026 22:48:21 GMT  
		Size: 361.5 MB (361537586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4ebe6da5958481e75ba5f32b26768e42872efbfae77f12cbb2cdd5bb79c0d1`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade53ba08137d1a7f24d10be7dda053c64316f1f37276766319eaf645d9bc93a`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b1c28b4903702bb13df310b3bd1a16491d0a15a7c366b9c6a169047c31f465`  
		Last Modified: Thu, 05 Nov 2026 22:48:16 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0-centos` - unknown; unknown

```console
$ docker pull percona@sha256:ed7a3777df39a26ac436dba3e73063ffb5753af9eb1b19aeb235db202aa37b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945edc7e965129bf07d4fdfb4e9d53571d7d9a81e5b8659895966cab8e95ea38`

```dockerfile
```

-	Layers:
	-	`sha256:346beee64d3c7723613c52bfb5c61eca854e1893190f70af4f0bf4e2b434c341`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0.46-37`

```console
$ docker pull percona@sha256:faaebdf1e0c8eb9c216c46157dfd4bab076a7df5c29076b033d2fec5ccd2c7e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0.46-37` - linux; amd64

```console
$ docker pull percona@sha256:c4373e35f1df80848fbc4e45f2df1cf9ef4d75f40ceb858828a8b3b6d4ed14fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411537643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e60af06460b172679a77914b9d16e8a76ae684174c175e8ba4e3d517c39ac7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:46:56 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:46:56 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:46:56 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:46:56 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:47:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:47:36 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:47:36 GMT
USER mysql
# Thu, 05 Nov 2026 22:47:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e06d71b5c5fc004f2413cd216daa0e74f2030f53c51becd958e027d882b0b11`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826ba5ad08852c4bdd9f1df2f7faa02fed252510d7cc7c82f0023fe32ea2106d`  
		Last Modified: Thu, 05 Nov 2026 22:48:14 GMT  
		Size: 9.3 MB (9333554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e7a1190c00213bf087dc5ac42c681188003c21a9cb65db1c15c39e398c1066`  
		Last Modified: Thu, 05 Nov 2026 22:48:21 GMT  
		Size: 361.5 MB (361537586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4ebe6da5958481e75ba5f32b26768e42872efbfae77f12cbb2cdd5bb79c0d1`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade53ba08137d1a7f24d10be7dda053c64316f1f37276766319eaf645d9bc93a`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b1c28b4903702bb13df310b3bd1a16491d0a15a7c366b9c6a169047c31f465`  
		Last Modified: Thu, 05 Nov 2026 22:48:16 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0.46-37` - unknown; unknown

```console
$ docker pull percona@sha256:ed7a3777df39a26ac436dba3e73063ffb5753af9eb1b19aeb235db202aa37b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945edc7e965129bf07d4fdfb4e9d53571d7d9a81e5b8659895966cab8e95ea38`

```dockerfile
```

-	Layers:
	-	`sha256:346beee64d3c7723613c52bfb5c61eca854e1893190f70af4f0bf4e2b434c341`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0.46-37-centos`

```console
$ docker pull percona@sha256:faaebdf1e0c8eb9c216c46157dfd4bab076a7df5c29076b033d2fec5ccd2c7e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0.46-37-centos` - linux; amd64

```console
$ docker pull percona@sha256:c4373e35f1df80848fbc4e45f2df1cf9ef4d75f40ceb858828a8b3b6d4ed14fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411537643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e60af06460b172679a77914b9d16e8a76ae684174c175e8ba4e3d517c39ac7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:46:56 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:46:56 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:46:56 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:46:56 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:47:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:47:36 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:47:36 GMT
USER mysql
# Thu, 05 Nov 2026 22:47:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e06d71b5c5fc004f2413cd216daa0e74f2030f53c51becd958e027d882b0b11`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826ba5ad08852c4bdd9f1df2f7faa02fed252510d7cc7c82f0023fe32ea2106d`  
		Last Modified: Thu, 05 Nov 2026 22:48:14 GMT  
		Size: 9.3 MB (9333554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e7a1190c00213bf087dc5ac42c681188003c21a9cb65db1c15c39e398c1066`  
		Last Modified: Thu, 05 Nov 2026 22:48:21 GMT  
		Size: 361.5 MB (361537586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4ebe6da5958481e75ba5f32b26768e42872efbfae77f12cbb2cdd5bb79c0d1`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade53ba08137d1a7f24d10be7dda053c64316f1f37276766319eaf645d9bc93a`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b1c28b4903702bb13df310b3bd1a16491d0a15a7c366b9c6a169047c31f465`  
		Last Modified: Thu, 05 Nov 2026 22:48:16 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0.46-37-centos` - unknown; unknown

```console
$ docker pull percona@sha256:ed7a3777df39a26ac436dba3e73063ffb5753af9eb1b19aeb235db202aa37b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945edc7e965129bf07d4fdfb4e9d53571d7d9a81e5b8659895966cab8e95ea38`

```dockerfile
```

-	Layers:
	-	`sha256:346beee64d3c7723613c52bfb5c61eca854e1893190f70af4f0bf4e2b434c341`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:9`

```console
$ docker pull percona@sha256:32a61a7300a85ba82bf9ca6b111cf836a20ddbf15b47e02f0df2adace89a7723
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:9` - linux; amd64

```console
$ docker pull percona@sha256:a1ae2e11f012a2bd758d347b4bc0d7f59f0a9cb1a671f149aa4351fdb09e692d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.1 MB (459127822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30841680c04284839ced43d1af2753d4b4e51cc29c46c7aaf048510a77b9e026`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:47:23 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:47:23 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_VERSION=9.7.2-2.1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV FULL_PERCONA_VERSION=9.7.2-2.1.el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV FULL_MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_TELEMETRY_VERSION=9.7.2-2-1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:47:23 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:47:23 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:47:23 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-97-lts ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         curl-minimal         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:48:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:48:07 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:48:07 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:48:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:48:07 GMT
USER mysql
# Thu, 05 Nov 2026 22:48:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:48:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e76ceddcdc8646e3c8166e0ddc996c5480175b21e86ae1242f98976f6e5e5d`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00562bd05d67f090e006523ac2e1ab7c8473f6a53f4efb235e14d8aa5859507a`  
		Last Modified: Thu, 05 Nov 2026 22:48:50 GMT  
		Size: 9.3 MB (9333587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6145dc2f4a0300f4cdbe6b39e3abae64dd1e9c411295262ee132c06412618b0`  
		Last Modified: Thu, 05 Nov 2026 22:48:57 GMT  
		Size: 409.1 MB (409127731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853f919c1dd15dcdae5ab692cea1be926a76646fed79fdd82b0e4756e53336ec`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 1.1 KB (1119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cf90bceb8a3fe5e122ef99cc160874c7b9474449509a79bb4c7484fad5b63f`  
		Last Modified: Thu, 05 Nov 2026 22:48:51 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ffdbacc8fc9a753f296a71cca0af4054ff9b0fa29f287b499b1a9ee08efb3e`  
		Last Modified: Thu, 05 Nov 2026 22:48:51 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:9` - unknown; unknown

```console
$ docker pull percona@sha256:457e44c39b1c60054b7c1d7ae09a7eade281810a14c7c88c4e2620c75588c92a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 KB (29969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01baf1b4ec9a02c0f42391922c2e8c55fd966442bf42796b050be319d754f25`

```dockerfile
```

-	Layers:
	-	`sha256:1cd958ac86b70c2a976d11b3ed94e29e1c480880ac6a91f37ed9935df3da31f1`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 30.0 KB (29969 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:9.7`

```console
$ docker pull percona@sha256:32a61a7300a85ba82bf9ca6b111cf836a20ddbf15b47e02f0df2adace89a7723
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:9.7` - linux; amd64

```console
$ docker pull percona@sha256:a1ae2e11f012a2bd758d347b4bc0d7f59f0a9cb1a671f149aa4351fdb09e692d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.1 MB (459127822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30841680c04284839ced43d1af2753d4b4e51cc29c46c7aaf048510a77b9e026`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:47:23 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:47:23 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_VERSION=9.7.2-2.1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV FULL_PERCONA_VERSION=9.7.2-2.1.el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV FULL_MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_TELEMETRY_VERSION=9.7.2-2-1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:47:23 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:47:23 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:47:23 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-97-lts ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         curl-minimal         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:48:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:48:07 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:48:07 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:48:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:48:07 GMT
USER mysql
# Thu, 05 Nov 2026 22:48:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:48:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e76ceddcdc8646e3c8166e0ddc996c5480175b21e86ae1242f98976f6e5e5d`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00562bd05d67f090e006523ac2e1ab7c8473f6a53f4efb235e14d8aa5859507a`  
		Last Modified: Thu, 05 Nov 2026 22:48:50 GMT  
		Size: 9.3 MB (9333587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6145dc2f4a0300f4cdbe6b39e3abae64dd1e9c411295262ee132c06412618b0`  
		Last Modified: Thu, 05 Nov 2026 22:48:57 GMT  
		Size: 409.1 MB (409127731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853f919c1dd15dcdae5ab692cea1be926a76646fed79fdd82b0e4756e53336ec`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 1.1 KB (1119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cf90bceb8a3fe5e122ef99cc160874c7b9474449509a79bb4c7484fad5b63f`  
		Last Modified: Thu, 05 Nov 2026 22:48:51 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ffdbacc8fc9a753f296a71cca0af4054ff9b0fa29f287b499b1a9ee08efb3e`  
		Last Modified: Thu, 05 Nov 2026 22:48:51 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:9.7` - unknown; unknown

```console
$ docker pull percona@sha256:457e44c39b1c60054b7c1d7ae09a7eade281810a14c7c88c4e2620c75588c92a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 KB (29969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01baf1b4ec9a02c0f42391922c2e8c55fd966442bf42796b050be319d754f25`

```dockerfile
```

-	Layers:
	-	`sha256:1cd958ac86b70c2a976d11b3ed94e29e1c480880ac6a91f37ed9935df3da31f1`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 30.0 KB (29969 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:9.7.2-2`

```console
$ docker pull percona@sha256:32a61a7300a85ba82bf9ca6b111cf836a20ddbf15b47e02f0df2adace89a7723
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:9.7.2-2` - linux; amd64

```console
$ docker pull percona@sha256:a1ae2e11f012a2bd758d347b4bc0d7f59f0a9cb1a671f149aa4351fdb09e692d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.1 MB (459127822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30841680c04284839ced43d1af2753d4b4e51cc29c46c7aaf048510a77b9e026`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:47:23 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:47:23 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_VERSION=9.7.2-2.1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV FULL_PERCONA_VERSION=9.7.2-2.1.el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV FULL_MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_TELEMETRY_VERSION=9.7.2-2-1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:47:23 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:47:23 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:47:23 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-97-lts ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         curl-minimal         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:48:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:48:07 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:48:07 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:48:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:48:07 GMT
USER mysql
# Thu, 05 Nov 2026 22:48:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:48:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e76ceddcdc8646e3c8166e0ddc996c5480175b21e86ae1242f98976f6e5e5d`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00562bd05d67f090e006523ac2e1ab7c8473f6a53f4efb235e14d8aa5859507a`  
		Last Modified: Thu, 05 Nov 2026 22:48:50 GMT  
		Size: 9.3 MB (9333587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6145dc2f4a0300f4cdbe6b39e3abae64dd1e9c411295262ee132c06412618b0`  
		Last Modified: Thu, 05 Nov 2026 22:48:57 GMT  
		Size: 409.1 MB (409127731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853f919c1dd15dcdae5ab692cea1be926a76646fed79fdd82b0e4756e53336ec`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 1.1 KB (1119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cf90bceb8a3fe5e122ef99cc160874c7b9474449509a79bb4c7484fad5b63f`  
		Last Modified: Thu, 05 Nov 2026 22:48:51 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ffdbacc8fc9a753f296a71cca0af4054ff9b0fa29f287b499b1a9ee08efb3e`  
		Last Modified: Thu, 05 Nov 2026 22:48:51 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:9.7.2-2` - unknown; unknown

```console
$ docker pull percona@sha256:457e44c39b1c60054b7c1d7ae09a7eade281810a14c7c88c4e2620c75588c92a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 KB (29969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01baf1b4ec9a02c0f42391922c2e8c55fd966442bf42796b050be319d754f25`

```dockerfile
```

-	Layers:
	-	`sha256:1cd958ac86b70c2a976d11b3ed94e29e1c480880ac6a91f37ed9935df3da31f1`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 30.0 KB (29969 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8`

```console
$ docker pull percona@sha256:faaebdf1e0c8eb9c216c46157dfd4bab076a7df5c29076b033d2fec5ccd2c7e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8` - linux; amd64

```console
$ docker pull percona@sha256:c4373e35f1df80848fbc4e45f2df1cf9ef4d75f40ceb858828a8b3b6d4ed14fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411537643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e60af06460b172679a77914b9d16e8a76ae684174c175e8ba4e3d517c39ac7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:46:56 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:46:56 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:46:56 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:46:56 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:47:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:47:36 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:47:36 GMT
USER mysql
# Thu, 05 Nov 2026 22:47:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e06d71b5c5fc004f2413cd216daa0e74f2030f53c51becd958e027d882b0b11`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826ba5ad08852c4bdd9f1df2f7faa02fed252510d7cc7c82f0023fe32ea2106d`  
		Last Modified: Thu, 05 Nov 2026 22:48:14 GMT  
		Size: 9.3 MB (9333554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e7a1190c00213bf087dc5ac42c681188003c21a9cb65db1c15c39e398c1066`  
		Last Modified: Thu, 05 Nov 2026 22:48:21 GMT  
		Size: 361.5 MB (361537586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4ebe6da5958481e75ba5f32b26768e42872efbfae77f12cbb2cdd5bb79c0d1`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade53ba08137d1a7f24d10be7dda053c64316f1f37276766319eaf645d9bc93a`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b1c28b4903702bb13df310b3bd1a16491d0a15a7c366b9c6a169047c31f465`  
		Last Modified: Thu, 05 Nov 2026 22:48:16 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8` - unknown; unknown

```console
$ docker pull percona@sha256:ed7a3777df39a26ac436dba3e73063ffb5753af9eb1b19aeb235db202aa37b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945edc7e965129bf07d4fdfb4e9d53571d7d9a81e5b8659895966cab8e95ea38`

```dockerfile
```

-	Layers:
	-	`sha256:346beee64d3c7723613c52bfb5c61eca854e1893190f70af4f0bf4e2b434c341`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8.0`

```console
$ docker pull percona@sha256:faaebdf1e0c8eb9c216c46157dfd4bab076a7df5c29076b033d2fec5ccd2c7e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0` - linux; amd64

```console
$ docker pull percona@sha256:c4373e35f1df80848fbc4e45f2df1cf9ef4d75f40ceb858828a8b3b6d4ed14fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411537643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e60af06460b172679a77914b9d16e8a76ae684174c175e8ba4e3d517c39ac7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:46:56 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:46:56 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:46:56 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:46:56 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:47:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:47:36 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:47:36 GMT
USER mysql
# Thu, 05 Nov 2026 22:47:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e06d71b5c5fc004f2413cd216daa0e74f2030f53c51becd958e027d882b0b11`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826ba5ad08852c4bdd9f1df2f7faa02fed252510d7cc7c82f0023fe32ea2106d`  
		Last Modified: Thu, 05 Nov 2026 22:48:14 GMT  
		Size: 9.3 MB (9333554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e7a1190c00213bf087dc5ac42c681188003c21a9cb65db1c15c39e398c1066`  
		Last Modified: Thu, 05 Nov 2026 22:48:21 GMT  
		Size: 361.5 MB (361537586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4ebe6da5958481e75ba5f32b26768e42872efbfae77f12cbb2cdd5bb79c0d1`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade53ba08137d1a7f24d10be7dda053c64316f1f37276766319eaf645d9bc93a`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b1c28b4903702bb13df310b3bd1a16491d0a15a7c366b9c6a169047c31f465`  
		Last Modified: Thu, 05 Nov 2026 22:48:16 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:ed7a3777df39a26ac436dba3e73063ffb5753af9eb1b19aeb235db202aa37b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945edc7e965129bf07d4fdfb4e9d53571d7d9a81e5b8659895966cab8e95ea38`

```dockerfile
```

-	Layers:
	-	`sha256:346beee64d3c7723613c52bfb5c61eca854e1893190f70af4f0bf4e2b434c341`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8.0.46-37`

```console
$ docker pull percona@sha256:faaebdf1e0c8eb9c216c46157dfd4bab076a7df5c29076b033d2fec5ccd2c7e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0.46-37` - linux; amd64

```console
$ docker pull percona@sha256:c4373e35f1df80848fbc4e45f2df1cf9ef4d75f40ceb858828a8b3b6d4ed14fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411537643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e60af06460b172679a77914b9d16e8a76ae684174c175e8ba4e3d517c39ac7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:46:56 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:46:56 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:46:56 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:46:56 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:46:56 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:46:56 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:47:35 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:47:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:47:36 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:47:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:47:36 GMT
USER mysql
# Thu, 05 Nov 2026 22:47:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:47:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e06d71b5c5fc004f2413cd216daa0e74f2030f53c51becd958e027d882b0b11`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826ba5ad08852c4bdd9f1df2f7faa02fed252510d7cc7c82f0023fe32ea2106d`  
		Last Modified: Thu, 05 Nov 2026 22:48:14 GMT  
		Size: 9.3 MB (9333554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e7a1190c00213bf087dc5ac42c681188003c21a9cb65db1c15c39e398c1066`  
		Last Modified: Thu, 05 Nov 2026 22:48:21 GMT  
		Size: 361.5 MB (361537586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4ebe6da5958481e75ba5f32b26768e42872efbfae77f12cbb2cdd5bb79c0d1`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade53ba08137d1a7f24d10be7dda053c64316f1f37276766319eaf645d9bc93a`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b1c28b4903702bb13df310b3bd1a16491d0a15a7c366b9c6a169047c31f465`  
		Last Modified: Thu, 05 Nov 2026 22:48:16 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0.46-37` - unknown; unknown

```console
$ docker pull percona@sha256:ed7a3777df39a26ac436dba3e73063ffb5753af9eb1b19aeb235db202aa37b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945edc7e965129bf07d4fdfb4e9d53571d7d9a81e5b8659895966cab8e95ea38`

```dockerfile
```

-	Layers:
	-	`sha256:346beee64d3c7723613c52bfb5c61eca854e1893190f70af4f0bf4e2b434c341`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-9`

```console
$ docker pull percona@sha256:32a61a7300a85ba82bf9ca6b111cf836a20ddbf15b47e02f0df2adace89a7723
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-9` - linux; amd64

```console
$ docker pull percona@sha256:a1ae2e11f012a2bd758d347b4bc0d7f59f0a9cb1a671f149aa4351fdb09e692d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.1 MB (459127822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30841680c04284839ced43d1af2753d4b4e51cc29c46c7aaf048510a77b9e026`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:47:23 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:47:23 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_VERSION=9.7.2-2.1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV FULL_PERCONA_VERSION=9.7.2-2.1.el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV FULL_MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_TELEMETRY_VERSION=9.7.2-2-1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:47:23 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:47:23 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:47:23 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-97-lts ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         curl-minimal         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:48:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:48:07 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:48:07 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:48:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:48:07 GMT
USER mysql
# Thu, 05 Nov 2026 22:48:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:48:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e76ceddcdc8646e3c8166e0ddc996c5480175b21e86ae1242f98976f6e5e5d`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00562bd05d67f090e006523ac2e1ab7c8473f6a53f4efb235e14d8aa5859507a`  
		Last Modified: Thu, 05 Nov 2026 22:48:50 GMT  
		Size: 9.3 MB (9333587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6145dc2f4a0300f4cdbe6b39e3abae64dd1e9c411295262ee132c06412618b0`  
		Last Modified: Thu, 05 Nov 2026 22:48:57 GMT  
		Size: 409.1 MB (409127731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853f919c1dd15dcdae5ab692cea1be926a76646fed79fdd82b0e4756e53336ec`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 1.1 KB (1119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cf90bceb8a3fe5e122ef99cc160874c7b9474449509a79bb4c7484fad5b63f`  
		Last Modified: Thu, 05 Nov 2026 22:48:51 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ffdbacc8fc9a753f296a71cca0af4054ff9b0fa29f287b499b1a9ee08efb3e`  
		Last Modified: Thu, 05 Nov 2026 22:48:51 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-9` - unknown; unknown

```console
$ docker pull percona@sha256:457e44c39b1c60054b7c1d7ae09a7eade281810a14c7c88c4e2620c75588c92a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 KB (29969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01baf1b4ec9a02c0f42391922c2e8c55fd966442bf42796b050be319d754f25`

```dockerfile
```

-	Layers:
	-	`sha256:1cd958ac86b70c2a976d11b3ed94e29e1c480880ac6a91f37ed9935df3da31f1`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 30.0 KB (29969 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-9.7`

```console
$ docker pull percona@sha256:32a61a7300a85ba82bf9ca6b111cf836a20ddbf15b47e02f0df2adace89a7723
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-9.7` - linux; amd64

```console
$ docker pull percona@sha256:a1ae2e11f012a2bd758d347b4bc0d7f59f0a9cb1a671f149aa4351fdb09e692d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.1 MB (459127822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30841680c04284839ced43d1af2753d4b4e51cc29c46c7aaf048510a77b9e026`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:47:23 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:47:23 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_VERSION=9.7.2-2.1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV FULL_PERCONA_VERSION=9.7.2-2.1.el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV FULL_MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_TELEMETRY_VERSION=9.7.2-2-1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:47:23 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:47:23 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:47:23 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-97-lts ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         curl-minimal         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:48:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:48:07 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:48:07 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:48:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:48:07 GMT
USER mysql
# Thu, 05 Nov 2026 22:48:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:48:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e76ceddcdc8646e3c8166e0ddc996c5480175b21e86ae1242f98976f6e5e5d`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00562bd05d67f090e006523ac2e1ab7c8473f6a53f4efb235e14d8aa5859507a`  
		Last Modified: Thu, 05 Nov 2026 22:48:50 GMT  
		Size: 9.3 MB (9333587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6145dc2f4a0300f4cdbe6b39e3abae64dd1e9c411295262ee132c06412618b0`  
		Last Modified: Thu, 05 Nov 2026 22:48:57 GMT  
		Size: 409.1 MB (409127731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853f919c1dd15dcdae5ab692cea1be926a76646fed79fdd82b0e4756e53336ec`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 1.1 KB (1119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cf90bceb8a3fe5e122ef99cc160874c7b9474449509a79bb4c7484fad5b63f`  
		Last Modified: Thu, 05 Nov 2026 22:48:51 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ffdbacc8fc9a753f296a71cca0af4054ff9b0fa29f287b499b1a9ee08efb3e`  
		Last Modified: Thu, 05 Nov 2026 22:48:51 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-9.7` - unknown; unknown

```console
$ docker pull percona@sha256:457e44c39b1c60054b7c1d7ae09a7eade281810a14c7c88c4e2620c75588c92a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 KB (29969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01baf1b4ec9a02c0f42391922c2e8c55fd966442bf42796b050be319d754f25`

```dockerfile
```

-	Layers:
	-	`sha256:1cd958ac86b70c2a976d11b3ed94e29e1c480880ac6a91f37ed9935df3da31f1`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 30.0 KB (29969 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-9.7.2-2`

```console
$ docker pull percona@sha256:32a61a7300a85ba82bf9ca6b111cf836a20ddbf15b47e02f0df2adace89a7723
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-9.7.2-2` - linux; amd64

```console
$ docker pull percona@sha256:a1ae2e11f012a2bd758d347b4bc0d7f59f0a9cb1a671f149aa4351fdb09e692d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.1 MB (459127822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30841680c04284839ced43d1af2753d4b4e51cc29c46c7aaf048510a77b9e026`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:47:23 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:47:23 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_VERSION=9.7.2-2.1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV FULL_PERCONA_VERSION=9.7.2-2.1.el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV FULL_MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_REPO=testing
# Thu, 05 Nov 2026 22:47:23 GMT
ENV PS_TELEMETRY_VERSION=9.7.2-2-1
# Thu, 05 Nov 2026 22:47:23 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:47:23 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 05 Nov 2026 22:47:23 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:47:23 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:47:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-97-lts ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         curl-minimal         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 05 Nov 2026 22:48:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 05 Nov 2026 22:48:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:48:07 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:48:07 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:48:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:48:07 GMT
USER mysql
# Thu, 05 Nov 2026 22:48:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 05 Nov 2026 22:48:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e76ceddcdc8646e3c8166e0ddc996c5480175b21e86ae1242f98976f6e5e5d`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00562bd05d67f090e006523ac2e1ab7c8473f6a53f4efb235e14d8aa5859507a`  
		Last Modified: Thu, 05 Nov 2026 22:48:50 GMT  
		Size: 9.3 MB (9333587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6145dc2f4a0300f4cdbe6b39e3abae64dd1e9c411295262ee132c06412618b0`  
		Last Modified: Thu, 05 Nov 2026 22:48:57 GMT  
		Size: 409.1 MB (409127731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853f919c1dd15dcdae5ab692cea1be926a76646fed79fdd82b0e4756e53336ec`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 1.1 KB (1119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cf90bceb8a3fe5e122ef99cc160874c7b9474449509a79bb4c7484fad5b63f`  
		Last Modified: Thu, 05 Nov 2026 22:48:51 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ffdbacc8fc9a753f296a71cca0af4054ff9b0fa29f287b499b1a9ee08efb3e`  
		Last Modified: Thu, 05 Nov 2026 22:48:51 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-9.7.2-2` - unknown; unknown

```console
$ docker pull percona@sha256:457e44c39b1c60054b7c1d7ae09a7eade281810a14c7c88c4e2620c75588c92a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 KB (29969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01baf1b4ec9a02c0f42391922c2e8c55fd966442bf42796b050be319d754f25`

```dockerfile
```

-	Layers:
	-	`sha256:1cd958ac86b70c2a976d11b3ed94e29e1c480880ac6a91f37ed9935df3da31f1`  
		Last Modified: Thu, 05 Nov 2026 22:48:49 GMT  
		Size: 30.0 KB (29969 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-6.0`

```console
$ docker pull percona@sha256:b1ff62c5377ad56f1d54e96f41b6d13c00070668372be2dbaf19f5ac9681e900
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0` - linux; amd64

```console
$ docker pull percona@sha256:8a8dbbf5bda3626f409d67658bc89566e35085eee7c2213c30fb358bef5d9c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279361147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6330910820a9ebc9b9ee14ab5fe035ba22927c7c87a15178c99634ec11e1856d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:50:49 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:50:49 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 05 Nov 2026 22:50:49 GMT
ENV PSMDB_VERSION=6.0.29-23
# Thu, 05 Nov 2026 22:50:49 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:50:49 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Thu, 05 Nov 2026 22:50:49 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 05 Nov 2026 22:50:49 GMT
ENV PSMDB_REPO=release
# Thu, 05 Nov 2026 22:50:49 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:50:49 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:50:49 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:51:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 05 Nov 2026 22:51:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 05 Nov 2026 22:51:07 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 05 Nov 2026 22:51:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 05 Nov 2026 22:51:07 GMT
ENV GOSU_VERSION=1.11
# Thu, 05 Nov 2026 22:51:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 05 Nov 2026 22:51:09 GMT
VOLUME [/data/db]
# Thu, 05 Nov 2026 22:51:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 05 Nov 2026 22:51:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:51:09 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:51:09 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:51:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 22:51:09 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 05 Nov 2026 22:51:09 GMT
USER 1001
# Thu, 05 Nov 2026 22:51:09 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebdbf6488dab5ff94b6ed4d11a8444c8088b3ebc3e312accd3af2a2fc33a660`  
		Last Modified: Thu, 05 Nov 2026 22:51:36 GMT  
		Size: 9.0 MB (8953363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eff2a9c46fe697199b4480d675b281bf06d5c43f510bf35707a51ca4d3847c7`  
		Last Modified: Thu, 05 Nov 2026 22:51:40 GMT  
		Size: 228.8 MB (228798079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4519751dbd637b951d91e2c149794b53594d3a3093bdc9f078829fd8f380ef62`  
		Last Modified: Thu, 05 Nov 2026 22:51:36 GMT  
		Size: 1.6 KB (1640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931f9e2176841ce738449977f593e599d74d8c9001c5be8b4782ccd3a73826be`  
		Last Modified: Thu, 05 Nov 2026 22:51:36 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21648740081045132bcdd93599eb2ef822fc101bdde12823feec0091e728907`  
		Last Modified: Thu, 05 Nov 2026 22:51:37 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d4a816a4617d2f83a061ff40fc021cc5d422cc84871f8e9b58af027a151e92`  
		Last Modified: Thu, 05 Nov 2026 22:51:37 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f921eb71c58c9d31f84cfb5d55dd51d9df9df37f27f71b3f539314c557ed003`  
		Last Modified: Thu, 05 Nov 2026 22:51:38 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5420a5e29e7f67ff5f664cf965eae973dcd2280b061cceedcfe9114859a2b23c`  
		Last Modified: Thu, 05 Nov 2026 22:51:38 GMT  
		Size: 4.0 KB (3954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6cf88d9257b3b8bae9c3bac61d5fb7566cac516c84071da8cc8336b34617951`  
		Last Modified: Thu, 05 Nov 2026 22:51:38 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0` - unknown; unknown

```console
$ docker pull percona@sha256:661f4f17c943248784f0a3df94357c1c55781607f8f4bbf76912e9bf5b71cad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90e4b7eb4d7e5bbe0f7c4c8e5588bbff7908601c792792a3831eb2fb4cd8e6ab`

```dockerfile
```

-	Layers:
	-	`sha256:badb904551dd87ccdd902370d5c75f22d92c228f3cd37955bafb3e1313c5140e`  
		Last Modified: Thu, 05 Nov 2026 22:51:35 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-6.0.29`

```console
$ docker pull percona@sha256:b1ff62c5377ad56f1d54e96f41b6d13c00070668372be2dbaf19f5ac9681e900
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0.29` - linux; amd64

```console
$ docker pull percona@sha256:8a8dbbf5bda3626f409d67658bc89566e35085eee7c2213c30fb358bef5d9c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279361147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6330910820a9ebc9b9ee14ab5fe035ba22927c7c87a15178c99634ec11e1856d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:50:49 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:50:49 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 05 Nov 2026 22:50:49 GMT
ENV PSMDB_VERSION=6.0.29-23
# Thu, 05 Nov 2026 22:50:49 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:50:49 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Thu, 05 Nov 2026 22:50:49 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 05 Nov 2026 22:50:49 GMT
ENV PSMDB_REPO=release
# Thu, 05 Nov 2026 22:50:49 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:50:49 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:50:49 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:51:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 05 Nov 2026 22:51:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 05 Nov 2026 22:51:07 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 05 Nov 2026 22:51:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 05 Nov 2026 22:51:07 GMT
ENV GOSU_VERSION=1.11
# Thu, 05 Nov 2026 22:51:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 05 Nov 2026 22:51:09 GMT
VOLUME [/data/db]
# Thu, 05 Nov 2026 22:51:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 05 Nov 2026 22:51:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:51:09 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:51:09 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:51:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 22:51:09 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 05 Nov 2026 22:51:09 GMT
USER 1001
# Thu, 05 Nov 2026 22:51:09 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebdbf6488dab5ff94b6ed4d11a8444c8088b3ebc3e312accd3af2a2fc33a660`  
		Last Modified: Thu, 05 Nov 2026 22:51:36 GMT  
		Size: 9.0 MB (8953363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eff2a9c46fe697199b4480d675b281bf06d5c43f510bf35707a51ca4d3847c7`  
		Last Modified: Thu, 05 Nov 2026 22:51:40 GMT  
		Size: 228.8 MB (228798079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4519751dbd637b951d91e2c149794b53594d3a3093bdc9f078829fd8f380ef62`  
		Last Modified: Thu, 05 Nov 2026 22:51:36 GMT  
		Size: 1.6 KB (1640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931f9e2176841ce738449977f593e599d74d8c9001c5be8b4782ccd3a73826be`  
		Last Modified: Thu, 05 Nov 2026 22:51:36 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21648740081045132bcdd93599eb2ef822fc101bdde12823feec0091e728907`  
		Last Modified: Thu, 05 Nov 2026 22:51:37 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d4a816a4617d2f83a061ff40fc021cc5d422cc84871f8e9b58af027a151e92`  
		Last Modified: Thu, 05 Nov 2026 22:51:37 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f921eb71c58c9d31f84cfb5d55dd51d9df9df37f27f71b3f539314c557ed003`  
		Last Modified: Thu, 05 Nov 2026 22:51:38 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5420a5e29e7f67ff5f664cf965eae973dcd2280b061cceedcfe9114859a2b23c`  
		Last Modified: Thu, 05 Nov 2026 22:51:38 GMT  
		Size: 4.0 KB (3954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6cf88d9257b3b8bae9c3bac61d5fb7566cac516c84071da8cc8336b34617951`  
		Last Modified: Thu, 05 Nov 2026 22:51:38 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0.29` - unknown; unknown

```console
$ docker pull percona@sha256:661f4f17c943248784f0a3df94357c1c55781607f8f4bbf76912e9bf5b71cad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90e4b7eb4d7e5bbe0f7c4c8e5588bbff7908601c792792a3831eb2fb4cd8e6ab`

```dockerfile
```

-	Layers:
	-	`sha256:badb904551dd87ccdd902370d5c75f22d92c228f3cd37955bafb3e1313c5140e`  
		Last Modified: Thu, 05 Nov 2026 22:51:35 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-7.0`

```console
$ docker pull percona@sha256:3d4c0228dee7221a82ec9671bdcc0821fa4cf4292b0038b8314717c78a9d5fdb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0` - linux; amd64

```console
$ docker pull percona@sha256:7a81ace1037be629006af2d1a291c6b92a5710b598abf994fb9d668c753c022b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.0 MB (304999734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9d43e4f64ee3845270ae280ade52ce06e0fd5696df1bb5cf68fb5aa4be8d75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:48:31 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:48:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 05 Nov 2026 22:48:31 GMT
ENV PSMDB_VERSION=7.0.45-24
# Thu, 05 Nov 2026 22:48:31 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_PERCONA_VERSION=7.0.45-24.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 05 Nov 2026 22:48:31 GMT
ENV PSMDB_REPO=release
# Thu, 05 Nov 2026 22:48:31 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:48:31 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:48:31 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:50:05 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         curl-minimal         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 05 Nov 2026 22:50:05 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 05 Nov 2026 22:50:05 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 05 Nov 2026 22:50:05 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 05 Nov 2026 22:50:05 GMT
ENV GOSU_VERSION=1.11
# Thu, 05 Nov 2026 22:50:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 05 Nov 2026 22:50:06 GMT
VOLUME [/data/db]
# Thu, 05 Nov 2026 22:50:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 05 Nov 2026 22:50:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:50:07 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:50:07 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:50:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 22:50:07 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 05 Nov 2026 22:50:07 GMT
USER 1001
# Thu, 05 Nov 2026 22:50:07 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853849a8e1f0360fef1c01c90d4b1a73d532fcd7197bad2c2c7d7cd93ad301e3`  
		Last Modified: Thu, 05 Nov 2026 22:49:33 GMT  
		Size: 8.9 MB (8949045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576b235f1cb0ca6d39d5a730825fac01a5d93e405650fca16ab7124b5845b68b`  
		Last Modified: Thu, 05 Nov 2026 22:50:38 GMT  
		Size: 254.4 MB (254440986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bad693551e50fbfc04d5bf0754147ab992fe2cc640ef1ece2621d38adf38b76`  
		Last Modified: Thu, 05 Nov 2026 22:50:33 GMT  
		Size: 1.6 KB (1637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b3b0bc6b01216e2f35c86b54cdddedc7841b9706a21f434299b038fabb19f`  
		Last Modified: Thu, 05 Nov 2026 22:50:33 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8cbc62f464efa51aae72e438385c34387ddc8b7dcd96d93cd9b5eaf6ed30b3`  
		Last Modified: Thu, 05 Nov 2026 22:50:33 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d45c4eafe04931efa6fbf45140f3cf4c20c4e81993f903cfd3b27217b06abda`  
		Last Modified: Thu, 05 Nov 2026 22:50:34 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4f91b961a9a3bc8a307487c326683ad1dcf8dbfc9f39b33419b809fd9ccece`  
		Last Modified: Thu, 05 Nov 2026 22:50:34 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7678c6fb36722926587972234c55318a91b41e5bc89368012cdc340643f1882b`  
		Last Modified: Thu, 05 Nov 2026 22:50:34 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab541dd78a72f53705513642a01e084f8750ab49322e119d3eb78dc9f3b81b2`  
		Last Modified: Thu, 05 Nov 2026 22:50:35 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0` - unknown; unknown

```console
$ docker pull percona@sha256:74820fa3fc9497abbe21eb773a05367cc1e54fea62058b1c706e20a413543d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb53845bb35549a5b5fed1d7144aef1f68cf1452ce695530fde9042308a2587`

```dockerfile
```

-	Layers:
	-	`sha256:b6e2b26b8afd7b8952b21b3b467cd708cae506a61e2d45487a458a126f25fed3`  
		Last Modified: Thu, 05 Nov 2026 22:50:33 GMT  
		Size: 33.7 KB (33662 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-7.0.45`

```console
$ docker pull percona@sha256:3d4c0228dee7221a82ec9671bdcc0821fa4cf4292b0038b8314717c78a9d5fdb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0.45` - linux; amd64

```console
$ docker pull percona@sha256:7a81ace1037be629006af2d1a291c6b92a5710b598abf994fb9d668c753c022b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.0 MB (304999734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9d43e4f64ee3845270ae280ade52ce06e0fd5696df1bb5cf68fb5aa4be8d75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:48:31 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:48:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 05 Nov 2026 22:48:31 GMT
ENV PSMDB_VERSION=7.0.45-24
# Thu, 05 Nov 2026 22:48:31 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_PERCONA_VERSION=7.0.45-24.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 05 Nov 2026 22:48:31 GMT
ENV PSMDB_REPO=release
# Thu, 05 Nov 2026 22:48:31 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:48:31 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:48:31 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:50:05 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         curl-minimal         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 05 Nov 2026 22:50:05 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 05 Nov 2026 22:50:05 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 05 Nov 2026 22:50:05 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 05 Nov 2026 22:50:05 GMT
ENV GOSU_VERSION=1.11
# Thu, 05 Nov 2026 22:50:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 05 Nov 2026 22:50:06 GMT
VOLUME [/data/db]
# Thu, 05 Nov 2026 22:50:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 05 Nov 2026 22:50:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:50:07 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:50:07 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:50:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 22:50:07 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 05 Nov 2026 22:50:07 GMT
USER 1001
# Thu, 05 Nov 2026 22:50:07 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853849a8e1f0360fef1c01c90d4b1a73d532fcd7197bad2c2c7d7cd93ad301e3`  
		Last Modified: Thu, 05 Nov 2026 22:49:33 GMT  
		Size: 8.9 MB (8949045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576b235f1cb0ca6d39d5a730825fac01a5d93e405650fca16ab7124b5845b68b`  
		Last Modified: Thu, 05 Nov 2026 22:50:38 GMT  
		Size: 254.4 MB (254440986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bad693551e50fbfc04d5bf0754147ab992fe2cc640ef1ece2621d38adf38b76`  
		Last Modified: Thu, 05 Nov 2026 22:50:33 GMT  
		Size: 1.6 KB (1637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b3b0bc6b01216e2f35c86b54cdddedc7841b9706a21f434299b038fabb19f`  
		Last Modified: Thu, 05 Nov 2026 22:50:33 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8cbc62f464efa51aae72e438385c34387ddc8b7dcd96d93cd9b5eaf6ed30b3`  
		Last Modified: Thu, 05 Nov 2026 22:50:33 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d45c4eafe04931efa6fbf45140f3cf4c20c4e81993f903cfd3b27217b06abda`  
		Last Modified: Thu, 05 Nov 2026 22:50:34 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4f91b961a9a3bc8a307487c326683ad1dcf8dbfc9f39b33419b809fd9ccece`  
		Last Modified: Thu, 05 Nov 2026 22:50:34 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7678c6fb36722926587972234c55318a91b41e5bc89368012cdc340643f1882b`  
		Last Modified: Thu, 05 Nov 2026 22:50:34 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab541dd78a72f53705513642a01e084f8750ab49322e119d3eb78dc9f3b81b2`  
		Last Modified: Thu, 05 Nov 2026 22:50:35 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0.45` - unknown; unknown

```console
$ docker pull percona@sha256:74820fa3fc9497abbe21eb773a05367cc1e54fea62058b1c706e20a413543d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb53845bb35549a5b5fed1d7144aef1f68cf1452ce695530fde9042308a2587`

```dockerfile
```

-	Layers:
	-	`sha256:b6e2b26b8afd7b8952b21b3b467cd708cae506a61e2d45487a458a126f25fed3`  
		Last Modified: Thu, 05 Nov 2026 22:50:33 GMT  
		Size: 33.7 KB (33662 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.0`

```console
$ docker pull percona@sha256:adbd62d869d68da28caa81f5b5c8cd5116e69853f85595f09ef5e7e3e73cb986
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0` - linux; amd64

```console
$ docker pull percona@sha256:e248e8c171ef54f4ed9538caac23405a8e521a3ceb3731e00dd1d97e026eeb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.4 MB (325389320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b2ddfc97ca68cf6c46f09286f8375b11cd2b64d6847bdbead2d5c5f64aee07`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:49:08 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:49:08 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 05 Nov 2026 22:49:08 GMT
ENV PSMDB_VERSION=8.0.34-15
# Thu, 05 Nov 2026 22:49:08 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:49:08 GMT
ENV FULL_PERCONA_VERSION=8.0.34-15.el9
# Thu, 05 Nov 2026 22:49:08 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Thu, 05 Nov 2026 22:49:08 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Thu, 05 Nov 2026 22:49:08 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Thu, 05 Nov 2026 22:49:08 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Thu, 05 Nov 2026 22:49:08 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 05 Nov 2026 22:49:08 GMT
ENV PSMDB_REPO=release
# Thu, 05 Nov 2026 22:49:08 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Thu, 05 Nov 2026 22:49:08 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:49:08 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:49:08 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:49:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 05 Nov 2026 22:49:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 05 Nov 2026 22:49:29 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 05 Nov 2026 22:49:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 05 Nov 2026 22:49:29 GMT
ENV GOSU_VERSION=1.11
# Thu, 05 Nov 2026 22:49:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 05 Nov 2026 22:49:31 GMT
VOLUME [/data/db]
# Thu, 05 Nov 2026 22:49:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 05 Nov 2026 22:49:32 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:49:32 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:49:32 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:49:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 22:49:32 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 05 Nov 2026 22:49:32 GMT
USER 1001
# Thu, 05 Nov 2026 22:49:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddbe389e24e10461166055ce65081ae926619502a811c7f20c4749c92039357`  
		Last Modified: Thu, 05 Nov 2026 22:50:02 GMT  
		Size: 8.9 MB (8949035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40db287d8dab9e2445bb9aeca73452cd7534c3485399c4878f7e5924dafdb72`  
		Last Modified: Thu, 05 Nov 2026 22:50:07 GMT  
		Size: 274.8 MB (274830578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d16d655402fb42e13df5f61283aae4f148e402c2c82b3ae3c908eac0f64a0c9`  
		Last Modified: Thu, 05 Nov 2026 22:50:02 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf4c9dda1c18dd523353949633c42e898ef551f10976032960dff6f2ecfa6a0`  
		Last Modified: Thu, 05 Nov 2026 22:50:02 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca41b5a7ca885315df7bdbb8a7f4ca52b8164ca85a984698119af2219bf1226`  
		Last Modified: Thu, 05 Nov 2026 22:50:03 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b078a303568ef786cd23bc38424e21d6ec3979e6084b1bcac4cb1f9817c6b26f`  
		Last Modified: Thu, 05 Nov 2026 22:50:03 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc69b6e0743a553db861612bde4ac5e5b5c0fbad9a2c62b76d14c818075a01f7`  
		Last Modified: Thu, 05 Nov 2026 22:50:03 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc5b9585bedb2ff78689361fb84064b3732eb25b2e94f47d5461903a060c9ff`  
		Last Modified: Thu, 05 Nov 2026 22:50:04 GMT  
		Size: 4.0 KB (3954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09eb46efde611d7e929c9e92fa19de9d092f4f03a97f69b36f6124ad5499b7a4`  
		Last Modified: Thu, 05 Nov 2026 22:50:04 GMT  
		Size: 5.0 KB (4966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:e610dee6574ac9c076f2dcadac1ef07225dc5eaf004de676db034b8c1f9e62db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5012ea5bd72f4e62d9f62a6814051560c70bf2fca99abf90d6cc36d1b15e20a3`

```dockerfile
```

-	Layers:
	-	`sha256:78cb743e65bdd1e8f54bb38d0b97b87e0228aaf3fd95ec575c93fa6d19b53a93`  
		Last Modified: Thu, 05 Nov 2026 22:50:02 GMT  
		Size: 33.9 KB (33869 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.0.34`

```console
$ docker pull percona@sha256:adbd62d869d68da28caa81f5b5c8cd5116e69853f85595f09ef5e7e3e73cb986
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0.34` - linux; amd64

```console
$ docker pull percona@sha256:e248e8c171ef54f4ed9538caac23405a8e521a3ceb3731e00dd1d97e026eeb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.4 MB (325389320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b2ddfc97ca68cf6c46f09286f8375b11cd2b64d6847bdbead2d5c5f64aee07`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:49:08 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:49:08 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 05 Nov 2026 22:49:08 GMT
ENV PSMDB_VERSION=8.0.34-15
# Thu, 05 Nov 2026 22:49:08 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:49:08 GMT
ENV FULL_PERCONA_VERSION=8.0.34-15.el9
# Thu, 05 Nov 2026 22:49:08 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Thu, 05 Nov 2026 22:49:08 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Thu, 05 Nov 2026 22:49:08 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Thu, 05 Nov 2026 22:49:08 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Thu, 05 Nov 2026 22:49:08 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 05 Nov 2026 22:49:08 GMT
ENV PSMDB_REPO=release
# Thu, 05 Nov 2026 22:49:08 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Thu, 05 Nov 2026 22:49:08 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:49:08 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:49:08 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:49:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 05 Nov 2026 22:49:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 05 Nov 2026 22:49:29 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 05 Nov 2026 22:49:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 05 Nov 2026 22:49:29 GMT
ENV GOSU_VERSION=1.11
# Thu, 05 Nov 2026 22:49:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 05 Nov 2026 22:49:31 GMT
VOLUME [/data/db]
# Thu, 05 Nov 2026 22:49:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 05 Nov 2026 22:49:32 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:49:32 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:49:32 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:49:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 22:49:32 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 05 Nov 2026 22:49:32 GMT
USER 1001
# Thu, 05 Nov 2026 22:49:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddbe389e24e10461166055ce65081ae926619502a811c7f20c4749c92039357`  
		Last Modified: Thu, 05 Nov 2026 22:50:02 GMT  
		Size: 8.9 MB (8949035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40db287d8dab9e2445bb9aeca73452cd7534c3485399c4878f7e5924dafdb72`  
		Last Modified: Thu, 05 Nov 2026 22:50:07 GMT  
		Size: 274.8 MB (274830578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d16d655402fb42e13df5f61283aae4f148e402c2c82b3ae3c908eac0f64a0c9`  
		Last Modified: Thu, 05 Nov 2026 22:50:02 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf4c9dda1c18dd523353949633c42e898ef551f10976032960dff6f2ecfa6a0`  
		Last Modified: Thu, 05 Nov 2026 22:50:02 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca41b5a7ca885315df7bdbb8a7f4ca52b8164ca85a984698119af2219bf1226`  
		Last Modified: Thu, 05 Nov 2026 22:50:03 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b078a303568ef786cd23bc38424e21d6ec3979e6084b1bcac4cb1f9817c6b26f`  
		Last Modified: Thu, 05 Nov 2026 22:50:03 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc69b6e0743a553db861612bde4ac5e5b5c0fbad9a2c62b76d14c818075a01f7`  
		Last Modified: Thu, 05 Nov 2026 22:50:03 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc5b9585bedb2ff78689361fb84064b3732eb25b2e94f47d5461903a060c9ff`  
		Last Modified: Thu, 05 Nov 2026 22:50:04 GMT  
		Size: 4.0 KB (3954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09eb46efde611d7e929c9e92fa19de9d092f4f03a97f69b36f6124ad5499b7a4`  
		Last Modified: Thu, 05 Nov 2026 22:50:04 GMT  
		Size: 5.0 KB (4966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0.34` - unknown; unknown

```console
$ docker pull percona@sha256:e610dee6574ac9c076f2dcadac1ef07225dc5eaf004de676db034b8c1f9e62db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5012ea5bd72f4e62d9f62a6814051560c70bf2fca99abf90d6cc36d1b15e20a3`

```dockerfile
```

-	Layers:
	-	`sha256:78cb743e65bdd1e8f54bb38d0b97b87e0228aaf3fd95ec575c93fa6d19b53a93`  
		Last Modified: Thu, 05 Nov 2026 22:50:02 GMT  
		Size: 33.9 KB (33869 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.3`

```console
$ docker pull percona@sha256:efb128a8abf36f765288119397ab7f5cb9cf256472da581b2498f7009b6c90d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.3` - linux; amd64

```console
$ docker pull percona@sha256:279dd7d91893f2c52819edbf3387b31c344159700de85fa6266cc8105d89aeb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.6 MB (393608167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d59014be38ce35f2997699f78d3c440bc402f5b25f1683418fe362ddc9692d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:48:31 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:48:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 05 Nov 2026 22:48:31 GMT
ENV PSMDB_VERSION=8.3.13-4
# Thu, 05 Nov 2026 22:48:31 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_PERCONA_VERSION=8.3.13-4.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 05 Nov 2026 22:48:31 GMT
ENV PSMDB_REPO=release
# Thu, 05 Nov 2026 22:48:31 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Thu, 05 Nov 2026 22:48:31 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:48:31 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:48:31 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-83 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-83/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 05 Nov 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 05 Nov 2026 22:48:54 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 05 Nov 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 05 Nov 2026 22:48:54 GMT
ENV GOSU_VERSION=1.11
# Thu, 05 Nov 2026 22:48:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 05 Nov 2026 22:48:56 GMT
VOLUME [/data/db]
# Thu, 05 Nov 2026 22:48:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 05 Nov 2026 22:48:57 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:48:57 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:48:57 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:48:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 22:48:57 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 05 Nov 2026 22:48:57 GMT
USER 1001
# Thu, 05 Nov 2026 22:48:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853849a8e1f0360fef1c01c90d4b1a73d532fcd7197bad2c2c7d7cd93ad301e3`  
		Last Modified: Thu, 05 Nov 2026 22:49:33 GMT  
		Size: 8.9 MB (8949045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0850dd9be41e601308d04d5c865e442e8eeadb61ae7eff3f85533c9da714a432`  
		Last Modified: Thu, 05 Nov 2026 22:49:39 GMT  
		Size: 343.0 MB (343049419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299fc74713d83ecdaff2a31b31363a3d90a52719a5868088a787189bf794b5cf`  
		Last Modified: Thu, 05 Nov 2026 22:49:32 GMT  
		Size: 1.6 KB (1640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e947523b019901cfab6e84809f54a755af8f603be0ee1e94ab09412826a6e726`  
		Last Modified: Thu, 05 Nov 2026 22:49:32 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88a9d568e2c9b7f5242da1b3615c1fc92ac4501d607cbe3bfa010a4933ccb09`  
		Last Modified: Thu, 05 Nov 2026 22:49:33 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481b21bf296601be3cec5a8d32a5248954c5a5de6ad4b66467b5db94d7d42972`  
		Last Modified: Thu, 05 Nov 2026 22:49:34 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e0ea02acf2a89f95173468569897ebe00961344895f213593e2b60945dddea`  
		Last Modified: Thu, 05 Nov 2026 22:49:34 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c4b667d0c41e9a7f5353a380e62e02ae66e94957eaf75cad4e8ed7e9b4a2b5`  
		Last Modified: Thu, 05 Nov 2026 22:49:35 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d03db91e0708fc4a3bffc53fed29521ea463df99d219c9ccdddd77e63690c3`  
		Last Modified: Thu, 05 Nov 2026 22:49:35 GMT  
		Size: 5.0 KB (4961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.3` - unknown; unknown

```console
$ docker pull percona@sha256:e16d47df7165f12ac5927e08193675ece6938704d4d06433834aaca2a40effba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f5eb3c2a18126a62e377558986db879b3f64592b006ebf6828a16619c61267`

```dockerfile
```

-	Layers:
	-	`sha256:474507006839d1f3a4bc804335c8b8d10528934002c013b32e3adf0865e0bea9`  
		Last Modified: Thu, 05 Nov 2026 22:49:32 GMT  
		Size: 33.9 KB (33856 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.3.13`

```console
$ docker pull percona@sha256:efb128a8abf36f765288119397ab7f5cb9cf256472da581b2498f7009b6c90d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.3.13` - linux; amd64

```console
$ docker pull percona@sha256:279dd7d91893f2c52819edbf3387b31c344159700de85fa6266cc8105d89aeb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.6 MB (393608167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d59014be38ce35f2997699f78d3c440bc402f5b25f1683418fe362ddc9692d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:48:31 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:48:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 05 Nov 2026 22:48:31 GMT
ENV PSMDB_VERSION=8.3.13-4
# Thu, 05 Nov 2026 22:48:31 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_PERCONA_VERSION=8.3.13-4.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 05 Nov 2026 22:48:31 GMT
ENV PSMDB_REPO=release
# Thu, 05 Nov 2026 22:48:31 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Thu, 05 Nov 2026 22:48:31 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:48:31 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:48:31 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-83 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-83/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 05 Nov 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 05 Nov 2026 22:48:54 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 05 Nov 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 05 Nov 2026 22:48:54 GMT
ENV GOSU_VERSION=1.11
# Thu, 05 Nov 2026 22:48:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 05 Nov 2026 22:48:56 GMT
VOLUME [/data/db]
# Thu, 05 Nov 2026 22:48:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 05 Nov 2026 22:48:57 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:48:57 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:48:57 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:48:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 22:48:57 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 05 Nov 2026 22:48:57 GMT
USER 1001
# Thu, 05 Nov 2026 22:48:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853849a8e1f0360fef1c01c90d4b1a73d532fcd7197bad2c2c7d7cd93ad301e3`  
		Last Modified: Thu, 05 Nov 2026 22:49:33 GMT  
		Size: 8.9 MB (8949045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0850dd9be41e601308d04d5c865e442e8eeadb61ae7eff3f85533c9da714a432`  
		Last Modified: Thu, 05 Nov 2026 22:49:39 GMT  
		Size: 343.0 MB (343049419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299fc74713d83ecdaff2a31b31363a3d90a52719a5868088a787189bf794b5cf`  
		Last Modified: Thu, 05 Nov 2026 22:49:32 GMT  
		Size: 1.6 KB (1640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e947523b019901cfab6e84809f54a755af8f603be0ee1e94ab09412826a6e726`  
		Last Modified: Thu, 05 Nov 2026 22:49:32 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88a9d568e2c9b7f5242da1b3615c1fc92ac4501d607cbe3bfa010a4933ccb09`  
		Last Modified: Thu, 05 Nov 2026 22:49:33 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481b21bf296601be3cec5a8d32a5248954c5a5de6ad4b66467b5db94d7d42972`  
		Last Modified: Thu, 05 Nov 2026 22:49:34 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e0ea02acf2a89f95173468569897ebe00961344895f213593e2b60945dddea`  
		Last Modified: Thu, 05 Nov 2026 22:49:34 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c4b667d0c41e9a7f5353a380e62e02ae66e94957eaf75cad4e8ed7e9b4a2b5`  
		Last Modified: Thu, 05 Nov 2026 22:49:35 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d03db91e0708fc4a3bffc53fed29521ea463df99d219c9ccdddd77e63690c3`  
		Last Modified: Thu, 05 Nov 2026 22:49:35 GMT  
		Size: 5.0 KB (4961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.3.13` - unknown; unknown

```console
$ docker pull percona@sha256:e16d47df7165f12ac5927e08193675ece6938704d4d06433834aaca2a40effba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f5eb3c2a18126a62e377558986db879b3f64592b006ebf6828a16619c61267`

```dockerfile
```

-	Layers:
	-	`sha256:474507006839d1f3a4bc804335c8b8d10528934002c013b32e3adf0865e0bea9`  
		Last Modified: Thu, 05 Nov 2026 22:49:32 GMT  
		Size: 33.9 KB (33856 bytes)  
		MIME: application/vnd.in-toto+json

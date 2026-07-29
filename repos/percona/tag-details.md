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
$ docker pull percona@sha256:a3ca7356faee77fbd6f87e59bcab3f488bc111b021c5674354546f1551d405fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8` - linux; amd64

```console
$ docker pull percona@sha256:311891124a4c4676b02be97e3f2a97c3ce2a3d969de241ccb64fa9473a30497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411254969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6828d38b8910a97443c26a63f8ae9f701a83c62bf5b755461a961932db3e60de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:37 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:37 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_VERSION=8.0.46-37.1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_REPO=testing
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:37 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:37 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 29 Jul 2026 18:27:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:10 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:10 GMT
USER mysql
# Wed, 29 Jul 2026 18:27:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 29 Jul 2026 18:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621701b655c38aa7213c619dcf084245368accc352d3c02192d211ac8c694b80`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490bdd38e1eb0b59e975513d462c336698c75c286a0f3428d8a647c7218f0508`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 9.4 MB (9363942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13d374efcb9c599dc0c080f34c236245a6bef940e4d89efde57f1160fac464`  
		Last Modified: Wed, 29 Jul 2026 18:27:54 GMT  
		Size: 361.2 MB (361180726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0843c0681735a554b369156d767338d8c1ac4aed1ba1b14c02fa57089186a90`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6db06dbdf26eb088c9cde8d39db5f633ed7f0256a31ec38b1e08959fe59f5a9`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948cb8ce26f0727730f0510ceeb5aaaa4528d0f78366b99afd380044f4bc2b0b`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 3.3 KB (3280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8` - unknown; unknown

```console
$ docker pull percona@sha256:08e1138a0510747b5bc5ac7f7f3c108415bd1e1ec2a42d68391760736633a86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5ec34dc8447d5b90f638cf731aef74281bf31593af56ff0c09b204a815260e`

```dockerfile
```

-	Layers:
	-	`sha256:03df78b21f5a43a20f67db330aded752f5e7e1fd2850d6b6bd0b74d367732b29`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8-centos`

```console
$ docker pull percona@sha256:a3ca7356faee77fbd6f87e59bcab3f488bc111b021c5674354546f1551d405fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8-centos` - linux; amd64

```console
$ docker pull percona@sha256:311891124a4c4676b02be97e3f2a97c3ce2a3d969de241ccb64fa9473a30497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411254969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6828d38b8910a97443c26a63f8ae9f701a83c62bf5b755461a961932db3e60de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:37 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:37 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_VERSION=8.0.46-37.1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_REPO=testing
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:37 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:37 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 29 Jul 2026 18:27:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:10 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:10 GMT
USER mysql
# Wed, 29 Jul 2026 18:27:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 29 Jul 2026 18:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621701b655c38aa7213c619dcf084245368accc352d3c02192d211ac8c694b80`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490bdd38e1eb0b59e975513d462c336698c75c286a0f3428d8a647c7218f0508`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 9.4 MB (9363942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13d374efcb9c599dc0c080f34c236245a6bef940e4d89efde57f1160fac464`  
		Last Modified: Wed, 29 Jul 2026 18:27:54 GMT  
		Size: 361.2 MB (361180726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0843c0681735a554b369156d767338d8c1ac4aed1ba1b14c02fa57089186a90`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6db06dbdf26eb088c9cde8d39db5f633ed7f0256a31ec38b1e08959fe59f5a9`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948cb8ce26f0727730f0510ceeb5aaaa4528d0f78366b99afd380044f4bc2b0b`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 3.3 KB (3280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8-centos` - unknown; unknown

```console
$ docker pull percona@sha256:08e1138a0510747b5bc5ac7f7f3c108415bd1e1ec2a42d68391760736633a86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5ec34dc8447d5b90f638cf731aef74281bf31593af56ff0c09b204a815260e`

```dockerfile
```

-	Layers:
	-	`sha256:03df78b21f5a43a20f67db330aded752f5e7e1fd2850d6b6bd0b74d367732b29`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0`

```console
$ docker pull percona@sha256:a3ca7356faee77fbd6f87e59bcab3f488bc111b021c5674354546f1551d405fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0` - linux; amd64

```console
$ docker pull percona@sha256:311891124a4c4676b02be97e3f2a97c3ce2a3d969de241ccb64fa9473a30497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411254969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6828d38b8910a97443c26a63f8ae9f701a83c62bf5b755461a961932db3e60de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:37 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:37 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_VERSION=8.0.46-37.1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_REPO=testing
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:37 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:37 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 29 Jul 2026 18:27:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:10 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:10 GMT
USER mysql
# Wed, 29 Jul 2026 18:27:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 29 Jul 2026 18:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621701b655c38aa7213c619dcf084245368accc352d3c02192d211ac8c694b80`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490bdd38e1eb0b59e975513d462c336698c75c286a0f3428d8a647c7218f0508`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 9.4 MB (9363942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13d374efcb9c599dc0c080f34c236245a6bef940e4d89efde57f1160fac464`  
		Last Modified: Wed, 29 Jul 2026 18:27:54 GMT  
		Size: 361.2 MB (361180726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0843c0681735a554b369156d767338d8c1ac4aed1ba1b14c02fa57089186a90`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6db06dbdf26eb088c9cde8d39db5f633ed7f0256a31ec38b1e08959fe59f5a9`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948cb8ce26f0727730f0510ceeb5aaaa4528d0f78366b99afd380044f4bc2b0b`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 3.3 KB (3280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0` - unknown; unknown

```console
$ docker pull percona@sha256:08e1138a0510747b5bc5ac7f7f3c108415bd1e1ec2a42d68391760736633a86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5ec34dc8447d5b90f638cf731aef74281bf31593af56ff0c09b204a815260e`

```dockerfile
```

-	Layers:
	-	`sha256:03df78b21f5a43a20f67db330aded752f5e7e1fd2850d6b6bd0b74d367732b29`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0-centos`

```console
$ docker pull percona@sha256:a3ca7356faee77fbd6f87e59bcab3f488bc111b021c5674354546f1551d405fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0-centos` - linux; amd64

```console
$ docker pull percona@sha256:311891124a4c4676b02be97e3f2a97c3ce2a3d969de241ccb64fa9473a30497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411254969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6828d38b8910a97443c26a63f8ae9f701a83c62bf5b755461a961932db3e60de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:37 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:37 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_VERSION=8.0.46-37.1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_REPO=testing
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:37 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:37 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 29 Jul 2026 18:27:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:10 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:10 GMT
USER mysql
# Wed, 29 Jul 2026 18:27:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 29 Jul 2026 18:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621701b655c38aa7213c619dcf084245368accc352d3c02192d211ac8c694b80`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490bdd38e1eb0b59e975513d462c336698c75c286a0f3428d8a647c7218f0508`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 9.4 MB (9363942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13d374efcb9c599dc0c080f34c236245a6bef940e4d89efde57f1160fac464`  
		Last Modified: Wed, 29 Jul 2026 18:27:54 GMT  
		Size: 361.2 MB (361180726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0843c0681735a554b369156d767338d8c1ac4aed1ba1b14c02fa57089186a90`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6db06dbdf26eb088c9cde8d39db5f633ed7f0256a31ec38b1e08959fe59f5a9`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948cb8ce26f0727730f0510ceeb5aaaa4528d0f78366b99afd380044f4bc2b0b`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 3.3 KB (3280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0-centos` - unknown; unknown

```console
$ docker pull percona@sha256:08e1138a0510747b5bc5ac7f7f3c108415bd1e1ec2a42d68391760736633a86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5ec34dc8447d5b90f638cf731aef74281bf31593af56ff0c09b204a815260e`

```dockerfile
```

-	Layers:
	-	`sha256:03df78b21f5a43a20f67db330aded752f5e7e1fd2850d6b6bd0b74d367732b29`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0.46-37`

```console
$ docker pull percona@sha256:a3ca7356faee77fbd6f87e59bcab3f488bc111b021c5674354546f1551d405fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0.46-37` - linux; amd64

```console
$ docker pull percona@sha256:311891124a4c4676b02be97e3f2a97c3ce2a3d969de241ccb64fa9473a30497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411254969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6828d38b8910a97443c26a63f8ae9f701a83c62bf5b755461a961932db3e60de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:37 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:37 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_VERSION=8.0.46-37.1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_REPO=testing
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:37 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:37 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 29 Jul 2026 18:27:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:10 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:10 GMT
USER mysql
# Wed, 29 Jul 2026 18:27:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 29 Jul 2026 18:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621701b655c38aa7213c619dcf084245368accc352d3c02192d211ac8c694b80`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490bdd38e1eb0b59e975513d462c336698c75c286a0f3428d8a647c7218f0508`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 9.4 MB (9363942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13d374efcb9c599dc0c080f34c236245a6bef940e4d89efde57f1160fac464`  
		Last Modified: Wed, 29 Jul 2026 18:27:54 GMT  
		Size: 361.2 MB (361180726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0843c0681735a554b369156d767338d8c1ac4aed1ba1b14c02fa57089186a90`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6db06dbdf26eb088c9cde8d39db5f633ed7f0256a31ec38b1e08959fe59f5a9`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948cb8ce26f0727730f0510ceeb5aaaa4528d0f78366b99afd380044f4bc2b0b`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 3.3 KB (3280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0.46-37` - unknown; unknown

```console
$ docker pull percona@sha256:08e1138a0510747b5bc5ac7f7f3c108415bd1e1ec2a42d68391760736633a86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5ec34dc8447d5b90f638cf731aef74281bf31593af56ff0c09b204a815260e`

```dockerfile
```

-	Layers:
	-	`sha256:03df78b21f5a43a20f67db330aded752f5e7e1fd2850d6b6bd0b74d367732b29`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0.46-37-centos`

```console
$ docker pull percona@sha256:a3ca7356faee77fbd6f87e59bcab3f488bc111b021c5674354546f1551d405fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0.46-37-centos` - linux; amd64

```console
$ docker pull percona@sha256:311891124a4c4676b02be97e3f2a97c3ce2a3d969de241ccb64fa9473a30497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411254969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6828d38b8910a97443c26a63f8ae9f701a83c62bf5b755461a961932db3e60de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:37 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:37 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_VERSION=8.0.46-37.1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_REPO=testing
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:37 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:37 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 29 Jul 2026 18:27:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:10 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:10 GMT
USER mysql
# Wed, 29 Jul 2026 18:27:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 29 Jul 2026 18:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621701b655c38aa7213c619dcf084245368accc352d3c02192d211ac8c694b80`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490bdd38e1eb0b59e975513d462c336698c75c286a0f3428d8a647c7218f0508`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 9.4 MB (9363942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13d374efcb9c599dc0c080f34c236245a6bef940e4d89efde57f1160fac464`  
		Last Modified: Wed, 29 Jul 2026 18:27:54 GMT  
		Size: 361.2 MB (361180726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0843c0681735a554b369156d767338d8c1ac4aed1ba1b14c02fa57089186a90`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6db06dbdf26eb088c9cde8d39db5f633ed7f0256a31ec38b1e08959fe59f5a9`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948cb8ce26f0727730f0510ceeb5aaaa4528d0f78366b99afd380044f4bc2b0b`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 3.3 KB (3280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0.46-37-centos` - unknown; unknown

```console
$ docker pull percona@sha256:08e1138a0510747b5bc5ac7f7f3c108415bd1e1ec2a42d68391760736633a86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5ec34dc8447d5b90f638cf731aef74281bf31593af56ff0c09b204a815260e`

```dockerfile
```

-	Layers:
	-	`sha256:03df78b21f5a43a20f67db330aded752f5e7e1fd2850d6b6bd0b74d367732b29`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8`

```console
$ docker pull percona@sha256:a3ca7356faee77fbd6f87e59bcab3f488bc111b021c5674354546f1551d405fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8` - linux; amd64

```console
$ docker pull percona@sha256:311891124a4c4676b02be97e3f2a97c3ce2a3d969de241ccb64fa9473a30497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411254969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6828d38b8910a97443c26a63f8ae9f701a83c62bf5b755461a961932db3e60de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:37 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:37 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_VERSION=8.0.46-37.1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_REPO=testing
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:37 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:37 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 29 Jul 2026 18:27:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:10 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:10 GMT
USER mysql
# Wed, 29 Jul 2026 18:27:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 29 Jul 2026 18:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621701b655c38aa7213c619dcf084245368accc352d3c02192d211ac8c694b80`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490bdd38e1eb0b59e975513d462c336698c75c286a0f3428d8a647c7218f0508`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 9.4 MB (9363942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13d374efcb9c599dc0c080f34c236245a6bef940e4d89efde57f1160fac464`  
		Last Modified: Wed, 29 Jul 2026 18:27:54 GMT  
		Size: 361.2 MB (361180726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0843c0681735a554b369156d767338d8c1ac4aed1ba1b14c02fa57089186a90`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6db06dbdf26eb088c9cde8d39db5f633ed7f0256a31ec38b1e08959fe59f5a9`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948cb8ce26f0727730f0510ceeb5aaaa4528d0f78366b99afd380044f4bc2b0b`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 3.3 KB (3280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8` - unknown; unknown

```console
$ docker pull percona@sha256:08e1138a0510747b5bc5ac7f7f3c108415bd1e1ec2a42d68391760736633a86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5ec34dc8447d5b90f638cf731aef74281bf31593af56ff0c09b204a815260e`

```dockerfile
```

-	Layers:
	-	`sha256:03df78b21f5a43a20f67db330aded752f5e7e1fd2850d6b6bd0b74d367732b29`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8.0`

```console
$ docker pull percona@sha256:a3ca7356faee77fbd6f87e59bcab3f488bc111b021c5674354546f1551d405fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0` - linux; amd64

```console
$ docker pull percona@sha256:311891124a4c4676b02be97e3f2a97c3ce2a3d969de241ccb64fa9473a30497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411254969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6828d38b8910a97443c26a63f8ae9f701a83c62bf5b755461a961932db3e60de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:37 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:37 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_VERSION=8.0.46-37.1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_REPO=testing
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:37 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:37 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 29 Jul 2026 18:27:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:10 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:10 GMT
USER mysql
# Wed, 29 Jul 2026 18:27:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 29 Jul 2026 18:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621701b655c38aa7213c619dcf084245368accc352d3c02192d211ac8c694b80`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490bdd38e1eb0b59e975513d462c336698c75c286a0f3428d8a647c7218f0508`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 9.4 MB (9363942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13d374efcb9c599dc0c080f34c236245a6bef940e4d89efde57f1160fac464`  
		Last Modified: Wed, 29 Jul 2026 18:27:54 GMT  
		Size: 361.2 MB (361180726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0843c0681735a554b369156d767338d8c1ac4aed1ba1b14c02fa57089186a90`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6db06dbdf26eb088c9cde8d39db5f633ed7f0256a31ec38b1e08959fe59f5a9`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948cb8ce26f0727730f0510ceeb5aaaa4528d0f78366b99afd380044f4bc2b0b`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 3.3 KB (3280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:08e1138a0510747b5bc5ac7f7f3c108415bd1e1ec2a42d68391760736633a86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5ec34dc8447d5b90f638cf731aef74281bf31593af56ff0c09b204a815260e`

```dockerfile
```

-	Layers:
	-	`sha256:03df78b21f5a43a20f67db330aded752f5e7e1fd2850d6b6bd0b74d367732b29`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8.0.46-37`

```console
$ docker pull percona@sha256:a3ca7356faee77fbd6f87e59bcab3f488bc111b021c5674354546f1551d405fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0.46-37` - linux; amd64

```console
$ docker pull percona@sha256:311891124a4c4676b02be97e3f2a97c3ce2a3d969de241ccb64fa9473a30497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411254969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6828d38b8910a97443c26a63f8ae9f701a83c62bf5b755461a961932db3e60de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:37 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:37 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_VERSION=8.0.46-37.1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_REPO=testing
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:37 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:37 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 29 Jul 2026 18:27:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:10 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:10 GMT
USER mysql
# Wed, 29 Jul 2026 18:27:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 29 Jul 2026 18:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621701b655c38aa7213c619dcf084245368accc352d3c02192d211ac8c694b80`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490bdd38e1eb0b59e975513d462c336698c75c286a0f3428d8a647c7218f0508`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 9.4 MB (9363942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13d374efcb9c599dc0c080f34c236245a6bef940e4d89efde57f1160fac464`  
		Last Modified: Wed, 29 Jul 2026 18:27:54 GMT  
		Size: 361.2 MB (361180726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0843c0681735a554b369156d767338d8c1ac4aed1ba1b14c02fa57089186a90`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6db06dbdf26eb088c9cde8d39db5f633ed7f0256a31ec38b1e08959fe59f5a9`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948cb8ce26f0727730f0510ceeb5aaaa4528d0f78366b99afd380044f4bc2b0b`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 3.3 KB (3280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0.46-37` - unknown; unknown

```console
$ docker pull percona@sha256:08e1138a0510747b5bc5ac7f7f3c108415bd1e1ec2a42d68391760736633a86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5ec34dc8447d5b90f638cf731aef74281bf31593af56ff0c09b204a815260e`

```dockerfile
```

-	Layers:
	-	`sha256:03df78b21f5a43a20f67db330aded752f5e7e1fd2850d6b6bd0b74d367732b29`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-6.0`

```console
$ docker pull percona@sha256:3535bb83fc3a8127386365dc36eafd93c3c5a6816cfd3895019f63b7e7a71c20
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0` - linux; amd64

```console
$ docker pull percona@sha256:3a9151bcab99dad276e2f66a4fdf3a366f536576aea3f38015f5d45d957e0fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.2 MB (279242905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c55aab22ac19f4669f392e480e10da42e832bcbad1d236c391f7c53adbd268f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:45 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:45 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 29 Jul 2026 18:26:45 GMT
ENV PSMDB_VERSION=6.0.29-23
# Wed, 29 Jul 2026 18:26:45 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:45 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Wed, 29 Jul 2026 18:26:45 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 29 Jul 2026 18:26:45 GMT
ENV PSMDB_REPO=release
# Wed, 29 Jul 2026 18:26:45 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:45 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:45 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:59 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 29 Jul 2026 18:26:59 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 29 Jul 2026 18:26:59 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 29 Jul 2026 18:26:59 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 29 Jul 2026 18:26:59 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 Jul 2026 18:27:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 29 Jul 2026 18:27:01 GMT
VOLUME [/data/db]
# Wed, 29 Jul 2026 18:27:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 29 Jul 2026 18:27:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:01 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:01 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:01 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 29 Jul 2026 18:27:01 GMT
USER 1001
# Wed, 29 Jul 2026 18:27:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e37cd1d4fc2ff0f65a1a17749c077853925d701b4a4499391f1fc12e00e1ae`  
		Last Modified: Wed, 29 Jul 2026 18:27:28 GMT  
		Size: 9.0 MB (8984185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b684d8de6c63d14cdca18764b77e80001029d15cc125a752f5351952b85eea`  
		Last Modified: Wed, 29 Jul 2026 18:27:32 GMT  
		Size: 228.6 MB (228605180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a138e1fe9b24500dce8b705b97447b4449ffe49b0e79fdcb054e3aa0312c4a11`  
		Last Modified: Wed, 29 Jul 2026 18:27:27 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e5301c1cc6eb955216a1ae29ee74faee3ebfca49a8f114f533cfc0f0d342ea`  
		Last Modified: Wed, 29 Jul 2026 18:27:27 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e183d1b59c1b26efa52e66a71938baa0923996e5b0ae41f5680587fca1ea712`  
		Last Modified: Wed, 29 Jul 2026 18:27:28 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfdb944bef264e0614c9c6ee01953c34b759bee125fb32bb66d40bd4627951f`  
		Last Modified: Wed, 29 Jul 2026 18:27:29 GMT  
		Size: 914.5 KB (914518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e82c687f58aa5a58a59c1a4e9b4efdebf44d6049a389b872e067caf6c3673b12`  
		Last Modified: Wed, 29 Jul 2026 18:27:29 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4afba7e5f1f11d364d24036528faca748748dcb6917106f09344cb01a86a483`  
		Last Modified: Wed, 29 Jul 2026 18:27:30 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629fb657b3f35716955a94056de02b5d7d53b75b1eff70d060f5222ac35db084`  
		Last Modified: Wed, 29 Jul 2026 18:27:30 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0` - unknown; unknown

```console
$ docker pull percona@sha256:d06c8fd4be69eda8337e10cae76dbf5d0b6b95b0de44e584394f00de0f053c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9204674b1b5159349466ede92854252ff48cbedadf6f323294a42d30db9abb3c`

```dockerfile
```

-	Layers:
	-	`sha256:32f8e53c4f40e893a4b8d66d6cd01a3715731a50794b95e5b6ed8f323e9f07ae`  
		Last Modified: Wed, 29 Jul 2026 18:27:27 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-6.0.29`

```console
$ docker pull percona@sha256:3535bb83fc3a8127386365dc36eafd93c3c5a6816cfd3895019f63b7e7a71c20
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0.29` - linux; amd64

```console
$ docker pull percona@sha256:3a9151bcab99dad276e2f66a4fdf3a366f536576aea3f38015f5d45d957e0fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.2 MB (279242905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c55aab22ac19f4669f392e480e10da42e832bcbad1d236c391f7c53adbd268f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:45 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:45 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 29 Jul 2026 18:26:45 GMT
ENV PSMDB_VERSION=6.0.29-23
# Wed, 29 Jul 2026 18:26:45 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:45 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Wed, 29 Jul 2026 18:26:45 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 29 Jul 2026 18:26:45 GMT
ENV PSMDB_REPO=release
# Wed, 29 Jul 2026 18:26:45 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:45 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:45 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:59 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 29 Jul 2026 18:26:59 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 29 Jul 2026 18:26:59 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 29 Jul 2026 18:26:59 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 29 Jul 2026 18:26:59 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 Jul 2026 18:27:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 29 Jul 2026 18:27:01 GMT
VOLUME [/data/db]
# Wed, 29 Jul 2026 18:27:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 29 Jul 2026 18:27:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:01 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:01 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:01 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 29 Jul 2026 18:27:01 GMT
USER 1001
# Wed, 29 Jul 2026 18:27:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e37cd1d4fc2ff0f65a1a17749c077853925d701b4a4499391f1fc12e00e1ae`  
		Last Modified: Wed, 29 Jul 2026 18:27:28 GMT  
		Size: 9.0 MB (8984185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b684d8de6c63d14cdca18764b77e80001029d15cc125a752f5351952b85eea`  
		Last Modified: Wed, 29 Jul 2026 18:27:32 GMT  
		Size: 228.6 MB (228605180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a138e1fe9b24500dce8b705b97447b4449ffe49b0e79fdcb054e3aa0312c4a11`  
		Last Modified: Wed, 29 Jul 2026 18:27:27 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e5301c1cc6eb955216a1ae29ee74faee3ebfca49a8f114f533cfc0f0d342ea`  
		Last Modified: Wed, 29 Jul 2026 18:27:27 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e183d1b59c1b26efa52e66a71938baa0923996e5b0ae41f5680587fca1ea712`  
		Last Modified: Wed, 29 Jul 2026 18:27:28 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfdb944bef264e0614c9c6ee01953c34b759bee125fb32bb66d40bd4627951f`  
		Last Modified: Wed, 29 Jul 2026 18:27:29 GMT  
		Size: 914.5 KB (914518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e82c687f58aa5a58a59c1a4e9b4efdebf44d6049a389b872e067caf6c3673b12`  
		Last Modified: Wed, 29 Jul 2026 18:27:29 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4afba7e5f1f11d364d24036528faca748748dcb6917106f09344cb01a86a483`  
		Last Modified: Wed, 29 Jul 2026 18:27:30 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629fb657b3f35716955a94056de02b5d7d53b75b1eff70d060f5222ac35db084`  
		Last Modified: Wed, 29 Jul 2026 18:27:30 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0.29` - unknown; unknown

```console
$ docker pull percona@sha256:d06c8fd4be69eda8337e10cae76dbf5d0b6b95b0de44e584394f00de0f053c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9204674b1b5159349466ede92854252ff48cbedadf6f323294a42d30db9abb3c`

```dockerfile
```

-	Layers:
	-	`sha256:32f8e53c4f40e893a4b8d66d6cd01a3715731a50794b95e5b6ed8f323e9f07ae`  
		Last Modified: Wed, 29 Jul 2026 18:27:27 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-7.0`

```console
$ docker pull percona@sha256:d25f95959ce9867397a91adbaea50df8e67ee0ae9584826fff81f50bc8b936ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0` - linux; amd64

```console
$ docker pull percona@sha256:37fb2225269ddf22eb03ee349feb7b1449d2273ddcf1474cbe8ddb945f3e060e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.8 MB (300790063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d495f419cc5fc7531b5791f28841576f38c8331f2ccff9ebb12dacde65c1c237`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:45 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:45 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 29 Jul 2026 18:26:45 GMT
ENV PSMDB_VERSION=7.0.37-20
# Wed, 29 Jul 2026 18:26:45 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:45 GMT
ENV FULL_PERCONA_VERSION=7.0.37-20.el9
# Wed, 29 Jul 2026 18:26:45 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 29 Jul 2026 18:26:45 GMT
ENV PSMDB_REPO=release
# Wed, 29 Jul 2026 18:26:45 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:45 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:45 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:27:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 Jul 2026 18:27:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 29 Jul 2026 18:27:04 GMT
VOLUME [/data/db]
# Wed, 29 Jul 2026 18:27:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 29 Jul 2026 18:27:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:04 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:04 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:04 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 29 Jul 2026 18:27:04 GMT
USER 1001
# Wed, 29 Jul 2026 18:27:04 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988efa1572cd67fcd0e3b7a357b9171c4e7af479a7b4e49812ba672ad7075332`  
		Last Modified: Wed, 29 Jul 2026 18:27:35 GMT  
		Size: 9.0 MB (8980270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e480f9a95f45acef7d001bf4f565a206ee91e7323b0074623f57202ad156db8`  
		Last Modified: Wed, 29 Jul 2026 18:27:39 GMT  
		Size: 250.2 MB (250156253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da02aabb1d340eeafa692f69c960d37c8a6882c0ceb7398b57e30bcf0666f675`  
		Last Modified: Wed, 29 Jul 2026 18:27:34 GMT  
		Size: 1.7 KB (1668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2119504d1ec55a78024d5046249519684da8705ce039eff6df9a72744b16ee1b`  
		Last Modified: Wed, 29 Jul 2026 18:27:35 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac21db91685d95d1bc7b1c22124d593ec0b80cec470599072f790ba1936d5c7`  
		Last Modified: Wed, 29 Jul 2026 18:27:36 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd654b58e39ad0b5456f26dd88812b4df7b86fa569c7392632d70948d9c3a7bf`  
		Last Modified: Wed, 29 Jul 2026 18:27:36 GMT  
		Size: 914.5 KB (914519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7c5c24a2bf5b492d5cfa81b7dcbe1cbf3e29b41d007121f35f78e41f3b7892`  
		Last Modified: Wed, 29 Jul 2026 18:27:36 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7e204ba9a7a44b8e8c708746290cb4e8ef76a28cdda005150a837d41b4c018`  
		Last Modified: Wed, 29 Jul 2026 18:27:37 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3310dbb089ed9bc0c551e9884adb3f4d2838cbc349ff66514fd6a0b3803cc5bc`  
		Last Modified: Wed, 29 Jul 2026 18:27:37 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0` - unknown; unknown

```console
$ docker pull percona@sha256:4ff5580cbebd72a732411c2ab81a84826f1c4e5ab491e7d1cfaa43467a7cb692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce4da219515cd47859d8897c39c08e48ee1ab138c7b40beee9dee320036b0b99`

```dockerfile
```

-	Layers:
	-	`sha256:66b62d8d1bb6569338a5a7a0c4e04ce4cfffb14238d0d22c6ed6d8ad3db5b750`  
		Last Modified: Wed, 29 Jul 2026 18:27:34 GMT  
		Size: 32.4 KB (32367 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-7.0.37`

```console
$ docker pull percona@sha256:d25f95959ce9867397a91adbaea50df8e67ee0ae9584826fff81f50bc8b936ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0.37` - linux; amd64

```console
$ docker pull percona@sha256:37fb2225269ddf22eb03ee349feb7b1449d2273ddcf1474cbe8ddb945f3e060e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.8 MB (300790063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d495f419cc5fc7531b5791f28841576f38c8331f2ccff9ebb12dacde65c1c237`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:45 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:45 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 29 Jul 2026 18:26:45 GMT
ENV PSMDB_VERSION=7.0.37-20
# Wed, 29 Jul 2026 18:26:45 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:45 GMT
ENV FULL_PERCONA_VERSION=7.0.37-20.el9
# Wed, 29 Jul 2026 18:26:45 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 29 Jul 2026 18:26:45 GMT
ENV PSMDB_REPO=release
# Wed, 29 Jul 2026 18:26:45 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:45 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:45 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:27:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 Jul 2026 18:27:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 29 Jul 2026 18:27:04 GMT
VOLUME [/data/db]
# Wed, 29 Jul 2026 18:27:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 29 Jul 2026 18:27:04 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:04 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:04 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:04 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 29 Jul 2026 18:27:04 GMT
USER 1001
# Wed, 29 Jul 2026 18:27:04 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988efa1572cd67fcd0e3b7a357b9171c4e7af479a7b4e49812ba672ad7075332`  
		Last Modified: Wed, 29 Jul 2026 18:27:35 GMT  
		Size: 9.0 MB (8980270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e480f9a95f45acef7d001bf4f565a206ee91e7323b0074623f57202ad156db8`  
		Last Modified: Wed, 29 Jul 2026 18:27:39 GMT  
		Size: 250.2 MB (250156253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da02aabb1d340eeafa692f69c960d37c8a6882c0ceb7398b57e30bcf0666f675`  
		Last Modified: Wed, 29 Jul 2026 18:27:34 GMT  
		Size: 1.7 KB (1668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2119504d1ec55a78024d5046249519684da8705ce039eff6df9a72744b16ee1b`  
		Last Modified: Wed, 29 Jul 2026 18:27:35 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac21db91685d95d1bc7b1c22124d593ec0b80cec470599072f790ba1936d5c7`  
		Last Modified: Wed, 29 Jul 2026 18:27:36 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd654b58e39ad0b5456f26dd88812b4df7b86fa569c7392632d70948d9c3a7bf`  
		Last Modified: Wed, 29 Jul 2026 18:27:36 GMT  
		Size: 914.5 KB (914519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7c5c24a2bf5b492d5cfa81b7dcbe1cbf3e29b41d007121f35f78e41f3b7892`  
		Last Modified: Wed, 29 Jul 2026 18:27:36 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7e204ba9a7a44b8e8c708746290cb4e8ef76a28cdda005150a837d41b4c018`  
		Last Modified: Wed, 29 Jul 2026 18:27:37 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3310dbb089ed9bc0c551e9884adb3f4d2838cbc349ff66514fd6a0b3803cc5bc`  
		Last Modified: Wed, 29 Jul 2026 18:27:37 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0.37` - unknown; unknown

```console
$ docker pull percona@sha256:4ff5580cbebd72a732411c2ab81a84826f1c4e5ab491e7d1cfaa43467a7cb692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce4da219515cd47859d8897c39c08e48ee1ab138c7b40beee9dee320036b0b99`

```dockerfile
```

-	Layers:
	-	`sha256:66b62d8d1bb6569338a5a7a0c4e04ce4cfffb14238d0d22c6ed6d8ad3db5b750`  
		Last Modified: Wed, 29 Jul 2026 18:27:34 GMT  
		Size: 32.4 KB (32367 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.0`

```console
$ docker pull percona@sha256:8df11cc2868fffcd0f1510b3ff58d61a223f7f13640bf4e62409dd78440179d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0` - linux; amd64

```console
$ docker pull percona@sha256:0429ba678314fcd84f35aa422d248075cc7bf934c81edb31c529b098d03268a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320927656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6dcb7d44144e774f2a11c2c5518deffa9847a74c7b9f94cef794ee79539b2db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:44 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:44 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 29 Jul 2026 18:26:44 GMT
ENV PSMDB_VERSION=8.0.26-11
# Wed, 29 Jul 2026 18:26:44 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:44 GMT
ENV FULL_PERCONA_VERSION=8.0.26-11.el9
# Wed, 29 Jul 2026 18:26:44 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 29 Jul 2026 18:26:44 GMT
ENV PSMDB_REPO=testing
# Wed, 29 Jul 2026 18:26:44 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 29 Jul 2026 18:26:44 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:44 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:44 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:27:00 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 29 Jul 2026 18:27:00 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 29 Jul 2026 18:27:00 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 29 Jul 2026 18:27:00 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 29 Jul 2026 18:27:00 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 Jul 2026 18:27:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
VOLUME [/data/db]
# Wed, 29 Jul 2026 18:27:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:02 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:02 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 29 Jul 2026 18:27:02 GMT
USER 1001
# Wed, 29 Jul 2026 18:27:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a46c8f9ab5f59573f6cfec16c71bdd5a096479ddddfcd1345fbc2f8b65cad0`  
		Last Modified: Wed, 29 Jul 2026 18:27:33 GMT  
		Size: 9.0 MB (8980266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2213892dcaf02913fd0ba6c45de045c10410950a6ebb162ea37714d806fdfc48`  
		Last Modified: Wed, 29 Jul 2026 18:27:39 GMT  
		Size: 270.3 MB (270293859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f414e7cf2dd2840d083dc43f869e8bacb2bb035b1aa3528c8e1b6a1d66de7f4`  
		Last Modified: Wed, 29 Jul 2026 18:27:33 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2297bbcf37699294ac5f90e6430a907e331f3da37600e803c13e77738e67c63e`  
		Last Modified: Wed, 29 Jul 2026 18:27:33 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c330aef0fd0ae254f2a0982be455c90e2250e2f12adaaaf17368fc5a16ef1a`  
		Last Modified: Wed, 29 Jul 2026 18:27:34 GMT  
		Size: 10.6 KB (10574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb5c791b0fc4ddab27e238c0493bacf27e639c25f7669ba6e3b0cccd14ab244`  
		Last Modified: Wed, 29 Jul 2026 18:27:34 GMT  
		Size: 914.5 KB (914518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:176c185ae2670e8509077834ce82fe441cc13fbd3ca75256eda06d0ca57cb2ae`  
		Last Modified: Wed, 29 Jul 2026 18:27:35 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9e6823329d7832de581510cd23ad8caa74f4ef4b05248a1944017bd59c16bf`  
		Last Modified: Wed, 29 Jul 2026 18:27:36 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a5f3d02deb95009d551c7c7b071ca7be19fc484cc6308ae939088841bf9dd76`  
		Last Modified: Wed, 29 Jul 2026 18:27:36 GMT  
		Size: 5.0 KB (4965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:ca2b12c0f92b074fade9bcf7ea4b352ccb0c65888ff460581212aa9b9b3b5b2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312a621abd33d7b441c76d31bdbfdd26ae922eab8f562c503822ecfd80b19969`

```dockerfile
```

-	Layers:
	-	`sha256:fa0fb2b228ede642da43a085c8a6258ca65805bb7c824664e684f85a3638ae6e`  
		Last Modified: Wed, 29 Jul 2026 18:27:33 GMT  
		Size: 32.7 KB (32673 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.0.26`

```console
$ docker pull percona@sha256:8df11cc2868fffcd0f1510b3ff58d61a223f7f13640bf4e62409dd78440179d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0.26` - linux; amd64

```console
$ docker pull percona@sha256:0429ba678314fcd84f35aa422d248075cc7bf934c81edb31c529b098d03268a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320927656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6dcb7d44144e774f2a11c2c5518deffa9847a74c7b9f94cef794ee79539b2db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:44 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:44 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 29 Jul 2026 18:26:44 GMT
ENV PSMDB_VERSION=8.0.26-11
# Wed, 29 Jul 2026 18:26:44 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:44 GMT
ENV FULL_PERCONA_VERSION=8.0.26-11.el9
# Wed, 29 Jul 2026 18:26:44 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 29 Jul 2026 18:26:44 GMT
ENV PSMDB_REPO=testing
# Wed, 29 Jul 2026 18:26:44 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 29 Jul 2026 18:26:44 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:44 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:44 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:27:00 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 29 Jul 2026 18:27:00 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 29 Jul 2026 18:27:00 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 29 Jul 2026 18:27:00 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 29 Jul 2026 18:27:00 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 Jul 2026 18:27:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
VOLUME [/data/db]
# Wed, 29 Jul 2026 18:27:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:02 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:02 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 29 Jul 2026 18:27:02 GMT
USER 1001
# Wed, 29 Jul 2026 18:27:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a46c8f9ab5f59573f6cfec16c71bdd5a096479ddddfcd1345fbc2f8b65cad0`  
		Last Modified: Wed, 29 Jul 2026 18:27:33 GMT  
		Size: 9.0 MB (8980266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2213892dcaf02913fd0ba6c45de045c10410950a6ebb162ea37714d806fdfc48`  
		Last Modified: Wed, 29 Jul 2026 18:27:39 GMT  
		Size: 270.3 MB (270293859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f414e7cf2dd2840d083dc43f869e8bacb2bb035b1aa3528c8e1b6a1d66de7f4`  
		Last Modified: Wed, 29 Jul 2026 18:27:33 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2297bbcf37699294ac5f90e6430a907e331f3da37600e803c13e77738e67c63e`  
		Last Modified: Wed, 29 Jul 2026 18:27:33 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c330aef0fd0ae254f2a0982be455c90e2250e2f12adaaaf17368fc5a16ef1a`  
		Last Modified: Wed, 29 Jul 2026 18:27:34 GMT  
		Size: 10.6 KB (10574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb5c791b0fc4ddab27e238c0493bacf27e639c25f7669ba6e3b0cccd14ab244`  
		Last Modified: Wed, 29 Jul 2026 18:27:34 GMT  
		Size: 914.5 KB (914518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:176c185ae2670e8509077834ce82fe441cc13fbd3ca75256eda06d0ca57cb2ae`  
		Last Modified: Wed, 29 Jul 2026 18:27:35 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9e6823329d7832de581510cd23ad8caa74f4ef4b05248a1944017bd59c16bf`  
		Last Modified: Wed, 29 Jul 2026 18:27:36 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a5f3d02deb95009d551c7c7b071ca7be19fc484cc6308ae939088841bf9dd76`  
		Last Modified: Wed, 29 Jul 2026 18:27:36 GMT  
		Size: 5.0 KB (4965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0.26` - unknown; unknown

```console
$ docker pull percona@sha256:ca2b12c0f92b074fade9bcf7ea4b352ccb0c65888ff460581212aa9b9b3b5b2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312a621abd33d7b441c76d31bdbfdd26ae922eab8f562c503822ecfd80b19969`

```dockerfile
```

-	Layers:
	-	`sha256:fa0fb2b228ede642da43a085c8a6258ca65805bb7c824664e684f85a3638ae6e`  
		Last Modified: Wed, 29 Jul 2026 18:27:33 GMT  
		Size: 32.7 KB (32673 bytes)  
		MIME: application/vnd.in-toto+json

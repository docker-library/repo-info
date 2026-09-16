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
-	[`percona:psmdb-7.0.40`](#perconapsmdb-7040)
-	[`percona:psmdb-8.0`](#perconapsmdb-80)
-	[`percona:psmdb-8.0.29`](#perconapsmdb-8029)

## `percona:8`

```console
$ docker pull percona@sha256:a4943900144832f48fc692f790c45e5468cbc49e8d39a4c0bf57facd88db8d63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8` - linux; amd64

```console
$ docker pull percona@sha256:75278f49239ce23dc3e049d230c0edb7ef9eabd21d9acdd3cdf86fc9c70ae0d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.4 MB (412400044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604131b071b1b2dc61586aae6e5ebce617b6ad814c02a758d68edeb18fb3f8b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:26 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:26 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_VERSION=8.0.46-37.1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_REPO=testing
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:26 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:26 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:49:06 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:06 GMT
USER mysql
# Tue, 15 Sep 2026 22:49:06 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 15 Sep 2026 22:49:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ad4f5e9667182690109874c1b7a8948cdebc1c547dd7b1296a4b5cec536302`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0373f71a7216f3a335863f36f6d8ca84b2b661b2f4c870209fdb64ddf86fceb9`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 9.3 MB (9349832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3ea2cfec4f28a4d13df5afb62ef6f1abad54410dfed8bae49f5fd815155316`  
		Last Modified: Tue, 15 Sep 2026 22:49:51 GMT  
		Size: 362.2 MB (362245754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c721238d50707f1b6d57f710a4e639d8da53404980ba3647065f904988bbe7f`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c16eaba38a4a62718c560a75d4d27a208145db04579bb534d3220a37e2c2365`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 4.0 KB (3957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf482d3fca149b4556c2dd7c82f363e7d0dd12cbfb61e28d9bb7a23dccf75cb`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8` - unknown; unknown

```console
$ docker pull percona@sha256:b4a8b92a9a20bcf36a27cfb76afb642f1960ac7d9f78146514246f464dc06b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75967c7f652320fe1da4faca566f7c3241e3f50bd305763e4a40128c24e08c21`

```dockerfile
```

-	Layers:
	-	`sha256:e2b0b0daa0e1a22bc988a472a781c6d9d048d60e0b1ff60ad344208d12f3dd83`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8-centos`

```console
$ docker pull percona@sha256:a4943900144832f48fc692f790c45e5468cbc49e8d39a4c0bf57facd88db8d63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8-centos` - linux; amd64

```console
$ docker pull percona@sha256:75278f49239ce23dc3e049d230c0edb7ef9eabd21d9acdd3cdf86fc9c70ae0d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.4 MB (412400044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604131b071b1b2dc61586aae6e5ebce617b6ad814c02a758d68edeb18fb3f8b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:26 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:26 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_VERSION=8.0.46-37.1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_REPO=testing
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:26 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:26 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:49:06 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:06 GMT
USER mysql
# Tue, 15 Sep 2026 22:49:06 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 15 Sep 2026 22:49:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ad4f5e9667182690109874c1b7a8948cdebc1c547dd7b1296a4b5cec536302`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0373f71a7216f3a335863f36f6d8ca84b2b661b2f4c870209fdb64ddf86fceb9`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 9.3 MB (9349832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3ea2cfec4f28a4d13df5afb62ef6f1abad54410dfed8bae49f5fd815155316`  
		Last Modified: Tue, 15 Sep 2026 22:49:51 GMT  
		Size: 362.2 MB (362245754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c721238d50707f1b6d57f710a4e639d8da53404980ba3647065f904988bbe7f`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c16eaba38a4a62718c560a75d4d27a208145db04579bb534d3220a37e2c2365`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 4.0 KB (3957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf482d3fca149b4556c2dd7c82f363e7d0dd12cbfb61e28d9bb7a23dccf75cb`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8-centos` - unknown; unknown

```console
$ docker pull percona@sha256:b4a8b92a9a20bcf36a27cfb76afb642f1960ac7d9f78146514246f464dc06b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75967c7f652320fe1da4faca566f7c3241e3f50bd305763e4a40128c24e08c21`

```dockerfile
```

-	Layers:
	-	`sha256:e2b0b0daa0e1a22bc988a472a781c6d9d048d60e0b1ff60ad344208d12f3dd83`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0`

```console
$ docker pull percona@sha256:a4943900144832f48fc692f790c45e5468cbc49e8d39a4c0bf57facd88db8d63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0` - linux; amd64

```console
$ docker pull percona@sha256:75278f49239ce23dc3e049d230c0edb7ef9eabd21d9acdd3cdf86fc9c70ae0d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.4 MB (412400044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604131b071b1b2dc61586aae6e5ebce617b6ad814c02a758d68edeb18fb3f8b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:26 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:26 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_VERSION=8.0.46-37.1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_REPO=testing
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:26 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:26 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:49:06 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:06 GMT
USER mysql
# Tue, 15 Sep 2026 22:49:06 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 15 Sep 2026 22:49:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ad4f5e9667182690109874c1b7a8948cdebc1c547dd7b1296a4b5cec536302`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0373f71a7216f3a335863f36f6d8ca84b2b661b2f4c870209fdb64ddf86fceb9`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 9.3 MB (9349832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3ea2cfec4f28a4d13df5afb62ef6f1abad54410dfed8bae49f5fd815155316`  
		Last Modified: Tue, 15 Sep 2026 22:49:51 GMT  
		Size: 362.2 MB (362245754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c721238d50707f1b6d57f710a4e639d8da53404980ba3647065f904988bbe7f`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c16eaba38a4a62718c560a75d4d27a208145db04579bb534d3220a37e2c2365`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 4.0 KB (3957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf482d3fca149b4556c2dd7c82f363e7d0dd12cbfb61e28d9bb7a23dccf75cb`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0` - unknown; unknown

```console
$ docker pull percona@sha256:b4a8b92a9a20bcf36a27cfb76afb642f1960ac7d9f78146514246f464dc06b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75967c7f652320fe1da4faca566f7c3241e3f50bd305763e4a40128c24e08c21`

```dockerfile
```

-	Layers:
	-	`sha256:e2b0b0daa0e1a22bc988a472a781c6d9d048d60e0b1ff60ad344208d12f3dd83`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0-centos`

```console
$ docker pull percona@sha256:a4943900144832f48fc692f790c45e5468cbc49e8d39a4c0bf57facd88db8d63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0-centos` - linux; amd64

```console
$ docker pull percona@sha256:75278f49239ce23dc3e049d230c0edb7ef9eabd21d9acdd3cdf86fc9c70ae0d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.4 MB (412400044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604131b071b1b2dc61586aae6e5ebce617b6ad814c02a758d68edeb18fb3f8b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:26 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:26 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_VERSION=8.0.46-37.1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_REPO=testing
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:26 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:26 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:49:06 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:06 GMT
USER mysql
# Tue, 15 Sep 2026 22:49:06 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 15 Sep 2026 22:49:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ad4f5e9667182690109874c1b7a8948cdebc1c547dd7b1296a4b5cec536302`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0373f71a7216f3a335863f36f6d8ca84b2b661b2f4c870209fdb64ddf86fceb9`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 9.3 MB (9349832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3ea2cfec4f28a4d13df5afb62ef6f1abad54410dfed8bae49f5fd815155316`  
		Last Modified: Tue, 15 Sep 2026 22:49:51 GMT  
		Size: 362.2 MB (362245754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c721238d50707f1b6d57f710a4e639d8da53404980ba3647065f904988bbe7f`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c16eaba38a4a62718c560a75d4d27a208145db04579bb534d3220a37e2c2365`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 4.0 KB (3957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf482d3fca149b4556c2dd7c82f363e7d0dd12cbfb61e28d9bb7a23dccf75cb`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0-centos` - unknown; unknown

```console
$ docker pull percona@sha256:b4a8b92a9a20bcf36a27cfb76afb642f1960ac7d9f78146514246f464dc06b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75967c7f652320fe1da4faca566f7c3241e3f50bd305763e4a40128c24e08c21`

```dockerfile
```

-	Layers:
	-	`sha256:e2b0b0daa0e1a22bc988a472a781c6d9d048d60e0b1ff60ad344208d12f3dd83`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0.46-37`

```console
$ docker pull percona@sha256:a4943900144832f48fc692f790c45e5468cbc49e8d39a4c0bf57facd88db8d63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0.46-37` - linux; amd64

```console
$ docker pull percona@sha256:75278f49239ce23dc3e049d230c0edb7ef9eabd21d9acdd3cdf86fc9c70ae0d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.4 MB (412400044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604131b071b1b2dc61586aae6e5ebce617b6ad814c02a758d68edeb18fb3f8b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:26 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:26 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_VERSION=8.0.46-37.1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_REPO=testing
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:26 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:26 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:49:06 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:06 GMT
USER mysql
# Tue, 15 Sep 2026 22:49:06 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 15 Sep 2026 22:49:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ad4f5e9667182690109874c1b7a8948cdebc1c547dd7b1296a4b5cec536302`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0373f71a7216f3a335863f36f6d8ca84b2b661b2f4c870209fdb64ddf86fceb9`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 9.3 MB (9349832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3ea2cfec4f28a4d13df5afb62ef6f1abad54410dfed8bae49f5fd815155316`  
		Last Modified: Tue, 15 Sep 2026 22:49:51 GMT  
		Size: 362.2 MB (362245754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c721238d50707f1b6d57f710a4e639d8da53404980ba3647065f904988bbe7f`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c16eaba38a4a62718c560a75d4d27a208145db04579bb534d3220a37e2c2365`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 4.0 KB (3957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf482d3fca149b4556c2dd7c82f363e7d0dd12cbfb61e28d9bb7a23dccf75cb`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0.46-37` - unknown; unknown

```console
$ docker pull percona@sha256:b4a8b92a9a20bcf36a27cfb76afb642f1960ac7d9f78146514246f464dc06b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75967c7f652320fe1da4faca566f7c3241e3f50bd305763e4a40128c24e08c21`

```dockerfile
```

-	Layers:
	-	`sha256:e2b0b0daa0e1a22bc988a472a781c6d9d048d60e0b1ff60ad344208d12f3dd83`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0.46-37-centos`

```console
$ docker pull percona@sha256:a4943900144832f48fc692f790c45e5468cbc49e8d39a4c0bf57facd88db8d63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0.46-37-centos` - linux; amd64

```console
$ docker pull percona@sha256:75278f49239ce23dc3e049d230c0edb7ef9eabd21d9acdd3cdf86fc9c70ae0d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.4 MB (412400044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604131b071b1b2dc61586aae6e5ebce617b6ad814c02a758d68edeb18fb3f8b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:26 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:26 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_VERSION=8.0.46-37.1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_REPO=testing
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:26 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:26 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:49:06 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:06 GMT
USER mysql
# Tue, 15 Sep 2026 22:49:06 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 15 Sep 2026 22:49:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ad4f5e9667182690109874c1b7a8948cdebc1c547dd7b1296a4b5cec536302`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0373f71a7216f3a335863f36f6d8ca84b2b661b2f4c870209fdb64ddf86fceb9`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 9.3 MB (9349832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3ea2cfec4f28a4d13df5afb62ef6f1abad54410dfed8bae49f5fd815155316`  
		Last Modified: Tue, 15 Sep 2026 22:49:51 GMT  
		Size: 362.2 MB (362245754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c721238d50707f1b6d57f710a4e639d8da53404980ba3647065f904988bbe7f`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c16eaba38a4a62718c560a75d4d27a208145db04579bb534d3220a37e2c2365`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 4.0 KB (3957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf482d3fca149b4556c2dd7c82f363e7d0dd12cbfb61e28d9bb7a23dccf75cb`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0.46-37-centos` - unknown; unknown

```console
$ docker pull percona@sha256:b4a8b92a9a20bcf36a27cfb76afb642f1960ac7d9f78146514246f464dc06b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75967c7f652320fe1da4faca566f7c3241e3f50bd305763e4a40128c24e08c21`

```dockerfile
```

-	Layers:
	-	`sha256:e2b0b0daa0e1a22bc988a472a781c6d9d048d60e0b1ff60ad344208d12f3dd83`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8`

```console
$ docker pull percona@sha256:a4943900144832f48fc692f790c45e5468cbc49e8d39a4c0bf57facd88db8d63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8` - linux; amd64

```console
$ docker pull percona@sha256:75278f49239ce23dc3e049d230c0edb7ef9eabd21d9acdd3cdf86fc9c70ae0d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.4 MB (412400044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604131b071b1b2dc61586aae6e5ebce617b6ad814c02a758d68edeb18fb3f8b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:26 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:26 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_VERSION=8.0.46-37.1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_REPO=testing
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:26 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:26 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:49:06 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:06 GMT
USER mysql
# Tue, 15 Sep 2026 22:49:06 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 15 Sep 2026 22:49:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ad4f5e9667182690109874c1b7a8948cdebc1c547dd7b1296a4b5cec536302`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0373f71a7216f3a335863f36f6d8ca84b2b661b2f4c870209fdb64ddf86fceb9`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 9.3 MB (9349832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3ea2cfec4f28a4d13df5afb62ef6f1abad54410dfed8bae49f5fd815155316`  
		Last Modified: Tue, 15 Sep 2026 22:49:51 GMT  
		Size: 362.2 MB (362245754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c721238d50707f1b6d57f710a4e639d8da53404980ba3647065f904988bbe7f`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c16eaba38a4a62718c560a75d4d27a208145db04579bb534d3220a37e2c2365`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 4.0 KB (3957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf482d3fca149b4556c2dd7c82f363e7d0dd12cbfb61e28d9bb7a23dccf75cb`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8` - unknown; unknown

```console
$ docker pull percona@sha256:b4a8b92a9a20bcf36a27cfb76afb642f1960ac7d9f78146514246f464dc06b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75967c7f652320fe1da4faca566f7c3241e3f50bd305763e4a40128c24e08c21`

```dockerfile
```

-	Layers:
	-	`sha256:e2b0b0daa0e1a22bc988a472a781c6d9d048d60e0b1ff60ad344208d12f3dd83`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8.0`

```console
$ docker pull percona@sha256:a4943900144832f48fc692f790c45e5468cbc49e8d39a4c0bf57facd88db8d63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0` - linux; amd64

```console
$ docker pull percona@sha256:75278f49239ce23dc3e049d230c0edb7ef9eabd21d9acdd3cdf86fc9c70ae0d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.4 MB (412400044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604131b071b1b2dc61586aae6e5ebce617b6ad814c02a758d68edeb18fb3f8b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:26 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:26 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_VERSION=8.0.46-37.1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_REPO=testing
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:26 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:26 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:49:06 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:06 GMT
USER mysql
# Tue, 15 Sep 2026 22:49:06 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 15 Sep 2026 22:49:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ad4f5e9667182690109874c1b7a8948cdebc1c547dd7b1296a4b5cec536302`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0373f71a7216f3a335863f36f6d8ca84b2b661b2f4c870209fdb64ddf86fceb9`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 9.3 MB (9349832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3ea2cfec4f28a4d13df5afb62ef6f1abad54410dfed8bae49f5fd815155316`  
		Last Modified: Tue, 15 Sep 2026 22:49:51 GMT  
		Size: 362.2 MB (362245754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c721238d50707f1b6d57f710a4e639d8da53404980ba3647065f904988bbe7f`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c16eaba38a4a62718c560a75d4d27a208145db04579bb534d3220a37e2c2365`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 4.0 KB (3957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf482d3fca149b4556c2dd7c82f363e7d0dd12cbfb61e28d9bb7a23dccf75cb`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:b4a8b92a9a20bcf36a27cfb76afb642f1960ac7d9f78146514246f464dc06b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75967c7f652320fe1da4faca566f7c3241e3f50bd305763e4a40128c24e08c21`

```dockerfile
```

-	Layers:
	-	`sha256:e2b0b0daa0e1a22bc988a472a781c6d9d048d60e0b1ff60ad344208d12f3dd83`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8.0.46-37`

```console
$ docker pull percona@sha256:a4943900144832f48fc692f790c45e5468cbc49e8d39a4c0bf57facd88db8d63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0.46-37` - linux; amd64

```console
$ docker pull percona@sha256:75278f49239ce23dc3e049d230c0edb7ef9eabd21d9acdd3cdf86fc9c70ae0d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.4 MB (412400044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604131b071b1b2dc61586aae6e5ebce617b6ad814c02a758d68edeb18fb3f8b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:26 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:26 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_VERSION=8.0.46-37.1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_REPO=testing
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:26 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Tue, 15 Sep 2026 22:48:26 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:26 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 15 Sep 2026 22:49:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:49:06 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:06 GMT
USER mysql
# Tue, 15 Sep 2026 22:49:06 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 15 Sep 2026 22:49:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ad4f5e9667182690109874c1b7a8948cdebc1c547dd7b1296a4b5cec536302`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0373f71a7216f3a335863f36f6d8ca84b2b661b2f4c870209fdb64ddf86fceb9`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 9.3 MB (9349832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3ea2cfec4f28a4d13df5afb62ef6f1abad54410dfed8bae49f5fd815155316`  
		Last Modified: Tue, 15 Sep 2026 22:49:51 GMT  
		Size: 362.2 MB (362245754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c721238d50707f1b6d57f710a4e639d8da53404980ba3647065f904988bbe7f`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c16eaba38a4a62718c560a75d4d27a208145db04579bb534d3220a37e2c2365`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 4.0 KB (3957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf482d3fca149b4556c2dd7c82f363e7d0dd12cbfb61e28d9bb7a23dccf75cb`  
		Last Modified: Tue, 15 Sep 2026 22:49:45 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0.46-37` - unknown; unknown

```console
$ docker pull percona@sha256:b4a8b92a9a20bcf36a27cfb76afb642f1960ac7d9f78146514246f464dc06b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75967c7f652320fe1da4faca566f7c3241e3f50bd305763e4a40128c24e08c21`

```dockerfile
```

-	Layers:
	-	`sha256:e2b0b0daa0e1a22bc988a472a781c6d9d048d60e0b1ff60ad344208d12f3dd83`  
		Last Modified: Tue, 15 Sep 2026 22:49:44 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-6.0`

```console
$ docker pull percona@sha256:494be21303b67a9fb67d6c6feb3a9e9636ddce49282aaf6f159a67ea9cf154e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0` - linux; amd64

```console
$ docker pull percona@sha256:1ac52cc878d5bb5b5e1d5e2dd130d2a2a56b4249b9141834e102d87e58fe6463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.4 MB (280350123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9291189a0c53454c775c2bbdd496a22c507a103001b5a55e89ca023fc3ff46`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:36 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:36 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Tue, 15 Sep 2026 22:48:36 GMT
ENV PSMDB_VERSION=6.0.29-23
# Tue, 15 Sep 2026 22:48:36 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:36 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Tue, 15 Sep 2026 22:48:36 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Tue, 15 Sep 2026 22:48:36 GMT
ENV PSMDB_REPO=release
# Tue, 15 Sep 2026 22:48:36 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:36 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:36 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Tue, 15 Sep 2026 22:48:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Tue, 15 Sep 2026 22:48:58 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Tue, 15 Sep 2026 22:48:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Tue, 15 Sep 2026 22:48:58 GMT
ENV GOSU_VERSION=1.11
# Tue, 15 Sep 2026 22:49:00 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Tue, 15 Sep 2026 22:49:00 GMT
VOLUME [/data/db]
# Tue, 15 Sep 2026 22:49:00 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Tue, 15 Sep 2026 22:49:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:49:01 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:49:01 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:49:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:01 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 15 Sep 2026 22:49:01 GMT
USER 1001
# Tue, 15 Sep 2026 22:49:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9306df82077932f5ed202edfd7fe1ddb4937dbbdf9304edd23ec7f0ccadff2f`  
		Last Modified: Tue, 15 Sep 2026 22:49:27 GMT  
		Size: 9.0 MB (8970664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60c2b4badeea6b3ded58fa80940957a83a5f634fc4862ae046cf1725277f2bfd`  
		Last Modified: Tue, 15 Sep 2026 22:49:31 GMT  
		Size: 229.6 MB (229631797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bb4ffa2c66bd3f5a7454f19a2ae3c1eee621f141fdc8063431ffa3f6ed2a1c`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 1.6 KB (1636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd9efa351d2417ec589a90f91bc9d74597a53568a5282a17f99a3aa80c0f316`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eef1068c84b7144c174a30c7a6aef8010bc19594b1bbb5dcaebe71c99295417`  
		Last Modified: Tue, 15 Sep 2026 22:49:27 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9862e3fda1f4b874e330ff9d5877fb55d56efb601a4f118e20f82c954331ab63`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9812055cdd0cb45db2e4c6b4bd9772428046cb2bc6cbec93a302fbc9e03907e`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1cc46bffd53b1193927fc39bee4dafaeaead9f33e1cd0ba2e1bde956b34e70d`  
		Last Modified: Tue, 15 Sep 2026 22:49:29 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbb537c8e75510a4edefb04ee40569abf42ea37fb83768399887e3e288ff151`  
		Last Modified: Tue, 15 Sep 2026 22:49:29 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0` - unknown; unknown

```console
$ docker pull percona@sha256:6ac54786627177c8373a095bfcd92f6010a1a00834c361a0346383df4bcfff75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d018e28d88aa1c4dbb1416565b4d49207c3a6985d2b30135a897a643385b39`

```dockerfile
```

-	Layers:
	-	`sha256:188a6e184a9a8331bb62f4a47a2fb38fca6b7347d012a74f794b95fa48637229`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-6.0.29`

```console
$ docker pull percona@sha256:494be21303b67a9fb67d6c6feb3a9e9636ddce49282aaf6f159a67ea9cf154e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0.29` - linux; amd64

```console
$ docker pull percona@sha256:1ac52cc878d5bb5b5e1d5e2dd130d2a2a56b4249b9141834e102d87e58fe6463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.4 MB (280350123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9291189a0c53454c775c2bbdd496a22c507a103001b5a55e89ca023fc3ff46`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:36 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:36 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Tue, 15 Sep 2026 22:48:36 GMT
ENV PSMDB_VERSION=6.0.29-23
# Tue, 15 Sep 2026 22:48:36 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:36 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Tue, 15 Sep 2026 22:48:36 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Tue, 15 Sep 2026 22:48:36 GMT
ENV PSMDB_REPO=release
# Tue, 15 Sep 2026 22:48:36 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:36 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:36 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Tue, 15 Sep 2026 22:48:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Tue, 15 Sep 2026 22:48:58 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Tue, 15 Sep 2026 22:48:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Tue, 15 Sep 2026 22:48:58 GMT
ENV GOSU_VERSION=1.11
# Tue, 15 Sep 2026 22:49:00 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Tue, 15 Sep 2026 22:49:00 GMT
VOLUME [/data/db]
# Tue, 15 Sep 2026 22:49:00 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Tue, 15 Sep 2026 22:49:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:49:01 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:49:01 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:49:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:01 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 15 Sep 2026 22:49:01 GMT
USER 1001
# Tue, 15 Sep 2026 22:49:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9306df82077932f5ed202edfd7fe1ddb4937dbbdf9304edd23ec7f0ccadff2f`  
		Last Modified: Tue, 15 Sep 2026 22:49:27 GMT  
		Size: 9.0 MB (8970664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60c2b4badeea6b3ded58fa80940957a83a5f634fc4862ae046cf1725277f2bfd`  
		Last Modified: Tue, 15 Sep 2026 22:49:31 GMT  
		Size: 229.6 MB (229631797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bb4ffa2c66bd3f5a7454f19a2ae3c1eee621f141fdc8063431ffa3f6ed2a1c`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 1.6 KB (1636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd9efa351d2417ec589a90f91bc9d74597a53568a5282a17f99a3aa80c0f316`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eef1068c84b7144c174a30c7a6aef8010bc19594b1bbb5dcaebe71c99295417`  
		Last Modified: Tue, 15 Sep 2026 22:49:27 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9862e3fda1f4b874e330ff9d5877fb55d56efb601a4f118e20f82c954331ab63`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9812055cdd0cb45db2e4c6b4bd9772428046cb2bc6cbec93a302fbc9e03907e`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1cc46bffd53b1193927fc39bee4dafaeaead9f33e1cd0ba2e1bde956b34e70d`  
		Last Modified: Tue, 15 Sep 2026 22:49:29 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbb537c8e75510a4edefb04ee40569abf42ea37fb83768399887e3e288ff151`  
		Last Modified: Tue, 15 Sep 2026 22:49:29 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0.29` - unknown; unknown

```console
$ docker pull percona@sha256:6ac54786627177c8373a095bfcd92f6010a1a00834c361a0346383df4bcfff75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d018e28d88aa1c4dbb1416565b4d49207c3a6985d2b30135a897a643385b39`

```dockerfile
```

-	Layers:
	-	`sha256:188a6e184a9a8331bb62f4a47a2fb38fca6b7347d012a74f794b95fa48637229`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-7.0`

```console
$ docker pull percona@sha256:d8a6a7d9edba98cecb4b29d419a29fd9751fb958ab08f1384a5ccfdb5cb7b177
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0` - linux; amd64

```console
$ docker pull percona@sha256:39c214e7ac331716900cb8db0b7463b1cc45c9b8ef0b739d7d57d91e1eaad8c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305207455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fc9157bf728c60b929ad5f34881e157c961d6d26d5cd2e4ed2d18094feaf5e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:35 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:35 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Tue, 15 Sep 2026 22:48:35 GMT
ENV PSMDB_VERSION=7.0.40-22
# Tue, 15 Sep 2026 22:48:35 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:35 GMT
ENV FULL_PERCONA_VERSION=7.0.40-22.el9
# Tue, 15 Sep 2026 22:48:35 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Tue, 15 Sep 2026 22:48:35 GMT
ENV PSMDB_REPO=release
# Tue, 15 Sep 2026 22:48:35 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:35 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:35 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
ENV GOSU_VERSION=1.11
# Tue, 15 Sep 2026 22:48:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Tue, 15 Sep 2026 22:48:56 GMT
VOLUME [/data/db]
# Tue, 15 Sep 2026 22:48:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Tue, 15 Sep 2026 22:48:57 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:48:57 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:48:57 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:48:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:57 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 15 Sep 2026 22:48:57 GMT
USER 1001
# Tue, 15 Sep 2026 22:48:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d191ebaa7017f79e1004a69e7f87533a3c3972500b38a4cc78ed693d44de7d`  
		Last Modified: Tue, 15 Sep 2026 22:49:23 GMT  
		Size: 9.0 MB (8966694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739dcb2c8752e7cc8a63138ee0606fae0d9383584de50dc5e713f8508f88c5f5`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 254.5 MB (254493097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d28c1825acf1fc3d37eb4a8d636ccc756f1e720fe73b097f528a81c98042c5c`  
		Last Modified: Tue, 15 Sep 2026 22:49:22 GMT  
		Size: 1.6 KB (1639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67df29f30231a9c066a84f472d395c6d399a275dc576da42e10b72834fca1f33`  
		Last Modified: Tue, 15 Sep 2026 22:49:23 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d11071807faaf03f26922d8f08375474fdb9da239dbc7a315726187c9afa06f`  
		Last Modified: Tue, 15 Sep 2026 22:49:24 GMT  
		Size: 10.6 KB (10574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baaca520eeaa26919215177815db82fd772e3578bec284494630ced65883f8d6`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884e8d837898e901fed1acf4a212d7c2a387264482300271859574c49250e998`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50192c532038de299f58ba2d3746a81f9691c74e6224d38800a474329c13f883`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a46c2f7a02675bdcdd357fab13360410f0c47517d9ccfdf6909c4cb3651b73`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0` - unknown; unknown

```console
$ docker pull percona@sha256:5886ccc16389d0b9ad73c186f447a083cd620e4bd010362c02a41c8752b1e200
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b9ff4fa7fc363be317a347f50f9af1ee3259cd354d20aeb552c6d9ec583926`

```dockerfile
```

-	Layers:
	-	`sha256:acc988de4f8fef1e9ddbf56944e679e74aeaea83d67f141d5700e8466200dd1c`  
		Last Modified: Tue, 15 Sep 2026 22:49:22 GMT  
		Size: 32.4 KB (32368 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-7.0.40`

```console
$ docker pull percona@sha256:d8a6a7d9edba98cecb4b29d419a29fd9751fb958ab08f1384a5ccfdb5cb7b177
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0.40` - linux; amd64

```console
$ docker pull percona@sha256:39c214e7ac331716900cb8db0b7463b1cc45c9b8ef0b739d7d57d91e1eaad8c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305207455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fc9157bf728c60b929ad5f34881e157c961d6d26d5cd2e4ed2d18094feaf5e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:35 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:35 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Tue, 15 Sep 2026 22:48:35 GMT
ENV PSMDB_VERSION=7.0.40-22
# Tue, 15 Sep 2026 22:48:35 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:35 GMT
ENV FULL_PERCONA_VERSION=7.0.40-22.el9
# Tue, 15 Sep 2026 22:48:35 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Tue, 15 Sep 2026 22:48:35 GMT
ENV PSMDB_REPO=release
# Tue, 15 Sep 2026 22:48:35 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:35 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:35 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
ENV GOSU_VERSION=1.11
# Tue, 15 Sep 2026 22:48:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Tue, 15 Sep 2026 22:48:56 GMT
VOLUME [/data/db]
# Tue, 15 Sep 2026 22:48:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Tue, 15 Sep 2026 22:48:57 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:48:57 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:48:57 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:48:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:57 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 15 Sep 2026 22:48:57 GMT
USER 1001
# Tue, 15 Sep 2026 22:48:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d191ebaa7017f79e1004a69e7f87533a3c3972500b38a4cc78ed693d44de7d`  
		Last Modified: Tue, 15 Sep 2026 22:49:23 GMT  
		Size: 9.0 MB (8966694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739dcb2c8752e7cc8a63138ee0606fae0d9383584de50dc5e713f8508f88c5f5`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 254.5 MB (254493097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d28c1825acf1fc3d37eb4a8d636ccc756f1e720fe73b097f528a81c98042c5c`  
		Last Modified: Tue, 15 Sep 2026 22:49:22 GMT  
		Size: 1.6 KB (1639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67df29f30231a9c066a84f472d395c6d399a275dc576da42e10b72834fca1f33`  
		Last Modified: Tue, 15 Sep 2026 22:49:23 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d11071807faaf03f26922d8f08375474fdb9da239dbc7a315726187c9afa06f`  
		Last Modified: Tue, 15 Sep 2026 22:49:24 GMT  
		Size: 10.6 KB (10574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baaca520eeaa26919215177815db82fd772e3578bec284494630ced65883f8d6`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884e8d837898e901fed1acf4a212d7c2a387264482300271859574c49250e998`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50192c532038de299f58ba2d3746a81f9691c74e6224d38800a474329c13f883`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a46c2f7a02675bdcdd357fab13360410f0c47517d9ccfdf6909c4cb3651b73`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0.40` - unknown; unknown

```console
$ docker pull percona@sha256:5886ccc16389d0b9ad73c186f447a083cd620e4bd010362c02a41c8752b1e200
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b9ff4fa7fc363be317a347f50f9af1ee3259cd354d20aeb552c6d9ec583926`

```dockerfile
```

-	Layers:
	-	`sha256:acc988de4f8fef1e9ddbf56944e679e74aeaea83d67f141d5700e8466200dd1c`  
		Last Modified: Tue, 15 Sep 2026 22:49:22 GMT  
		Size: 32.4 KB (32368 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.0`

```console
$ docker pull percona@sha256:e7e3570033abbf5739e78066ac8ca74edd2135161bd88b49ac8ec4908983df38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0` - linux; amd64

```console
$ docker pull percona@sha256:101f67adfc7af622c3e96233ef0787b856a7bbbc6f3c1fb383cbd1fafe4782b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.5 MB (325460643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb978e26eb22b9e5f311423860a7e370b1e0f4fbfb318e81e751cd3e12af04c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:32 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:32 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Tue, 15 Sep 2026 22:48:32 GMT
ENV PSMDB_VERSION=8.0.29-13
# Tue, 15 Sep 2026 22:48:32 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:32 GMT
ENV FULL_PERCONA_VERSION=8.0.29-13.el9
# Tue, 15 Sep 2026 22:48:32 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Tue, 15 Sep 2026 22:48:32 GMT
ENV PSMDB_REPO=testing
# Tue, 15 Sep 2026 22:48:32 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 15 Sep 2026 22:48:32 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:32 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:32 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:52 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Tue, 15 Sep 2026 22:48:52 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Tue, 15 Sep 2026 22:48:52 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Tue, 15 Sep 2026 22:48:52 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Tue, 15 Sep 2026 22:48:52 GMT
ENV GOSU_VERSION=1.11
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
VOLUME [/data/db]
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:48:54 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:54 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 15 Sep 2026 22:48:54 GMT
USER 1001
# Tue, 15 Sep 2026 22:48:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e8e10c3efef7a38aa5dbc9261ff758eb76318a8c21b27b75f437eec085f358`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 9.0 MB (8966695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc30d4d5e033c12d80599e9a55647220fc62a9c2f7c454a35ca47692c0f1a92`  
		Last Modified: Tue, 15 Sep 2026 22:49:31 GMT  
		Size: 274.7 MB (274746285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b503195ce6a03bbba2edbdd73c662f6d745c27530fdc3a5d6e1baf5f5eaa1dae`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 1.6 KB (1638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbc9c938beef9b3b9d4560dfdc576d9811278fd4f4626f35455b7aa8592e540`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e44c1c9803dacc1e111d19ce28f0cafe865d5165b22bdedf8b61e5ba4577e0a`  
		Last Modified: Tue, 15 Sep 2026 22:49:27 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9396d499de12176a389fa8c87d80a0f51dff97ff4af14dc6fce4f87428606105`  
		Last Modified: Tue, 15 Sep 2026 22:49:27 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa3b050e7a771957427e3c14909c9668c32297c5e7405adcc29e4a2daf23cc0`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b626449eb64ca3f9095fbf24a4c605368730b1d30df788c9676e34230942dfc7`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2687e0c80d6fd2095226761709f0411b5ace58f9e023e8734c7dfb85a0867a94`  
		Last Modified: Tue, 15 Sep 2026 22:49:29 GMT  
		Size: 5.0 KB (4965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:e3d356c8bdc3f5e3cfbbdbb26c8b1356ce40595ebd0aa862f29f7c9c1f79a30a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b864af4828642fa7c29b27afaffae8053ba2b94bc4f3b7bdade851eab151ef`

```dockerfile
```

-	Layers:
	-	`sha256:ae87add3e889cb186c4f147512de7a83d7aef331868e66e0146caa67ef360ab8`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 32.7 KB (32672 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.0.29`

```console
$ docker pull percona@sha256:e7e3570033abbf5739e78066ac8ca74edd2135161bd88b49ac8ec4908983df38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0.29` - linux; amd64

```console
$ docker pull percona@sha256:101f67adfc7af622c3e96233ef0787b856a7bbbc6f3c1fb383cbd1fafe4782b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.5 MB (325460643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb978e26eb22b9e5f311423860a7e370b1e0f4fbfb318e81e751cd3e12af04c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:32 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:32 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Tue, 15 Sep 2026 22:48:32 GMT
ENV PSMDB_VERSION=8.0.29-13
# Tue, 15 Sep 2026 22:48:32 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:32 GMT
ENV FULL_PERCONA_VERSION=8.0.29-13.el9
# Tue, 15 Sep 2026 22:48:32 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Tue, 15 Sep 2026 22:48:32 GMT
ENV PSMDB_REPO=testing
# Tue, 15 Sep 2026 22:48:32 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 15 Sep 2026 22:48:32 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:32 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:32 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:52 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Tue, 15 Sep 2026 22:48:52 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Tue, 15 Sep 2026 22:48:52 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Tue, 15 Sep 2026 22:48:52 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Tue, 15 Sep 2026 22:48:52 GMT
ENV GOSU_VERSION=1.11
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
VOLUME [/data/db]
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:48:54 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:54 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 15 Sep 2026 22:48:54 GMT
USER 1001
# Tue, 15 Sep 2026 22:48:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e8e10c3efef7a38aa5dbc9261ff758eb76318a8c21b27b75f437eec085f358`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 9.0 MB (8966695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc30d4d5e033c12d80599e9a55647220fc62a9c2f7c454a35ca47692c0f1a92`  
		Last Modified: Tue, 15 Sep 2026 22:49:31 GMT  
		Size: 274.7 MB (274746285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b503195ce6a03bbba2edbdd73c662f6d745c27530fdc3a5d6e1baf5f5eaa1dae`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 1.6 KB (1638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbc9c938beef9b3b9d4560dfdc576d9811278fd4f4626f35455b7aa8592e540`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e44c1c9803dacc1e111d19ce28f0cafe865d5165b22bdedf8b61e5ba4577e0a`  
		Last Modified: Tue, 15 Sep 2026 22:49:27 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9396d499de12176a389fa8c87d80a0f51dff97ff4af14dc6fce4f87428606105`  
		Last Modified: Tue, 15 Sep 2026 22:49:27 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa3b050e7a771957427e3c14909c9668c32297c5e7405adcc29e4a2daf23cc0`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b626449eb64ca3f9095fbf24a4c605368730b1d30df788c9676e34230942dfc7`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2687e0c80d6fd2095226761709f0411b5ace58f9e023e8734c7dfb85a0867a94`  
		Last Modified: Tue, 15 Sep 2026 22:49:29 GMT  
		Size: 5.0 KB (4965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0.29` - unknown; unknown

```console
$ docker pull percona@sha256:e3d356c8bdc3f5e3cfbbdbb26c8b1356ce40595ebd0aa862f29f7c9c1f79a30a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b864af4828642fa7c29b27afaffae8053ba2b94bc4f3b7bdade851eab151ef`

```dockerfile
```

-	Layers:
	-	`sha256:ae87add3e889cb186c4f147512de7a83d7aef331868e66e0146caa67ef360ab8`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 32.7 KB (32672 bytes)  
		MIME: application/vnd.in-toto+json

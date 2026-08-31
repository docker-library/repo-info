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
$ docker pull percona@sha256:821e0d56236987e875e743f60798714ef6a58b3518dc4714e31167a26e63cc34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8` - linux; amd64

```console
$ docker pull percona@sha256:0cd33ccc6b4fd6edce4bc2fa72a74c22ede4cd5206dd7bcb7b19b56296bb95ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411302907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743015bd69b63afbc539e5de68c1f924e65b8cb0dd2d511ab8bf9cb12d980621`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:12 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:12 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_VERSION=8.0.46-37.1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_REPO=testing
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:12 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:12 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:21 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:55 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:55 GMT
USER mysql
# Mon, 31 Aug 2026 19:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 31 Aug 2026 19:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450a326dbc878aa5a12b79a1c8a6c7dd55fe6827f284ceb7df765a892bd1ab2b`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6be64d96b04ed1535b487a1fe39ab32f1dc119f09c46f3b1a711b474337491`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 9.4 MB (9374303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d391673976d01ef04c980621de91da4c854eadbe7508607e10c9a6900ceacb`  
		Last Modified: Mon, 31 Aug 2026 19:12:46 GMT  
		Size: 361.2 MB (361209295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e801a5be1bbdcaa3f57ffe1b4f684f8bbcb3d9be2301f1c37e01b4f7e7789307`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa6c49e52d622e97b1b02b620fa14451d3208eccc85c3c319f6b14cf2c65bdc`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c69f794f66630db4fea1731defd1185e4c3a70f70e8222bfd2b71330ac6c41b`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8` - unknown; unknown

```console
$ docker pull percona@sha256:4576fd5606daf9fd92445e18fc7c4807cfa30ab54a26c1be5d06b734a8ba778e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4d779d05306f5c1414487865788d01da5df7c11ae0d5941a112570cdcf093f`

```dockerfile
```

-	Layers:
	-	`sha256:67e45102871be2c5bf3bd6400f17297d1909cc5ced5fe2fa64744febf000e4bf`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8-centos`

```console
$ docker pull percona@sha256:821e0d56236987e875e743f60798714ef6a58b3518dc4714e31167a26e63cc34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8-centos` - linux; amd64

```console
$ docker pull percona@sha256:0cd33ccc6b4fd6edce4bc2fa72a74c22ede4cd5206dd7bcb7b19b56296bb95ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411302907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743015bd69b63afbc539e5de68c1f924e65b8cb0dd2d511ab8bf9cb12d980621`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:12 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:12 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_VERSION=8.0.46-37.1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_REPO=testing
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:12 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:12 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:21 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:55 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:55 GMT
USER mysql
# Mon, 31 Aug 2026 19:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 31 Aug 2026 19:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450a326dbc878aa5a12b79a1c8a6c7dd55fe6827f284ceb7df765a892bd1ab2b`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6be64d96b04ed1535b487a1fe39ab32f1dc119f09c46f3b1a711b474337491`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 9.4 MB (9374303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d391673976d01ef04c980621de91da4c854eadbe7508607e10c9a6900ceacb`  
		Last Modified: Mon, 31 Aug 2026 19:12:46 GMT  
		Size: 361.2 MB (361209295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e801a5be1bbdcaa3f57ffe1b4f684f8bbcb3d9be2301f1c37e01b4f7e7789307`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa6c49e52d622e97b1b02b620fa14451d3208eccc85c3c319f6b14cf2c65bdc`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c69f794f66630db4fea1731defd1185e4c3a70f70e8222bfd2b71330ac6c41b`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8-centos` - unknown; unknown

```console
$ docker pull percona@sha256:4576fd5606daf9fd92445e18fc7c4807cfa30ab54a26c1be5d06b734a8ba778e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4d779d05306f5c1414487865788d01da5df7c11ae0d5941a112570cdcf093f`

```dockerfile
```

-	Layers:
	-	`sha256:67e45102871be2c5bf3bd6400f17297d1909cc5ced5fe2fa64744febf000e4bf`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0`

```console
$ docker pull percona@sha256:821e0d56236987e875e743f60798714ef6a58b3518dc4714e31167a26e63cc34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0` - linux; amd64

```console
$ docker pull percona@sha256:0cd33ccc6b4fd6edce4bc2fa72a74c22ede4cd5206dd7bcb7b19b56296bb95ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411302907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743015bd69b63afbc539e5de68c1f924e65b8cb0dd2d511ab8bf9cb12d980621`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:12 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:12 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_VERSION=8.0.46-37.1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_REPO=testing
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:12 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:12 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:21 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:55 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:55 GMT
USER mysql
# Mon, 31 Aug 2026 19:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 31 Aug 2026 19:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450a326dbc878aa5a12b79a1c8a6c7dd55fe6827f284ceb7df765a892bd1ab2b`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6be64d96b04ed1535b487a1fe39ab32f1dc119f09c46f3b1a711b474337491`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 9.4 MB (9374303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d391673976d01ef04c980621de91da4c854eadbe7508607e10c9a6900ceacb`  
		Last Modified: Mon, 31 Aug 2026 19:12:46 GMT  
		Size: 361.2 MB (361209295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e801a5be1bbdcaa3f57ffe1b4f684f8bbcb3d9be2301f1c37e01b4f7e7789307`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa6c49e52d622e97b1b02b620fa14451d3208eccc85c3c319f6b14cf2c65bdc`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c69f794f66630db4fea1731defd1185e4c3a70f70e8222bfd2b71330ac6c41b`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0` - unknown; unknown

```console
$ docker pull percona@sha256:4576fd5606daf9fd92445e18fc7c4807cfa30ab54a26c1be5d06b734a8ba778e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4d779d05306f5c1414487865788d01da5df7c11ae0d5941a112570cdcf093f`

```dockerfile
```

-	Layers:
	-	`sha256:67e45102871be2c5bf3bd6400f17297d1909cc5ced5fe2fa64744febf000e4bf`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0-centos`

```console
$ docker pull percona@sha256:821e0d56236987e875e743f60798714ef6a58b3518dc4714e31167a26e63cc34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0-centos` - linux; amd64

```console
$ docker pull percona@sha256:0cd33ccc6b4fd6edce4bc2fa72a74c22ede4cd5206dd7bcb7b19b56296bb95ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411302907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743015bd69b63afbc539e5de68c1f924e65b8cb0dd2d511ab8bf9cb12d980621`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:12 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:12 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_VERSION=8.0.46-37.1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_REPO=testing
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:12 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:12 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:21 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:55 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:55 GMT
USER mysql
# Mon, 31 Aug 2026 19:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 31 Aug 2026 19:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450a326dbc878aa5a12b79a1c8a6c7dd55fe6827f284ceb7df765a892bd1ab2b`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6be64d96b04ed1535b487a1fe39ab32f1dc119f09c46f3b1a711b474337491`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 9.4 MB (9374303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d391673976d01ef04c980621de91da4c854eadbe7508607e10c9a6900ceacb`  
		Last Modified: Mon, 31 Aug 2026 19:12:46 GMT  
		Size: 361.2 MB (361209295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e801a5be1bbdcaa3f57ffe1b4f684f8bbcb3d9be2301f1c37e01b4f7e7789307`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa6c49e52d622e97b1b02b620fa14451d3208eccc85c3c319f6b14cf2c65bdc`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c69f794f66630db4fea1731defd1185e4c3a70f70e8222bfd2b71330ac6c41b`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0-centos` - unknown; unknown

```console
$ docker pull percona@sha256:4576fd5606daf9fd92445e18fc7c4807cfa30ab54a26c1be5d06b734a8ba778e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4d779d05306f5c1414487865788d01da5df7c11ae0d5941a112570cdcf093f`

```dockerfile
```

-	Layers:
	-	`sha256:67e45102871be2c5bf3bd6400f17297d1909cc5ced5fe2fa64744febf000e4bf`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0.46-37`

```console
$ docker pull percona@sha256:821e0d56236987e875e743f60798714ef6a58b3518dc4714e31167a26e63cc34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0.46-37` - linux; amd64

```console
$ docker pull percona@sha256:0cd33ccc6b4fd6edce4bc2fa72a74c22ede4cd5206dd7bcb7b19b56296bb95ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411302907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743015bd69b63afbc539e5de68c1f924e65b8cb0dd2d511ab8bf9cb12d980621`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:12 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:12 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_VERSION=8.0.46-37.1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_REPO=testing
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:12 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:12 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:21 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:55 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:55 GMT
USER mysql
# Mon, 31 Aug 2026 19:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 31 Aug 2026 19:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450a326dbc878aa5a12b79a1c8a6c7dd55fe6827f284ceb7df765a892bd1ab2b`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6be64d96b04ed1535b487a1fe39ab32f1dc119f09c46f3b1a711b474337491`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 9.4 MB (9374303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d391673976d01ef04c980621de91da4c854eadbe7508607e10c9a6900ceacb`  
		Last Modified: Mon, 31 Aug 2026 19:12:46 GMT  
		Size: 361.2 MB (361209295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e801a5be1bbdcaa3f57ffe1b4f684f8bbcb3d9be2301f1c37e01b4f7e7789307`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa6c49e52d622e97b1b02b620fa14451d3208eccc85c3c319f6b14cf2c65bdc`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c69f794f66630db4fea1731defd1185e4c3a70f70e8222bfd2b71330ac6c41b`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0.46-37` - unknown; unknown

```console
$ docker pull percona@sha256:4576fd5606daf9fd92445e18fc7c4807cfa30ab54a26c1be5d06b734a8ba778e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4d779d05306f5c1414487865788d01da5df7c11ae0d5941a112570cdcf093f`

```dockerfile
```

-	Layers:
	-	`sha256:67e45102871be2c5bf3bd6400f17297d1909cc5ced5fe2fa64744febf000e4bf`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:8.0.46-37-centos`

```console
$ docker pull percona@sha256:821e0d56236987e875e743f60798714ef6a58b3518dc4714e31167a26e63cc34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8.0.46-37-centos` - linux; amd64

```console
$ docker pull percona@sha256:0cd33ccc6b4fd6edce4bc2fa72a74c22ede4cd5206dd7bcb7b19b56296bb95ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411302907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743015bd69b63afbc539e5de68c1f924e65b8cb0dd2d511ab8bf9cb12d980621`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:12 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:12 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_VERSION=8.0.46-37.1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_REPO=testing
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:12 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:12 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:21 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:55 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:55 GMT
USER mysql
# Mon, 31 Aug 2026 19:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 31 Aug 2026 19:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450a326dbc878aa5a12b79a1c8a6c7dd55fe6827f284ceb7df765a892bd1ab2b`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6be64d96b04ed1535b487a1fe39ab32f1dc119f09c46f3b1a711b474337491`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 9.4 MB (9374303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d391673976d01ef04c980621de91da4c854eadbe7508607e10c9a6900ceacb`  
		Last Modified: Mon, 31 Aug 2026 19:12:46 GMT  
		Size: 361.2 MB (361209295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e801a5be1bbdcaa3f57ffe1b4f684f8bbcb3d9be2301f1c37e01b4f7e7789307`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa6c49e52d622e97b1b02b620fa14451d3208eccc85c3c319f6b14cf2c65bdc`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c69f794f66630db4fea1731defd1185e4c3a70f70e8222bfd2b71330ac6c41b`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8.0.46-37-centos` - unknown; unknown

```console
$ docker pull percona@sha256:4576fd5606daf9fd92445e18fc7c4807cfa30ab54a26c1be5d06b734a8ba778e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4d779d05306f5c1414487865788d01da5df7c11ae0d5941a112570cdcf093f`

```dockerfile
```

-	Layers:
	-	`sha256:67e45102871be2c5bf3bd6400f17297d1909cc5ced5fe2fa64744febf000e4bf`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8`

```console
$ docker pull percona@sha256:821e0d56236987e875e743f60798714ef6a58b3518dc4714e31167a26e63cc34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8` - linux; amd64

```console
$ docker pull percona@sha256:0cd33ccc6b4fd6edce4bc2fa72a74c22ede4cd5206dd7bcb7b19b56296bb95ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411302907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743015bd69b63afbc539e5de68c1f924e65b8cb0dd2d511ab8bf9cb12d980621`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:12 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:12 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_VERSION=8.0.46-37.1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_REPO=testing
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:12 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:12 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:21 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:55 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:55 GMT
USER mysql
# Mon, 31 Aug 2026 19:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 31 Aug 2026 19:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450a326dbc878aa5a12b79a1c8a6c7dd55fe6827f284ceb7df765a892bd1ab2b`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6be64d96b04ed1535b487a1fe39ab32f1dc119f09c46f3b1a711b474337491`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 9.4 MB (9374303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d391673976d01ef04c980621de91da4c854eadbe7508607e10c9a6900ceacb`  
		Last Modified: Mon, 31 Aug 2026 19:12:46 GMT  
		Size: 361.2 MB (361209295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e801a5be1bbdcaa3f57ffe1b4f684f8bbcb3d9be2301f1c37e01b4f7e7789307`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa6c49e52d622e97b1b02b620fa14451d3208eccc85c3c319f6b14cf2c65bdc`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c69f794f66630db4fea1731defd1185e4c3a70f70e8222bfd2b71330ac6c41b`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8` - unknown; unknown

```console
$ docker pull percona@sha256:4576fd5606daf9fd92445e18fc7c4807cfa30ab54a26c1be5d06b734a8ba778e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4d779d05306f5c1414487865788d01da5df7c11ae0d5941a112570cdcf093f`

```dockerfile
```

-	Layers:
	-	`sha256:67e45102871be2c5bf3bd6400f17297d1909cc5ced5fe2fa64744febf000e4bf`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8.0`

```console
$ docker pull percona@sha256:821e0d56236987e875e743f60798714ef6a58b3518dc4714e31167a26e63cc34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0` - linux; amd64

```console
$ docker pull percona@sha256:0cd33ccc6b4fd6edce4bc2fa72a74c22ede4cd5206dd7bcb7b19b56296bb95ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411302907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743015bd69b63afbc539e5de68c1f924e65b8cb0dd2d511ab8bf9cb12d980621`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:12 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:12 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_VERSION=8.0.46-37.1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_REPO=testing
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:12 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:12 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:21 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:55 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:55 GMT
USER mysql
# Mon, 31 Aug 2026 19:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 31 Aug 2026 19:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450a326dbc878aa5a12b79a1c8a6c7dd55fe6827f284ceb7df765a892bd1ab2b`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6be64d96b04ed1535b487a1fe39ab32f1dc119f09c46f3b1a711b474337491`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 9.4 MB (9374303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d391673976d01ef04c980621de91da4c854eadbe7508607e10c9a6900ceacb`  
		Last Modified: Mon, 31 Aug 2026 19:12:46 GMT  
		Size: 361.2 MB (361209295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e801a5be1bbdcaa3f57ffe1b4f684f8bbcb3d9be2301f1c37e01b4f7e7789307`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa6c49e52d622e97b1b02b620fa14451d3208eccc85c3c319f6b14cf2c65bdc`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c69f794f66630db4fea1731defd1185e4c3a70f70e8222bfd2b71330ac6c41b`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:4576fd5606daf9fd92445e18fc7c4807cfa30ab54a26c1be5d06b734a8ba778e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4d779d05306f5c1414487865788d01da5df7c11ae0d5941a112570cdcf093f`

```dockerfile
```

-	Layers:
	-	`sha256:67e45102871be2c5bf3bd6400f17297d1909cc5ced5fe2fa64744febf000e4bf`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8.0.46-37`

```console
$ docker pull percona@sha256:821e0d56236987e875e743f60798714ef6a58b3518dc4714e31167a26e63cc34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0.46-37` - linux; amd64

```console
$ docker pull percona@sha256:0cd33ccc6b4fd6edce4bc2fa72a74c22ede4cd5206dd7bcb7b19b56296bb95ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411302907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743015bd69b63afbc539e5de68c1f924e65b8cb0dd2d511ab8bf9cb12d980621`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:12 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:12 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_VERSION=8.0.46-37.1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_REPO=testing
# Mon, 31 Aug 2026 19:11:12 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:12 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Mon, 31 Aug 2026 19:11:12 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:12 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:21 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Aug 2026 19:11:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:55 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:55 GMT
USER mysql
# Mon, 31 Aug 2026 19:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 31 Aug 2026 19:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450a326dbc878aa5a12b79a1c8a6c7dd55fe6827f284ceb7df765a892bd1ab2b`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6be64d96b04ed1535b487a1fe39ab32f1dc119f09c46f3b1a711b474337491`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 9.4 MB (9374303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d391673976d01ef04c980621de91da4c854eadbe7508607e10c9a6900ceacb`  
		Last Modified: Mon, 31 Aug 2026 19:12:46 GMT  
		Size: 361.2 MB (361209295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e801a5be1bbdcaa3f57ffe1b4f684f8bbcb3d9be2301f1c37e01b4f7e7789307`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa6c49e52d622e97b1b02b620fa14451d3208eccc85c3c319f6b14cf2c65bdc`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c69f794f66630db4fea1731defd1185e4c3a70f70e8222bfd2b71330ac6c41b`  
		Last Modified: Mon, 31 Aug 2026 19:12:39 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0.46-37` - unknown; unknown

```console
$ docker pull percona@sha256:4576fd5606daf9fd92445e18fc7c4807cfa30ab54a26c1be5d06b734a8ba778e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4d779d05306f5c1414487865788d01da5df7c11ae0d5941a112570cdcf093f`

```dockerfile
```

-	Layers:
	-	`sha256:67e45102871be2c5bf3bd6400f17297d1909cc5ced5fe2fa64744febf000e4bf`  
		Last Modified: Mon, 31 Aug 2026 19:12:38 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-6.0`

```console
$ docker pull percona@sha256:02438ae57b1d1cb6b40148512320eb588d364f5a4b342a812c2784d42dc983e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0` - linux; amd64

```console
$ docker pull percona@sha256:c55bd31edda8ab2d1021e9efa6d59bc7bd39abb7c77df01b31e8cfe5cf1fb68b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279262637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10aead23580855da997adca8ea7b1cf60b4d03adb0f29d7dcd1bbe72275c9fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:26 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:26 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Mon, 31 Aug 2026 19:11:26 GMT
ENV PSMDB_VERSION=6.0.29-23
# Mon, 31 Aug 2026 19:11:26 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:26 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Mon, 31 Aug 2026 19:11:26 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Mon, 31 Aug 2026 19:11:26 GMT
ENV PSMDB_REPO=release
# Mon, 31 Aug 2026 19:11:26 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:26 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:26 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
ENV GOSU_VERSION=1.11
# Mon, 31 Aug 2026 19:11:46 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Mon, 31 Aug 2026 19:11:46 GMT
VOLUME [/data/db]
# Mon, 31 Aug 2026 19:11:46 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Mon, 31 Aug 2026 19:11:46 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:46 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:46 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:46 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 31 Aug 2026 19:11:46 GMT
USER 1001
# Mon, 31 Aug 2026 19:11:46 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74121cbef35f0f2a8fdb3951853bdd48466c7691f8d12d373325e7095349b8a`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 9.0 MB (8995452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:738ae9bb7d133fefaa6f431504b75990d9327e95411a47a514e342fc518c8324`  
		Last Modified: Mon, 31 Aug 2026 19:12:18 GMT  
		Size: 228.6 MB (228604669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07609eb657e54e41a6da7dfcf0c2b68029c2c7fbf120539415d791cf678e6fa2`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0c8afa44793b2df8c1bd5cbfa58719753f092232bba6e27292e2ce0a7bc45a`  
		Last Modified: Mon, 31 Aug 2026 19:12:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3adc11b8624e8e92a3ba12e605b601077f8dc394397a5e1736711d4e78e601`  
		Last Modified: Mon, 31 Aug 2026 19:12:15 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294f8735f1443cec4eae0dcc90b28dd60d320d53423d0ecce4f5385829ac0f8f`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a2e19d5b87af574cd954ae54794b24c2e972713da97d9618e83d8cb0dc4f92`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a5a1e8553756585fe8c29465f70fecb809b6cd0f5032720c5aa087b3068592`  
		Last Modified: Mon, 31 Aug 2026 19:12:17 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a889398bf88a0975159d97be62ca88858e930fc53cfbabb9481e52532f04f785`  
		Last Modified: Mon, 31 Aug 2026 19:12:17 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0` - unknown; unknown

```console
$ docker pull percona@sha256:8f600bfa6d8a56ed8811a493e3c7ca294628d5cc74a5f950716601e7ae692c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b7ae6f4d8e1ed8f98a4ba888e6224563cfe86abc3a2692a5cd37bdf1d44a2f`

```dockerfile
```

-	Layers:
	-	`sha256:fdf6502a541c0606b56b0c2c954dbf701afb2ba6873ece19d5dfdcf99f382ea3`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 32.9 KB (32937 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-6.0.29`

```console
$ docker pull percona@sha256:02438ae57b1d1cb6b40148512320eb588d364f5a4b342a812c2784d42dc983e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0.29` - linux; amd64

```console
$ docker pull percona@sha256:c55bd31edda8ab2d1021e9efa6d59bc7bd39abb7c77df01b31e8cfe5cf1fb68b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279262637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10aead23580855da997adca8ea7b1cf60b4d03adb0f29d7dcd1bbe72275c9fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:26 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:26 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Mon, 31 Aug 2026 19:11:26 GMT
ENV PSMDB_VERSION=6.0.29-23
# Mon, 31 Aug 2026 19:11:26 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:26 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Mon, 31 Aug 2026 19:11:26 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Mon, 31 Aug 2026 19:11:26 GMT
ENV PSMDB_REPO=release
# Mon, 31 Aug 2026 19:11:26 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:26 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:26 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
ENV GOSU_VERSION=1.11
# Mon, 31 Aug 2026 19:11:46 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Mon, 31 Aug 2026 19:11:46 GMT
VOLUME [/data/db]
# Mon, 31 Aug 2026 19:11:46 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Mon, 31 Aug 2026 19:11:46 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:46 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:46 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:46 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 31 Aug 2026 19:11:46 GMT
USER 1001
# Mon, 31 Aug 2026 19:11:46 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74121cbef35f0f2a8fdb3951853bdd48466c7691f8d12d373325e7095349b8a`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 9.0 MB (8995452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:738ae9bb7d133fefaa6f431504b75990d9327e95411a47a514e342fc518c8324`  
		Last Modified: Mon, 31 Aug 2026 19:12:18 GMT  
		Size: 228.6 MB (228604669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07609eb657e54e41a6da7dfcf0c2b68029c2c7fbf120539415d791cf678e6fa2`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0c8afa44793b2df8c1bd5cbfa58719753f092232bba6e27292e2ce0a7bc45a`  
		Last Modified: Mon, 31 Aug 2026 19:12:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3adc11b8624e8e92a3ba12e605b601077f8dc394397a5e1736711d4e78e601`  
		Last Modified: Mon, 31 Aug 2026 19:12:15 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294f8735f1443cec4eae0dcc90b28dd60d320d53423d0ecce4f5385829ac0f8f`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a2e19d5b87af574cd954ae54794b24c2e972713da97d9618e83d8cb0dc4f92`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a5a1e8553756585fe8c29465f70fecb809b6cd0f5032720c5aa087b3068592`  
		Last Modified: Mon, 31 Aug 2026 19:12:17 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a889398bf88a0975159d97be62ca88858e930fc53cfbabb9481e52532f04f785`  
		Last Modified: Mon, 31 Aug 2026 19:12:17 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0.29` - unknown; unknown

```console
$ docker pull percona@sha256:8f600bfa6d8a56ed8811a493e3c7ca294628d5cc74a5f950716601e7ae692c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b7ae6f4d8e1ed8f98a4ba888e6224563cfe86abc3a2692a5cd37bdf1d44a2f`

```dockerfile
```

-	Layers:
	-	`sha256:fdf6502a541c0606b56b0c2c954dbf701afb2ba6873ece19d5dfdcf99f382ea3`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 32.9 KB (32937 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-7.0`

```console
$ docker pull percona@sha256:b9ebbbcd3243dc4259e9b17b30fdc0c865611734b33dc415c5d15cd7aac044d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0` - linux; amd64

```console
$ docker pull percona@sha256:0b480730899014f5e8856df482d27b2bbb71fa4d68261c4c7bb9662137624519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.1 MB (304126481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d14cc420ed8894d1f087108c4dc59710f5c3dc704133ccb79649888e08ca9f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:20 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:20 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Mon, 31 Aug 2026 19:11:20 GMT
ENV PSMDB_VERSION=7.0.40-22
# Mon, 31 Aug 2026 19:11:20 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:20 GMT
ENV FULL_PERCONA_VERSION=7.0.40-22.el9
# Mon, 31 Aug 2026 19:11:20 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Mon, 31 Aug 2026 19:11:20 GMT
ENV PSMDB_REPO=release
# Mon, 31 Aug 2026 19:11:20 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:20 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:20 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:41 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Mon, 31 Aug 2026 19:11:41 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Mon, 31 Aug 2026 19:11:41 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Mon, 31 Aug 2026 19:11:41 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Mon, 31 Aug 2026 19:11:41 GMT
ENV GOSU_VERSION=1.11
# Mon, 31 Aug 2026 19:11:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Mon, 31 Aug 2026 19:11:43 GMT
VOLUME [/data/db]
# Mon, 31 Aug 2026 19:11:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:44 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:44 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 31 Aug 2026 19:11:44 GMT
USER 1001
# Mon, 31 Aug 2026 19:11:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686c1c7fdf79d812cc94ffb1c0e7d472508e597f4e889f51c47055a3cfff990e`  
		Last Modified: Mon, 31 Aug 2026 19:12:15 GMT  
		Size: 9.0 MB (8991388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef38c5bab88e1eb07ab71b01b877d67939179a554ff64345782497c8166fbf1`  
		Last Modified: Mon, 31 Aug 2026 19:12:20 GMT  
		Size: 253.5 MB (253472597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c310af034b43eb404b39ac13e4b5afea4c105cd2d4605676a255740a8f1a41b`  
		Last Modified: Mon, 31 Aug 2026 19:12:15 GMT  
		Size: 1.6 KB (1632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cad50e96a2d1fb358aaa2aa301a910dfd7a959c444a95f8d6bd5cbf77938a87`  
		Last Modified: Mon, 31 Aug 2026 19:12:14 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1ebf7e0a1cac19d1755a4a760660d2b06141aa3314b6e48de2a2467016a816`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 10.6 KB (10571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fb0a093f347f75b4e32c17ddd07c45d00039d3e9fef795806e1647874558ea`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6433c62908fee2abb93f8b7007912a8040f95d320276f376d41e13a67346e7`  
		Last Modified: Mon, 31 Aug 2026 19:12:17 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae3212602ab8b4b2071fbf02c3ad25c5eb7ee790ca7df811d26edb15cc906b5`  
		Last Modified: Mon, 31 Aug 2026 19:12:17 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b916eee4c1d90d569b2c45f0957f19d78421a02d94accfb7a027fe6495d168f`  
		Last Modified: Mon, 31 Aug 2026 19:12:18 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0` - unknown; unknown

```console
$ docker pull percona@sha256:b2d17f5d49e23c30af835cdb19d76ac2e148374d4a04a71c15d8b22f95d21677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ccf5844696ae1c64bb236013624238a1aa12fb09d2a6b15a8e9c7e843bb5fc`

```dockerfile
```

-	Layers:
	-	`sha256:5cc763c2414c15bbd7e891476e8396fac6494c1aee9536e3ccdd1bac8cbdd0d9`  
		Last Modified: Mon, 31 Aug 2026 19:12:14 GMT  
		Size: 32.4 KB (32367 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-7.0.40`

```console
$ docker pull percona@sha256:b9ebbbcd3243dc4259e9b17b30fdc0c865611734b33dc415c5d15cd7aac044d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0.40` - linux; amd64

```console
$ docker pull percona@sha256:0b480730899014f5e8856df482d27b2bbb71fa4d68261c4c7bb9662137624519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.1 MB (304126481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d14cc420ed8894d1f087108c4dc59710f5c3dc704133ccb79649888e08ca9f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:20 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:20 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Mon, 31 Aug 2026 19:11:20 GMT
ENV PSMDB_VERSION=7.0.40-22
# Mon, 31 Aug 2026 19:11:20 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:20 GMT
ENV FULL_PERCONA_VERSION=7.0.40-22.el9
# Mon, 31 Aug 2026 19:11:20 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Mon, 31 Aug 2026 19:11:20 GMT
ENV PSMDB_REPO=release
# Mon, 31 Aug 2026 19:11:20 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:20 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:20 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:41 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Mon, 31 Aug 2026 19:11:41 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Mon, 31 Aug 2026 19:11:41 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Mon, 31 Aug 2026 19:11:41 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Mon, 31 Aug 2026 19:11:41 GMT
ENV GOSU_VERSION=1.11
# Mon, 31 Aug 2026 19:11:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Mon, 31 Aug 2026 19:11:43 GMT
VOLUME [/data/db]
# Mon, 31 Aug 2026 19:11:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:44 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:44 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 31 Aug 2026 19:11:44 GMT
USER 1001
# Mon, 31 Aug 2026 19:11:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686c1c7fdf79d812cc94ffb1c0e7d472508e597f4e889f51c47055a3cfff990e`  
		Last Modified: Mon, 31 Aug 2026 19:12:15 GMT  
		Size: 9.0 MB (8991388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef38c5bab88e1eb07ab71b01b877d67939179a554ff64345782497c8166fbf1`  
		Last Modified: Mon, 31 Aug 2026 19:12:20 GMT  
		Size: 253.5 MB (253472597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c310af034b43eb404b39ac13e4b5afea4c105cd2d4605676a255740a8f1a41b`  
		Last Modified: Mon, 31 Aug 2026 19:12:15 GMT  
		Size: 1.6 KB (1632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cad50e96a2d1fb358aaa2aa301a910dfd7a959c444a95f8d6bd5cbf77938a87`  
		Last Modified: Mon, 31 Aug 2026 19:12:14 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1ebf7e0a1cac19d1755a4a760660d2b06141aa3314b6e48de2a2467016a816`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 10.6 KB (10571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fb0a093f347f75b4e32c17ddd07c45d00039d3e9fef795806e1647874558ea`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6433c62908fee2abb93f8b7007912a8040f95d320276f376d41e13a67346e7`  
		Last Modified: Mon, 31 Aug 2026 19:12:17 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae3212602ab8b4b2071fbf02c3ad25c5eb7ee790ca7df811d26edb15cc906b5`  
		Last Modified: Mon, 31 Aug 2026 19:12:17 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b916eee4c1d90d569b2c45f0957f19d78421a02d94accfb7a027fe6495d168f`  
		Last Modified: Mon, 31 Aug 2026 19:12:18 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0.40` - unknown; unknown

```console
$ docker pull percona@sha256:b2d17f5d49e23c30af835cdb19d76ac2e148374d4a04a71c15d8b22f95d21677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ccf5844696ae1c64bb236013624238a1aa12fb09d2a6b15a8e9c7e843bb5fc`

```dockerfile
```

-	Layers:
	-	`sha256:5cc763c2414c15bbd7e891476e8396fac6494c1aee9536e3ccdd1bac8cbdd0d9`  
		Last Modified: Mon, 31 Aug 2026 19:12:14 GMT  
		Size: 32.4 KB (32367 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.0`

```console
$ docker pull percona@sha256:2ef70994d1a2e40b1d9626c03ab7c3ec74ffc6c67996bfba1dd4487d12735644
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0` - linux; amd64

```console
$ docker pull percona@sha256:e9034c7bc98cc45bed9cfd25d12f85adc4a493258d209b30043faf3feeddea9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.4 MB (324381374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c04f6e2bef6f692bf67a4d0184e6a24a082f68fc7395239671105bb3cf342c0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:17 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:17 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Mon, 31 Aug 2026 19:11:17 GMT
ENV PSMDB_VERSION=8.0.29-13
# Mon, 31 Aug 2026 19:11:17 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:17 GMT
ENV FULL_PERCONA_VERSION=8.0.29-13.el9
# Mon, 31 Aug 2026 19:11:17 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Mon, 31 Aug 2026 19:11:17 GMT
ENV PSMDB_REPO=testing
# Mon, 31 Aug 2026 19:11:17 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Mon, 31 Aug 2026 19:11:17 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:17 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:17 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Mon, 31 Aug 2026 19:11:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Mon, 31 Aug 2026 19:11:36 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Mon, 31 Aug 2026 19:11:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Mon, 31 Aug 2026 19:11:36 GMT
ENV GOSU_VERSION=1.11
# Mon, 31 Aug 2026 19:11:39 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Mon, 31 Aug 2026 19:11:39 GMT
VOLUME [/data/db]
# Mon, 31 Aug 2026 19:11:39 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Mon, 31 Aug 2026 19:11:39 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:39 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:39 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:39 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 31 Aug 2026 19:11:39 GMT
USER 1001
# Mon, 31 Aug 2026 19:11:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206131518722ed8cc1cd77e2f4948aa9e97ae36350ce4bfa1ea2078d7aa333dd`  
		Last Modified: Mon, 31 Aug 2026 19:12:10 GMT  
		Size: 9.0 MB (8991407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f6e2fb0cca7b615b15cd6707ef0430a88ba1939f8c82cdd3ea8294fb1c0f27`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 273.7 MB (273727452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7675173752ec8568773fe2e7ae961c99d9a87f8cb896c336785f2d1bb39b834e`  
		Last Modified: Mon, 31 Aug 2026 19:12:10 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8313490544c7f55b87402cffb58ed408463e3fb3e63327115f3d160effe5270a`  
		Last Modified: Mon, 31 Aug 2026 19:12:11 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556d5bc291996db0d0d102eaa43e696e26ec44017c5a0fd34b7d06a220554657`  
		Last Modified: Mon, 31 Aug 2026 19:12:12 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3903bf6ac40a38b65bcd3605a0fd2ff3b13c91c7cfc98db78b7e3f9cd4ba70`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9699c5c52cb73951ec244c6176b14374040dec8d5774aa4d4a9328881e79dbf`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33462d81279c7cd5fae67cd8376e1275ab913245f7306395a2bba8b3e668bd4b`  
		Last Modified: Mon, 31 Aug 2026 19:12:14 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72e68820808489cd60e43b2a7ec42476716e7de4a071d45536fae95c7ce8b70`  
		Last Modified: Mon, 31 Aug 2026 19:12:15 GMT  
		Size: 5.0 KB (4965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:0eb9708652d370eaba2a76aca5c31c4b1ec0d26f45589809d481908d11da3472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a4a4e853d54191204c7f9c00c39dc00572cfa10f9d68f1bc315d1288b8317b2`

```dockerfile
```

-	Layers:
	-	`sha256:2af33113b15c00bb24c553c3e625b3e732dca335f40e5cc0a5312cf98e29072f`  
		Last Modified: Mon, 31 Aug 2026 19:12:10 GMT  
		Size: 32.7 KB (32673 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.0.29`

```console
$ docker pull percona@sha256:2ef70994d1a2e40b1d9626c03ab7c3ec74ffc6c67996bfba1dd4487d12735644
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0.29` - linux; amd64

```console
$ docker pull percona@sha256:e9034c7bc98cc45bed9cfd25d12f85adc4a493258d209b30043faf3feeddea9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.4 MB (324381374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c04f6e2bef6f692bf67a4d0184e6a24a082f68fc7395239671105bb3cf342c0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:17 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:17 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Mon, 31 Aug 2026 19:11:17 GMT
ENV PSMDB_VERSION=8.0.29-13
# Mon, 31 Aug 2026 19:11:17 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:17 GMT
ENV FULL_PERCONA_VERSION=8.0.29-13.el9
# Mon, 31 Aug 2026 19:11:17 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Mon, 31 Aug 2026 19:11:17 GMT
ENV PSMDB_REPO=testing
# Mon, 31 Aug 2026 19:11:17 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Mon, 31 Aug 2026 19:11:17 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:17 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:17 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Mon, 31 Aug 2026 19:11:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Mon, 31 Aug 2026 19:11:36 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Mon, 31 Aug 2026 19:11:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Mon, 31 Aug 2026 19:11:36 GMT
ENV GOSU_VERSION=1.11
# Mon, 31 Aug 2026 19:11:39 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Mon, 31 Aug 2026 19:11:39 GMT
VOLUME [/data/db]
# Mon, 31 Aug 2026 19:11:39 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Mon, 31 Aug 2026 19:11:39 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:39 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:39 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:39 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 31 Aug 2026 19:11:39 GMT
USER 1001
# Mon, 31 Aug 2026 19:11:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206131518722ed8cc1cd77e2f4948aa9e97ae36350ce4bfa1ea2078d7aa333dd`  
		Last Modified: Mon, 31 Aug 2026 19:12:10 GMT  
		Size: 9.0 MB (8991407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f6e2fb0cca7b615b15cd6707ef0430a88ba1939f8c82cdd3ea8294fb1c0f27`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 273.7 MB (273727452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7675173752ec8568773fe2e7ae961c99d9a87f8cb896c336785f2d1bb39b834e`  
		Last Modified: Mon, 31 Aug 2026 19:12:10 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8313490544c7f55b87402cffb58ed408463e3fb3e63327115f3d160effe5270a`  
		Last Modified: Mon, 31 Aug 2026 19:12:11 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556d5bc291996db0d0d102eaa43e696e26ec44017c5a0fd34b7d06a220554657`  
		Last Modified: Mon, 31 Aug 2026 19:12:12 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3903bf6ac40a38b65bcd3605a0fd2ff3b13c91c7cfc98db78b7e3f9cd4ba70`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9699c5c52cb73951ec244c6176b14374040dec8d5774aa4d4a9328881e79dbf`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33462d81279c7cd5fae67cd8376e1275ab913245f7306395a2bba8b3e668bd4b`  
		Last Modified: Mon, 31 Aug 2026 19:12:14 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72e68820808489cd60e43b2a7ec42476716e7de4a071d45536fae95c7ce8b70`  
		Last Modified: Mon, 31 Aug 2026 19:12:15 GMT  
		Size: 5.0 KB (4965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0.29` - unknown; unknown

```console
$ docker pull percona@sha256:0eb9708652d370eaba2a76aca5c31c4b1ec0d26f45589809d481908d11da3472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a4a4e853d54191204c7f9c00c39dc00572cfa10f9d68f1bc315d1288b8317b2`

```dockerfile
```

-	Layers:
	-	`sha256:2af33113b15c00bb24c553c3e625b3e732dca335f40e5cc0a5312cf98e29072f`  
		Last Modified: Mon, 31 Aug 2026 19:12:10 GMT  
		Size: 32.7 KB (32673 bytes)  
		MIME: application/vnd.in-toto+json

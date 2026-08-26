## `mariadb:12-ubi`

```console
$ docker pull mariadb@sha256:21ce4f4ce0e3b4f2b77f4768649795ae499353242e66f766f67b8a0fb2b58356
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `mariadb:12-ubi` - linux; amd64

```console
$ docker pull mariadb@sha256:125f87dccdb8a3f9ae118f68fcef28ca343d3919475070dc13f0c6e22884ab23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165176103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb43afb22d9c04532ed01f113f67a7303861a40f75557483dd798e51c92dd2f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 20:06:48 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 25 Aug 2026 20:06:48 GMT
ENV container oci
# Tue, 25 Aug 2026 20:06:48 GMT
COPY dir:e7620ad0de168d433994ebbf7fb7f61c959a1e46f62a586e13d1420fdf828782 in /      
# Tue, 25 Aug 2026 20:06:48 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 20:06:48 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 20:06:49 GMT
COPY dir:843679555eb85e63c3d46c8573b56fcb4e641b4a9bd8ecdac5dc2ff16c34caac in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 20:06:49 GMT
COPY dir:843679555eb85e63c3d46c8573b56fcb4e641b4a9bd8ecdac5dc2ff16c34caac in /root/buildinfo/      
# Tue, 25 Aug 2026 20:06:49 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T20:06:27Z" "org.opencontainers.image.revision"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "build-date"="2026-08-25T20:06:27Z" "architecture"="x86_64" "vcs-ref"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "vcs-type"="git" "release"="1787688243"org.opencontainers.image.created=2026-08-25T20:06:27Z,org.opencontainers.image.revision=0b4cc93aa2450ac257d3e3051c62ff62306cdb95
# Wed, 26 Aug 2026 18:30:02 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Wed, 26 Aug 2026 18:30:03 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:30:07 GMT
ENV GOSU_VERSION=1.19
# Wed, 26 Aug 2026 18:30:07 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 26 Aug 2026 18:30:07 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Wed, 26 Aug 2026 18:30:07 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Wed, 26 Aug 2026 18:30:07 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=12.3.3 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Wed, 26 Aug 2026 18:30:07 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 26 Aug 2026 18:30:07 GMT
ARG MARIADB_VERSION=12.3.3
# Wed, 26 Aug 2026 18:30:07 GMT
ENV MARIADB_VERSION=12.3.3
# Wed, 26 Aug 2026 18:30:32 GMT
# ARGS: MARIADB_VERSION=12.3.3
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Wed, 26 Aug 2026 18:30:32 GMT
VOLUME [/var/lib/mysql]
# Wed, 26 Aug 2026 18:30:32 GMT
# ARGS: MARIADB_VERSION=12.3.3
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 26 Aug 2026 18:30:32 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 26 Aug 2026 18:30:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 18:30:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Aug 2026 18:30:32 GMT
USER mysql
# Wed, 26 Aug 2026 18:30:32 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 26 Aug 2026 18:30:32 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:86240237f31dfd7a745de734105e773d38e7ed79b6d73eddcb5554e8e7a96a76`  
		Last Modified: Tue, 25 Aug 2026 21:24:43 GMT  
		Size: 34.9 MB (34915243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28d09b3e5a312f472801abb62f6bad7338d6a20e32c50e685da772cc65cdb13`  
		Last Modified: Wed, 26 Aug 2026 18:30:51 GMT  
		Size: 4.8 KB (4759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e01a0bd77233cc5109f1640994a75561fedf60eb4f411e069285268dfc22b2b`  
		Last Modified: Wed, 26 Aug 2026 18:30:51 GMT  
		Size: 2.3 MB (2268797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5e51b117f10a57722ba3a0811a56d252cbe4dd1a240be75a0fb9a6c9ef170f`  
		Last Modified: Wed, 26 Aug 2026 18:30:51 GMT  
		Size: 10.1 MB (10124077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c51a79e967099a6c8ed45754e6b443ca00d319bd809bed05580eb148063571`  
		Last Modified: Wed, 26 Aug 2026 18:30:51 GMT  
		Size: 301.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59fcfb9ea7c91903b9ed228c4a02a05f7791a2371a12f61e77d9c5ef6a9679b0`  
		Last Modified: Wed, 26 Aug 2026 18:30:52 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7078805b789fe1108669f559bdc41e2d616f525c98a674570a77e2dad94368`  
		Last Modified: Wed, 26 Aug 2026 18:30:56 GMT  
		Size: 117.8 MB (117849952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e90fea2ecc092e55d9b6622103648a3f8967efb4565fbe8fd5faa90ea12feb`  
		Last Modified: Wed, 26 Aug 2026 18:30:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605347ef1638340ccb0aaa8e57df624aedabb856d070dd2c6887ab2c8d644a1b`  
		Last Modified: Wed, 26 Aug 2026 18:30:53 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d4e9ae62dd9a6931c720d15617223f78c4b9f2c1303bbeaeb2458f8fb6c561`  
		Last Modified: Wed, 26 Aug 2026 18:30:53 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:46c705950d75ebdcf3db46fede39d582f5c05f6f28e1d71eeca13a19dfbf9856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4944010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec80584f5c120824461b659db1abc18732e403c89f13c272702b5b8f423ed81a`

```dockerfile
```

-	Layers:
	-	`sha256:2aaed66721fb08fb55dd83148afc546a820fa52bbb07c399f58ce3f964d3ccb4`  
		Last Modified: Wed, 26 Aug 2026 18:30:51 GMT  
		Size: 4.9 MB (4909442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d737a02668a50f4264737dda923be9df9192a5ac61a8670421b70247cfa10715`  
		Last Modified: Wed, 26 Aug 2026 18:30:51 GMT  
		Size: 34.6 KB (34568 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-ubi` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1100a20c30dde3b47c2b7b67ceca6fb7b85f305a952277ab157e5e32f1c55d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160960420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c67f78bcc9e5c53a1af70dce2ce783fa4e4e35caefb87edd7d5e4962202e1ff8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 20:08:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 25 Aug 2026 20:08:40 GMT
ENV container oci
# Tue, 25 Aug 2026 20:08:41 GMT
COPY dir:e85602551ea7d4c5d143bc326f1b43b9ed8ad5fb111723cc57a2cb7efa3f9446 in /      
# Tue, 25 Aug 2026 20:08:41 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 20:08:41 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 20:08:41 GMT
COPY dir:b636c4dfbfa88e3b3b3d8395ea556d0e4ce7dfa8eccc649eb8c4efc46735c01e in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 20:08:41 GMT
COPY dir:b636c4dfbfa88e3b3b3d8395ea556d0e4ce7dfa8eccc649eb8c4efc46735c01e in /root/buildinfo/      
# Tue, 25 Aug 2026 20:08:41 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T20:08:18Z" "org.opencontainers.image.revision"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "build-date"="2026-08-25T20:08:18Z" "architecture"="aarch64" "vcs-ref"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "vcs-type"="git" "release"="1787688243"org.opencontainers.image.created=2026-08-25T20:08:18Z,org.opencontainers.image.revision=0b4cc93aa2450ac257d3e3051c62ff62306cdb95
# Wed, 26 Aug 2026 18:29:52 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Wed, 26 Aug 2026 18:29:54 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:29:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 26 Aug 2026 18:29:58 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 26 Aug 2026 18:29:58 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Wed, 26 Aug 2026 18:29:58 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Wed, 26 Aug 2026 18:29:58 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=12.3.3 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Wed, 26 Aug 2026 18:29:58 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 26 Aug 2026 18:29:58 GMT
ARG MARIADB_VERSION=12.3.3
# Wed, 26 Aug 2026 18:29:58 GMT
ENV MARIADB_VERSION=12.3.3
# Wed, 26 Aug 2026 18:30:22 GMT
# ARGS: MARIADB_VERSION=12.3.3
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Wed, 26 Aug 2026 18:30:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 26 Aug 2026 18:30:23 GMT
# ARGS: MARIADB_VERSION=12.3.3
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 26 Aug 2026 18:30:23 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 26 Aug 2026 18:30:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 18:30:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Aug 2026 18:30:23 GMT
USER mysql
# Wed, 26 Aug 2026 18:30:23 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 26 Aug 2026 18:30:23 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:90204bffd8557d6ddc1fe3a7ace7c88713e398b48b9939f3ee4cdfe0070edb6a`  
		Last Modified: Tue, 25 Aug 2026 21:24:43 GMT  
		Size: 33.1 MB (33114682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a125dee56ba58490e776629db6abb777837bcf16484b8546001ff728b47d91e`  
		Last Modified: Wed, 26 Aug 2026 18:30:44 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015dfa8cea11d1355d5d70e82d8aaa0dac576789eba244463e0cfe517051dfd7`  
		Last Modified: Wed, 26 Aug 2026 18:30:45 GMT  
		Size: 2.3 MB (2265268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03879b7d001311f9bb9f495cd45de9414c4dbe74bdc3f76381ff84c9d97a9fbd`  
		Last Modified: Wed, 26 Aug 2026 18:30:45 GMT  
		Size: 9.9 MB (9912596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320c6a8696559af3de421459eb51a1adc18de9b9a29428f2a848d4f2fcf53cbe`  
		Last Modified: Wed, 26 Aug 2026 18:30:44 GMT  
		Size: 300.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e1febbaa0fcbb616fe6418f8dcc4b25819c57966786657b41d5815847673a3`  
		Last Modified: Wed, 26 Aug 2026 18:30:45 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412bc06ce80afea6de81d43a90f7535d4f7d17fb9c8e2cddbaa1ee4b51bbfbb2`  
		Last Modified: Wed, 26 Aug 2026 18:30:49 GMT  
		Size: 115.6 MB (115649848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219f7c5084615cf48734c7c3b931acbde81d446c282452e10a795b898894c554`  
		Last Modified: Wed, 26 Aug 2026 18:30:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b4ab1aca3a6e1454ca3f2de18de6636fea37bd82c6d9401b6d1a5bf3307f24`  
		Last Modified: Wed, 26 Aug 2026 18:30:46 GMT  
		Size: 4.0 KB (4029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78837e34b03998daaa57ff04c9ad8aec011238e7223b84ac585461a2082bc25c`  
		Last Modified: Wed, 26 Aug 2026 18:30:47 GMT  
		Size: 8.5 KB (8488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:4ea9884b42f822a32b0ffbbeb3498bb8cebeebdf3fe974807909689c6ce0b341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4944314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab1dfcad61fbdfffc43dafcbaeedd1db3c7ac6deb2ec8ac349cb41f80ab3eb9`

```dockerfile
```

-	Layers:
	-	`sha256:a0fb6e70064005d0f24ec875f2bd652b8045c7c5caad71fe6c140bc3e9773da9`  
		Last Modified: Wed, 26 Aug 2026 18:30:45 GMT  
		Size: 4.9 MB (4909547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36fe537f647d31975a365531fe7118ce939ec3a416acce659c6d1fdf4b305643`  
		Last Modified: Wed, 26 Aug 2026 18:30:44 GMT  
		Size: 34.8 KB (34767 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-ubi` - linux; ppc64le

```console
$ docker pull mariadb@sha256:d29b33f1dd40df673ace0a41a6f129c31ede8dcba6be8b81ea64eae825a9a359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176554428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ffdb396512dcda9f9525363c94853fa34631400bf6853381f33894a16a67f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 20:10:30 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 25 Aug 2026 20:10:30 GMT
ENV container oci
# Tue, 25 Aug 2026 20:10:31 GMT
COPY dir:230a97990b20c0be360c29959ecb6dbc99e054a10c2b3593307a59e20273d342 in /      
# Tue, 25 Aug 2026 20:10:31 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 20:10:31 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 20:10:31 GMT
COPY dir:c7eb7466e556528be0a1129ff790b42dc37e5994a70b90a997492a48e39689a8 in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 20:10:31 GMT
COPY dir:c7eb7466e556528be0a1129ff790b42dc37e5994a70b90a997492a48e39689a8 in /root/buildinfo/      
# Tue, 25 Aug 2026 20:10:31 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T20:10:13Z" "org.opencontainers.image.revision"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "build-date"="2026-08-25T20:10:13Z" "architecture"="ppc64le" "vcs-ref"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "vcs-type"="git" "release"="1787688243"org.opencontainers.image.created=2026-08-25T20:10:13Z,org.opencontainers.image.revision=0b4cc93aa2450ac257d3e3051c62ff62306cdb95
# Wed, 26 Aug 2026 18:33:17 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Wed, 26 Aug 2026 18:33:19 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:33:28 GMT
ENV GOSU_VERSION=1.19
# Wed, 26 Aug 2026 18:33:28 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 26 Aug 2026 18:33:28 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Wed, 26 Aug 2026 18:33:29 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Wed, 26 Aug 2026 18:33:29 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=12.3.3 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Wed, 26 Aug 2026 18:33:29 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 26 Aug 2026 18:33:29 GMT
ARG MARIADB_VERSION=12.3.3
# Wed, 26 Aug 2026 18:33:29 GMT
ENV MARIADB_VERSION=12.3.3
# Wed, 26 Aug 2026 18:34:20 GMT
# ARGS: MARIADB_VERSION=12.3.3
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Wed, 26 Aug 2026 18:34:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 26 Aug 2026 18:34:21 GMT
# ARGS: MARIADB_VERSION=12.3.3
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 26 Aug 2026 18:34:22 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 26 Aug 2026 18:34:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 18:34:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Aug 2026 18:34:23 GMT
USER mysql
# Wed, 26 Aug 2026 18:34:23 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 26 Aug 2026 18:34:23 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:58c6f82003c371a546554a5fe9af9e5362feefe32f91987ccfca2a713472f373`  
		Last Modified: Tue, 25 Aug 2026 23:51:07 GMT  
		Size: 39.1 MB (39134244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5995cf42c75dd5190caebedf532254ab22e73c5e5dc43ead9d1247d6ebfa209`  
		Last Modified: Wed, 26 Aug 2026 18:35:08 GMT  
		Size: 4.8 KB (4761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79c88ab7322f3f2102edf4a71b20975236fa4e65d8a5acb30958edb09e90538`  
		Last Modified: Wed, 26 Aug 2026 18:35:09 GMT  
		Size: 2.3 MB (2297137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c96777b092dee61885d1c3376a70080d73e558ac4b06625384a2cdefb2a898`  
		Last Modified: Wed, 26 Aug 2026 18:35:09 GMT  
		Size: 10.6 MB (10596156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ffef3ee4ee97ef5ef9346a76c9275e8001d03bce6c7e1dc8534a16e9f02361b`  
		Last Modified: Wed, 26 Aug 2026 18:35:09 GMT  
		Size: 300.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4f377cfe9f1d8f6f5b953e7071b3dceea05145047c2cb17fae433705e678c9`  
		Last Modified: Wed, 26 Aug 2026 18:35:10 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84e899a773513173cf2e4bca673e34346bf8f2261af8618a515d8662d72dc03`  
		Last Modified: Wed, 26 Aug 2026 18:35:14 GMT  
		Size: 124.5 MB (124508857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb27031b48d56e882618e4fed505200bfd2cfb615723dfe696a5abf8ca9aabc0`  
		Last Modified: Wed, 26 Aug 2026 18:35:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7798681fceacc1b15f9523339ba7954d72068310a374b62b7394bdce21ab0353`  
		Last Modified: Wed, 26 Aug 2026 18:35:11 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6601f0f4822c360ecd70b38e7b4f073ca85823b6900ef2c291e5ded27241c665`  
		Last Modified: Wed, 26 Aug 2026 18:35:12 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:14595167c077e138015c1bb56ee952733f330e82f1f78bf829084b315031db08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4932484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffdc86b1ae5d024477f9c8d16efa2091ce63d5812b5c92c5bffaa18c4ab5f5f3`

```dockerfile
```

-	Layers:
	-	`sha256:ebd8b747a67225799aa818caef7e36f76febb388e76c387456a432d98ac97622`  
		Last Modified: Wed, 26 Aug 2026 18:35:09 GMT  
		Size: 4.9 MB (4898645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c37ea6e9f04d67b3e37887a9ad395e8ddba92a1d4b675f3079dc4c4c5cae2dc3`  
		Last Modified: Wed, 26 Aug 2026 18:35:08 GMT  
		Size: 33.8 KB (33839 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-ubi` - linux; s390x

```console
$ docker pull mariadb@sha256:42f65e47867f15dfd8d64f8818efa3f7022595fe6156e9fdcc142eb2e7b2d946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171291707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdcbf4deb29cadf5c86511ae82f035026736a909b1b081bb0e4cefc551e5ebd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 25 Aug 2026 20:38:05 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 20:38:05 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 20:38:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 20:38:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 25 Aug 2026 20:38:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 20:38:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 25 Aug 2026 20:38:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:38:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 20:38:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 25 Aug 2026 20:38:05 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 20:38:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 25 Aug 2026 20:38:05 GMT
ENV container oci
# Tue, 25 Aug 2026 20:38:05 GMT
COPY dir:34d615d6d5932b28b30f576180088cdb425b04d1e7a5ac6bf1a832130c586ea2 in /      
# Tue, 25 Aug 2026 20:38:05 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 20:38:05 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 20:38:05 GMT
COPY dir:8ee9badd3c0db62902b82caae7adc2bf021faffa1326c1258b86af2dbd617f00 in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 20:38:05 GMT
COPY dir:8ee9badd3c0db62902b82caae7adc2bf021faffa1326c1258b86af2dbd617f00 in /root/buildinfo/      
# Tue, 25 Aug 2026 20:38:05 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T20:36:54Z" "org.opencontainers.image.revision"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "build-date"="2026-08-25T20:36:54Z" "architecture"="s390x" "vcs-ref"="0b4cc93aa2450ac257d3e3051c62ff62306cdb95" "vcs-type"="git" "release"="1787688243"org.opencontainers.image.created=2026-08-25T20:36:54Z,org.opencontainers.image.revision=0b4cc93aa2450ac257d3e3051c62ff62306cdb95
# Wed, 26 Aug 2026 18:31:40 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Wed, 26 Aug 2026 18:31:56 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Wed, 26 Aug 2026 18:32:14 GMT
ENV GOSU_VERSION=1.19
# Wed, 26 Aug 2026 18:32:14 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 26 Aug 2026 18:32:16 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Wed, 26 Aug 2026 18:32:17 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Wed, 26 Aug 2026 18:32:17 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=12.3.3 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Wed, 26 Aug 2026 18:32:17 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 26 Aug 2026 18:32:17 GMT
ARG MARIADB_VERSION=12.3.3
# Wed, 26 Aug 2026 18:32:17 GMT
ENV MARIADB_VERSION=12.3.3
# Wed, 26 Aug 2026 18:33:46 GMT
# ARGS: MARIADB_VERSION=12.3.3
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Wed, 26 Aug 2026 18:33:46 GMT
VOLUME [/var/lib/mysql]
# Wed, 26 Aug 2026 18:33:48 GMT
# ARGS: MARIADB_VERSION=12.3.3
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 26 Aug 2026 18:33:50 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 26 Aug 2026 18:33:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 18:33:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Aug 2026 18:33:52 GMT
USER mysql
# Wed, 26 Aug 2026 18:33:52 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 26 Aug 2026 18:33:52 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:6c041ebcf3b8186a2f4189cc247b030650e8c896143d54bab595052314e2904e`  
		Last Modified: Tue, 25 Aug 2026 23:51:04 GMT  
		Size: 34.8 MB (34783334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19911e16190eef085d578c41cd7f7a3f4557472b25a511a146772bb7213e5e5`  
		Last Modified: Wed, 26 Aug 2026 18:35:15 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a856ca258b8bb6ea2a5d6b60c594036462168baff4cbde8d0b846d793408202f`  
		Last Modified: Wed, 26 Aug 2026 18:35:16 GMT  
		Size: 2.3 MB (2276010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a259098ccf9baa5636d59a2e3564774d7c1e9be27ae730148563e33df9b3bd`  
		Last Modified: Wed, 26 Aug 2026 18:35:16 GMT  
		Size: 10.3 MB (10252156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28461c09e323c074cb7128f3ab8a9fb4809a829ad99603d055e8b35c1947d97`  
		Last Modified: Wed, 26 Aug 2026 18:35:15 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d210eb691edd70d545b32b675e2fc0104db035358d6e1cbb2aa8975a14bb62`  
		Last Modified: Wed, 26 Aug 2026 18:35:16 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf6ed72dd7d10ec15d176ab8edd18dc0e0f031d7267f0dfb103a6d9a3881d20`  
		Last Modified: Wed, 26 Aug 2026 18:35:21 GMT  
		Size: 124.0 MB (123962169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cb40554c5260ef0f1d782d8b7d6c00d4283c4390fee83ac1dbfcc2cacabcbf`  
		Last Modified: Wed, 26 Aug 2026 18:35:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d162d700473b6fea1e3a6c8f51d694944e03e4ca9716e180b624e52318bdcd`  
		Last Modified: Wed, 26 Aug 2026 18:35:18 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acebe55aba86e30994860854a79659ada1e3d5e0ef31e1f45333d2b372bde859`  
		Last Modified: Wed, 26 Aug 2026 18:35:18 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:699746a8ab4df64dfbc91248ef7f19fd9fb49e0143b53def88315e1a09428b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4937120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba974ec90d381593e3a4418c8a6ca3cb276ce5781ddc8d0fcd059c527ea3ef2`

```dockerfile
```

-	Layers:
	-	`sha256:56a608d7e5bad56c40935da4a76c1491fb95da1299e7b75eca20dc3333a086ea`  
		Last Modified: Wed, 26 Aug 2026 18:35:15 GMT  
		Size: 4.9 MB (4902554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:726936eaf6e7e1ede9e48c3280ea3b0ec643aff398618a94cbfd55d6d8c5ae3f`  
		Last Modified: Wed, 26 Aug 2026 18:35:13 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mariadb:13-ubi`

```console
$ docker pull mariadb@sha256:856f6f998187bfb21c6fccd3ae72b6d058bc7930933398335165f70866b8a870
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

### `mariadb:13-ubi` - linux; amd64

```console
$ docker pull mariadb@sha256:9aa4200ea9f1915b3c9384f0503e90c2c501c5b635d6a37967d1982183d968c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166063541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b4986003d4dc53bff742bdec8499c1790901561d9bee2f60b620c1b61035fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:02:36 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:02:36 GMT
ENV container oci
# Mon, 12 Oct 2026 06:02:37 GMT
COPY dir:662455959852c430acd151a5481507682dd939cb3325ebea7aac09cc24e390f9 in /      
# Mon, 12 Oct 2026 06:02:37 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:02:37 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:02:37 GMT
COPY dir:016729f945913aceb7571e77a6d9ea831075e4386b1a556c4ed3e50ecfb271e9 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:02:37 GMT
COPY dir:016729f945913aceb7571e77a6d9ea831075e4386b1a556c4ed3e50ecfb271e9 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:02:38 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:02:13Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:02:13Z" "architecture"="x86_64" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:02:13Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 00:35:58 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 13 Oct 2026 00:35:59 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:36:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 13 Oct 2026 00:36:02 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 13 Oct 2026 00:36:02 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 13 Oct 2026 00:36:02 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 13 Oct 2026 00:36:02 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=13.0.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 13 Oct 2026 00:36:02 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 13 Oct 2026 00:36:02 GMT
ARG MARIADB_VERSION=13.0.2
# Tue, 13 Oct 2026 00:36:02 GMT
ENV MARIADB_VERSION=13.0.2
# Tue, 13 Oct 2026 00:36:34 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 13 Oct 2026 00:36:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 13 Oct 2026 00:36:34 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 13 Oct 2026 00:36:34 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 13 Oct 2026 00:36:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 00:36:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 00:36:34 GMT
USER mysql
# Tue, 13 Oct 2026 00:36:34 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 13 Oct 2026 00:36:34 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:a1611a4fd41ee882f5745fd873c8693214050b6032a4e61339549ed17953e7d4`  
		Last Modified: Mon, 12 Oct 2026 06:46:04 GMT  
		Size: 34.9 MB (34932576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5371111619352dff9b0b18d26cc392a9e7bd5354d544cb04b7912da2a2b2bce8`  
		Last Modified: Tue, 13 Oct 2026 00:36:55 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e024529f9ab02fe1088b4323dc93fd512f3baa5f3289ab4007759a23c1f817f9`  
		Last Modified: Tue, 13 Oct 2026 00:36:55 GMT  
		Size: 2.3 MB (2278154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1680911c77a5e2aaa1eb0aa6d5a66425e48d0cdc2ae1e6a036e6eed1fe3e41`  
		Last Modified: Tue, 13 Oct 2026 00:36:55 GMT  
		Size: 10.1 MB (10140281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29e5427b122ec1e048b066e83e63b958ffa8869bd054ce7ba40f914f5ab4630`  
		Last Modified: Tue, 13 Oct 2026 00:36:55 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1300b5bb32c69bf25d532badeb0deb46dce1b044c4ed6aa167517145c153f12b`  
		Last Modified: Tue, 13 Oct 2026 00:36:56 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c45a68795824531ab42b0235f6f3e66158b9a4a3cfd57b82e9b00ab8336c03`  
		Last Modified: Tue, 13 Oct 2026 00:36:59 GMT  
		Size: 118.7 MB (118694494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2489c1a0a9c2fa65d3ec796c893b92e9e053b63d1483c096e24f3888ecef55c`  
		Last Modified: Tue, 13 Oct 2026 00:36:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7af356662a1bc8aec1952926243e63f63d7cac5e2a12fe6ec10165e4e4ef8a9`  
		Last Modified: Tue, 13 Oct 2026 00:36:57 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dea4d2d8df55c0bdadb4ed3eb7afe7c1aef20a5758239e07471c57f618754bd0`  
		Last Modified: Tue, 13 Oct 2026 00:36:57 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:13-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:5ee5200808f243647fb5aa8b7dfbdf007442851c38b831875974ed6118a29a0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4956220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ea31fb2075220e70dd426fb5471c445f9e38678a337967923274c461c26011`

```dockerfile
```

-	Layers:
	-	`sha256:6403004a0104aaf3a12f5f66c71486f0bcb87b4730b6c400deec3173b7cca69d`  
		Last Modified: Tue, 13 Oct 2026 00:36:55 GMT  
		Size: 4.9 MB (4922272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5595d21a16c9c17405485594b80acdb0f557b109a3fd1d7983a3030ab3902cfb`  
		Last Modified: Tue, 13 Oct 2026 00:36:55 GMT  
		Size: 33.9 KB (33948 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:13-ubi` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:4487e538796cd6df9307af2169a97b26a1e7b5a533a5edb6a9733461bfe951bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161426981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8e532b9cb00b2d4164a2f160c1affe8ad9107913a70238f82cecede2898463`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 12 Oct 2026 06:05:54 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:05:55 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:05:55 GMT
ENV container oci
# Mon, 12 Oct 2026 06:05:56 GMT
COPY dir:9a18f15373f3f6870de0ed60f1e7a72b1623f7ec9ce1a8aed46a7e94ccc7a645 in /      
# Mon, 12 Oct 2026 06:05:57 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:05:57 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:05:57 GMT
COPY dir:a0efbfbbb701c1098b615c13945a40436016435d065496628534f0f16c07f828 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:05:57 GMT
COPY dir:a0efbfbbb701c1098b615c13945a40436016435d065496628534f0f16c07f828 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:05:58 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:05:27Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:05:27Z" "architecture"="aarch64" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:05:27Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 00:34:05 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 13 Oct 2026 00:34:06 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:34:09 GMT
ENV GOSU_VERSION=1.19
# Tue, 13 Oct 2026 00:34:09 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 13 Oct 2026 00:34:09 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 13 Oct 2026 00:34:10 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 13 Oct 2026 00:34:10 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=13.0.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 13 Oct 2026 00:34:10 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 13 Oct 2026 00:34:10 GMT
ARG MARIADB_VERSION=13.0.2
# Tue, 13 Oct 2026 00:34:10 GMT
ENV MARIADB_VERSION=13.0.2
# Tue, 13 Oct 2026 00:34:33 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 13 Oct 2026 00:34:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 13 Oct 2026 00:34:33 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 13 Oct 2026 00:34:33 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 13 Oct 2026 00:34:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 00:34:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 00:34:33 GMT
USER mysql
# Tue, 13 Oct 2026 00:34:33 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 13 Oct 2026 00:34:33 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:6bb0cea67a57d2a977aceca249e6de2824aa79518f87729063f5b1d476030b0f`  
		Last Modified: Mon, 12 Oct 2026 06:46:01 GMT  
		Size: 33.1 MB (33147526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a1c0087efa57151a5c1c8d506e18dfbff37fe7c46f683487af0335a82f20f4`  
		Last Modified: Tue, 13 Oct 2026 00:34:55 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927e9ec62b566591a352b0be0be92fe6d015a755bdc512629e205159bdc986fa`  
		Last Modified: Tue, 13 Oct 2026 00:34:55 GMT  
		Size: 2.3 MB (2276879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322a2d436e32ab5ccf08f652f7542775cb1b564599f9779cbdcc8dd93aa64111`  
		Last Modified: Tue, 13 Oct 2026 00:34:55 GMT  
		Size: 9.9 MB (9931004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38921059991fd2b9a9b777ed87c5f622c117675bd8d5d2504d5e1c62e0971204`  
		Last Modified: Tue, 13 Oct 2026 00:34:55 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984137682c9c427118401f927853959fa0b050679a23a4486c4ffa7f6972c37f`  
		Last Modified: Tue, 13 Oct 2026 00:34:56 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ac6385e4b33afb39c79e0758ea8dbf33e9dd1cfe90cb4df267439f90a5d91e`  
		Last Modified: Tue, 13 Oct 2026 00:34:59 GMT  
		Size: 116.1 MB (116053532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c05a6c41f998564619710705b6f845b0bbb6d9efbe1140c8a30195fe0cd329`  
		Last Modified: Tue, 13 Oct 2026 00:34:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69ecd383aa1fbe7fb353d373ed732bbf0a8a7255f047568e76f481b26a8ec14`  
		Last Modified: Tue, 13 Oct 2026 00:34:57 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3876c27fc0c86f9ab743b3ab7026303a18c3b97b728d5543aea2734c1d0f8f1`  
		Last Modified: Tue, 13 Oct 2026 00:34:58 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:13-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:0784d7c8546e11bcd78349fea8df17c36cf54b161611e5375f1ddba071862eb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4947004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4230fe2c197cfdf05301eecca205f2441d9b03a6120f16691c14c15fb43594d`

```dockerfile
```

-	Layers:
	-	`sha256:d8b1d70f2f191ae79ce3621cf162cea72d25a9c3fa0801defa4633c6a2c58c4f`  
		Last Modified: Tue, 13 Oct 2026 00:34:55 GMT  
		Size: 4.9 MB (4912881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a68b3ccbc7c2bb6ab8b33006192418410c45a93c83d5fc74eea774179d238268`  
		Last Modified: Tue, 13 Oct 2026 00:34:55 GMT  
		Size: 34.1 KB (34123 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:13-ubi` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5aad40b00968baf36f7bc153cffdd54199e0d7d4f5eb84cf19ed7600481c6a99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177428198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f125e2cf44f4d97e73df2380fa8c9e1f189e776e1fb108ba12957ac78fb25e9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 12 Oct 2026 06:07:16 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:07:16 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:07:17 GMT
ENV container oci
# Mon, 12 Oct 2026 06:07:18 GMT
COPY dir:6692fc3e66bbf0913b2d152014d3b0e34bbd923bc55d13e178d365aac806e220 in /      
# Mon, 12 Oct 2026 06:07:18 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:07:18 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:07:18 GMT
COPY dir:39461ef2f88a895d3655798d126e96b7b231101a07bff7389995c2e8e741ee23 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:07:19 GMT
COPY dir:39461ef2f88a895d3655798d126e96b7b231101a07bff7389995c2e8e741ee23 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:07:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:06:54Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:06:54Z" "architecture"="ppc64le" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:06:54Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 02:26:49 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 13 Oct 2026 02:26:55 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 13 Oct 2026 02:27:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 13 Oct 2026 02:27:02 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 13 Oct 2026 02:27:03 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 13 Oct 2026 02:27:04 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 13 Oct 2026 02:27:04 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=13.0.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 13 Oct 2026 02:27:04 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 13 Oct 2026 02:27:04 GMT
ARG MARIADB_VERSION=13.0.2
# Tue, 13 Oct 2026 02:27:04 GMT
ENV MARIADB_VERSION=13.0.2
# Tue, 13 Oct 2026 02:27:53 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 13 Oct 2026 02:27:53 GMT
VOLUME [/var/lib/mysql]
# Tue, 13 Oct 2026 02:27:54 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 13 Oct 2026 02:27:54 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 13 Oct 2026 02:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 02:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 02:27:55 GMT
USER mysql
# Tue, 13 Oct 2026 02:27:55 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 13 Oct 2026 02:27:55 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:a05cfbffa86171447875ba9950514b237a53b4f2fba7ac663609dcb504587364`  
		Last Modified: Mon, 12 Oct 2026 11:37:08 GMT  
		Size: 39.1 MB (39115195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d46d4cf9ad6f07859a07a78cd43faed372ca1fd956155ec03fdd6dacb8bbc7`  
		Last Modified: Tue, 13 Oct 2026 02:28:57 GMT  
		Size: 4.8 KB (4756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313fe1c1c7546ab5383bcbb269398b65d0602cb80bd4a2b1486d669bf0bd5501`  
		Last Modified: Tue, 13 Oct 2026 02:28:58 GMT  
		Size: 2.3 MB (2305222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544bd748f5eb5f912ffb007631cb01f7f8d81c401eab16696eaa26e4084314d3`  
		Last Modified: Tue, 13 Oct 2026 02:28:58 GMT  
		Size: 10.6 MB (10612786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69e7b840bcf930904fe4b5da839c8cfe21088c1f1bd7d1f78c40335e6c8d0a9`  
		Last Modified: Tue, 13 Oct 2026 02:28:57 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de849330725c46f9fdbfc92b48fc082826fcd53f93674f252679ae5e754ca03`  
		Last Modified: Tue, 13 Oct 2026 02:28:58 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5568ad78fad866bed9add1fcabf9c334f4056e9d4c903b39166f21d615c347a0`  
		Last Modified: Tue, 13 Oct 2026 02:29:01 GMT  
		Size: 125.4 MB (125376967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f16038da1916f68eb3f6a579e57343ee9cb891c223329ab65ec19b1591e037a`  
		Last Modified: Tue, 13 Oct 2026 02:28:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369ca0c8afa592c4bb0a2dfda48acd9450b28a1766d0a8a9776beb199b3e0644`  
		Last Modified: Tue, 13 Oct 2026 02:28:59 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca79d2925aaed487c90c1494d37722db4b59ae962ee7f5c00417db67583a4a6`  
		Last Modified: Tue, 13 Oct 2026 02:29:00 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:13-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:e852d1122047bc82ffc832f41ef8763a121a589bee8cd81fa48415e1cf3ddb0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4944669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709af5f3fdb4ccf100f34f8e8f5702f68e4178277abede79abdff27912ef24bf`

```dockerfile
```

-	Layers:
	-	`sha256:76f006397fa45a0d7aa942501eed7b4a2ca8ec3f42a261ad63e8b7a8b9a0e6f7`  
		Last Modified: Tue, 13 Oct 2026 02:28:57 GMT  
		Size: 4.9 MB (4911463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:642b444a787429d4d663d31923f4873b5c172695734eee7db14cddfa5d6cda3c`  
		Last Modified: Tue, 13 Oct 2026 02:28:57 GMT  
		Size: 33.2 KB (33206 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:13-ubi` - linux; s390x

```console
$ docker pull mariadb@sha256:54539a07012c1cd954e039a24a45adca5fb2d85dcd926233076c14ae67a2c849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171714333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f36fb13f1d455cdf9762fad558d245bdea6acf746e7f25f02f714850d91c85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 12 Oct 2026 06:17:06 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:17:06 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:17:06 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:17:07 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:17:07 GMT
ENV container oci
# Mon, 12 Oct 2026 06:17:08 GMT
COPY dir:893be50f2bde617bab5db42627335bd90926b299a738ab8303d64db7a35f19f4 in /      
# Mon, 12 Oct 2026 06:17:08 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:17:08 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:17:09 GMT
COPY dir:ee139889734b4c4aac9a2aa2c8fbe722845bb8a72a1576a27597931723d46e30 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:17:09 GMT
COPY dir:ee139889734b4c4aac9a2aa2c8fbe722845bb8a72a1576a27597931723d46e30 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:17:09 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:15:23Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:15:23Z" "architecture"="s390x" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:15:23Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 00:34:53 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 13 Oct 2026 00:34:54 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:34:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 13 Oct 2026 00:34:58 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 13 Oct 2026 00:34:58 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 13 Oct 2026 00:34:58 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 13 Oct 2026 00:34:58 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=13.0.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 13 Oct 2026 00:34:58 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 13 Oct 2026 00:34:58 GMT
ARG MARIADB_VERSION=13.0.2
# Tue, 13 Oct 2026 00:34:58 GMT
ENV MARIADB_VERSION=13.0.2
# Tue, 13 Oct 2026 00:35:35 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 13 Oct 2026 00:35:35 GMT
VOLUME [/var/lib/mysql]
# Tue, 13 Oct 2026 00:35:35 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 13 Oct 2026 00:35:35 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 13 Oct 2026 00:35:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 00:35:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 00:35:35 GMT
USER mysql
# Tue, 13 Oct 2026 00:35:35 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 13 Oct 2026 00:35:35 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:8a2084faf73dd02eee4a91504c8641d976b2ea7a34d44da41565f5c24a375c51`  
		Last Modified: Mon, 12 Oct 2026 11:37:18 GMT  
		Size: 34.8 MB (34821002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e72326cc346b70aead8d8b89f57b297494e82c5d2228c2896e5c6d99ccb0d2e`  
		Last Modified: Tue, 13 Oct 2026 00:36:08 GMT  
		Size: 4.8 KB (4756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9348356d5460fb634d61ae9272ada9c9926edef2594b145a343b358b0c38def`  
		Last Modified: Tue, 13 Oct 2026 00:36:08 GMT  
		Size: 2.3 MB (2284849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca03231a3f5c8ea32662f3c88afa46210c43ae0fefa1062e6637a050f01850a`  
		Last Modified: Tue, 13 Oct 2026 00:36:08 GMT  
		Size: 10.3 MB (10274881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19bde76a9a2b5d41cd3f537937385b70e051ee688717a69b4e621505e9b0bd1`  
		Last Modified: Tue, 13 Oct 2026 00:36:08 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01df84e03a1ed51da1062c80c7dfb56950e58b11ce166207b8161982a333053f`  
		Last Modified: Tue, 13 Oct 2026 00:36:09 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d0e0dece6f461dd6ff5cd63debc2c6d96760cb12a7d1921b53f73420377cf0`  
		Last Modified: Tue, 13 Oct 2026 00:36:11 GMT  
		Size: 124.3 MB (124315583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e033951e341a5c0ef4dd6845a546070e53bfcb94ee6f1dc76e7ac23879f3c81f`  
		Last Modified: Tue, 13 Oct 2026 00:36:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a25f87c8ad7890d9b85de986711f5a8718eacdbaeee66d65bf40672e67b4a5`  
		Last Modified: Tue, 13 Oct 2026 00:36:10 GMT  
		Size: 4.0 KB (4026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6aea9835208cecdd5aea4db5c3e466ee2b8fbd9dc64a63b44fd06338c966c4`  
		Last Modified: Tue, 13 Oct 2026 00:36:10 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:13-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:994287309330321b26ca852de4904828056fb4d290f5b70cb167be3bdbb552d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4939061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094e856f441f0b66ee0d9576cee404d72220634731092352dd7bd437c385b4f3`

```dockerfile
```

-	Layers:
	-	`sha256:e560819e2644f5754b0c9efe4572d68ac6946a9aea1afb13b352ce722329cac7`  
		Last Modified: Tue, 13 Oct 2026 00:36:08 GMT  
		Size: 4.9 MB (4905912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f2d9fade911fd580d957722317c7ffd811fc0790267fc26dce4e53d8021055a`  
		Last Modified: Tue, 13 Oct 2026 00:36:08 GMT  
		Size: 33.1 KB (33149 bytes)  
		MIME: application/vnd.in-toto+json

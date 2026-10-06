## `mariadb:13-ubi`

```console
$ docker pull mariadb@sha256:0cd84a415757e56ac781b175e16c0be5c178a969f0af494b6f7b065442005987
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
$ docker pull mariadb@sha256:ed87b76a898aca13c41902334cb83216ac70779364acbd0d5b1e87f7331480f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166832553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa0a9fabb445677d32f29e3348726f1853c3b261df43d9f4fab36626c2c7a03d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:52:49 GMT
ENV container oci
# Tue, 06 Oct 2026 06:52:50 GMT
COPY dir:f34bac4cb5386fae5c688b9edc1b823fe38f4dd16d1c362f8163660dba6cbcaa in /      
# Tue, 06 Oct 2026 06:52:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:52:50 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:52:50 GMT
COPY dir:a955a0c99bb51e4c1fd6c1c97d380d39455977317b0ff795e31df9ed150f19a8 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:52:50 GMT
COPY dir:a955a0c99bb51e4c1fd6c1c97d380d39455977317b0ff795e31df9ed150f19a8 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:52:50 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:52:27Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:52:27Z" "architecture"="x86_64" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:52:27Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 21:59:32 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 06 Oct 2026 21:59:34 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:59:37 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 21:59:37 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 21:59:37 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 06 Oct 2026 21:59:37 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 06 Oct 2026 21:59:37 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=13.0.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 06 Oct 2026 21:59:37 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 06 Oct 2026 21:59:37 GMT
ARG MARIADB_VERSION=13.0.2
# Tue, 06 Oct 2026 21:59:37 GMT
ENV MARIADB_VERSION=13.0.2
# Tue, 06 Oct 2026 22:00:00 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 06 Oct 2026 22:00:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 06 Oct 2026 22:00:00 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 22:00:00 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 06 Oct 2026 22:00:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 22:00:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 22:00:00 GMT
USER mysql
# Tue, 06 Oct 2026 22:00:00 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 06 Oct 2026 22:00:00 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:9244a62486f52ea78c7c9bffc8936622a69a982b1ed177ee04ddfae80f9a2f94`  
		Last Modified: Tue, 06 Oct 2026 07:58:50 GMT  
		Size: 35.0 MB (34955692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22551f2cd25cc93f1ab930656e8cf06542495ef66d1be0769e76a4128063838`  
		Last Modified: Tue, 06 Oct 2026 22:00:21 GMT  
		Size: 4.8 KB (4759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be839e46078e55132ddde99b042540d3fc8d8f42aa5165f05ab38af805498787`  
		Last Modified: Tue, 06 Oct 2026 22:00:21 GMT  
		Size: 2.3 MB (2282222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3b08cdd54bde983e2fb2e0257d0aeb4511d40b61b77420e5ebef61d6f0310d`  
		Last Modified: Tue, 06 Oct 2026 22:00:21 GMT  
		Size: 10.1 MB (10140696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a307a0ecd4e3dbc28c956e2505eec0c96129e0a2cc4c85725c0d85f28418450f`  
		Last Modified: Tue, 06 Oct 2026 22:00:21 GMT  
		Size: 301.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fe85999be28d0390adb036fa7aa98566b799b092bf1c21440278f4a05855f5`  
		Last Modified: Tue, 06 Oct 2026 22:00:22 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd13045afc7e644d6dbd9a6f8cfb91c03b2314186e58cb80e80af0929a53a3e`  
		Last Modified: Tue, 06 Oct 2026 22:00:26 GMT  
		Size: 119.4 MB (119435913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c99ab31e9a4801b52cc0b516004f04500538c15f193a333c57bd8fb1b187a03`  
		Last Modified: Tue, 06 Oct 2026 22:00:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82332bb47e148913b7fed7cef73adeca251b183e118d2c3ccfded8f9560386df`  
		Last Modified: Tue, 06 Oct 2026 22:00:23 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4026439184e49d1acff9e3759d4da9363540aa0d7a786fe788154ef9d8e40d0`  
		Last Modified: Tue, 06 Oct 2026 22:00:24 GMT  
		Size: 8.5 KB (8489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:13-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:9b33b2eeecbd3f6967a4ebf1e298305718f5beb42995088e491a18dffc2a5ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4947537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b61eaf2f8b3db473a3c6a0920bdf85590913cf7404883e41c1a4cb584a71a55`

```dockerfile
```

-	Layers:
	-	`sha256:dd454f6d5e3c872114ee760873d2775e2c102c4f818dd11c280db274b9b1344d`  
		Last Modified: Tue, 06 Oct 2026 22:00:22 GMT  
		Size: 4.9 MB (4913589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e80a65da94e248002828a98bc2461567a309971e3e35020818cbafb3efa8b79f`  
		Last Modified: Tue, 06 Oct 2026 22:00:21 GMT  
		Size: 33.9 KB (33948 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:13-ubi` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:2a0587bae1fc77fd8df3590609f506ade7a35e32e21d8b8691963e429eaa4264
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161391672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28954036e51707350f0f177f6b3830676c9d76988a09fab8bba8ad1fbc61f7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:54:51 GMT
ENV container oci
# Tue, 06 Oct 2026 06:54:52 GMT
COPY dir:5d724641a5e7af80919f5b39a516d4561f65b3b7352fbda320935cbb5242688a in /      
# Tue, 06 Oct 2026 06:54:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:54:52 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:54:52 GMT
COPY dir:00864b7e610d3da6756b5cf1b37de86187c773ede7d568403a72c9370ca645e1 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:54:52 GMT
COPY dir:00864b7e610d3da6756b5cf1b37de86187c773ede7d568403a72c9370ca645e1 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:54:52 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:54:30Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:54:30Z" "architecture"="aarch64" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:54:30Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 21:55:35 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 06 Oct 2026 21:55:37 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:55:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 21:55:41 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 21:55:41 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 06 Oct 2026 21:55:41 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 06 Oct 2026 21:55:41 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=13.0.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 06 Oct 2026 21:55:41 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 06 Oct 2026 21:55:41 GMT
ARG MARIADB_VERSION=13.0.2
# Tue, 06 Oct 2026 21:55:41 GMT
ENV MARIADB_VERSION=13.0.2
# Tue, 06 Oct 2026 21:56:04 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 06 Oct 2026 21:56:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 06 Oct 2026 21:56:05 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 21:56:05 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 06 Oct 2026 21:56:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 21:56:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 21:56:05 GMT
USER mysql
# Tue, 06 Oct 2026 21:56:05 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 06 Oct 2026 21:56:05 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:8bbad36d7459a5946aefb1e837706ffa90447344493f010df72763ae29ef2507`  
		Last Modified: Tue, 06 Oct 2026 07:58:54 GMT  
		Size: 33.1 MB (33124268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a45971d24b6424ece35986746f87d520e6f182d4bbc44b1c5733a6e28ca301`  
		Last Modified: Tue, 06 Oct 2026 21:56:27 GMT  
		Size: 4.8 KB (4759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781d2382a7a1c0f8e39b3cc39afe4474b23f05583005e059938dc387791f2ddc`  
		Last Modified: Tue, 06 Oct 2026 21:56:27 GMT  
		Size: 2.3 MB (2275075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ff46b29ed994296cd0a07c7751403c5256676d0715fcdb14d2c906be22d03f`  
		Last Modified: Tue, 06 Oct 2026 21:56:27 GMT  
		Size: 9.9 MB (9929804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14db3c9cf53e68c74ec1eeed1956830b31dd94da2cc8eb13d9f4c5ecc4669a3b`  
		Last Modified: Tue, 06 Oct 2026 21:56:26 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166918e3e286504f0487e9d21d0d4cbd2a3e3c1c6bfb836fffe3d6bf56bd92fc`  
		Last Modified: Tue, 06 Oct 2026 21:56:28 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192bac790e22b25b0cb6b248698b158c6dba1a32f3fbcd0605e8fbe3bdf1152d`  
		Last Modified: Tue, 06 Oct 2026 21:56:30 GMT  
		Size: 116.0 MB (116044493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b254b0f8ae282f580917bc769b651f97ae4a77fb35df43b5501bd41f835d037a`  
		Last Modified: Tue, 06 Oct 2026 21:56:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e1fc00a95a429dfaa54ea7103ee40124c854f2ff4128d0d7cdc4dba221d326`  
		Last Modified: Tue, 06 Oct 2026 21:56:28 GMT  
		Size: 4.0 KB (4031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca9bbfd3e350d4d47b59820c300feedcd425078789a074a3e654018b0622a4f7`  
		Last Modified: Tue, 06 Oct 2026 21:56:29 GMT  
		Size: 8.5 KB (8491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:13-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:76b9284b4da273c2ed771323b6207ca062fd912fc325de95c588fbb3de6032e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4946996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f463e5ed51cb667a265ea7ee541c3fe192a7fa3a3ac5467c57bc628c77135cc`

```dockerfile
```

-	Layers:
	-	`sha256:0d5f198f30c78fe13075a4f8b0c7bb4237fef30ae9e5bd0412222b0d14d8b72a`  
		Last Modified: Tue, 06 Oct 2026 21:56:27 GMT  
		Size: 4.9 MB (4912873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10510ed50702b4b0155c0324f45b08bd1e55fad1b86877375dbf7cc4e7b5dd89`  
		Last Modified: Tue, 06 Oct 2026 21:56:26 GMT  
		Size: 34.1 KB (34123 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:13-ubi` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8565300b5f2d56ca490a3a2c640cef71e173c7de614ca2ff60d1a6c6faac85c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179037195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b453891754f65b7a07412abbc27986259257e4b3a8c7945881ce5f950ff278`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:54:24 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:54:24 GMT
ENV container oci
# Tue, 06 Oct 2026 06:54:25 GMT
COPY dir:e25ca9bce19950e134d1571bfd9f5606eb05da1f098ac5b727aef4ebc7b83454 in /      
# Tue, 06 Oct 2026 06:54:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:54:25 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:54:25 GMT
COPY dir:c45e57b863ca71f3508a48e72ff9c0ad8871f2710bd7efaffe74fbc929216e53 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:54:25 GMT
COPY dir:c45e57b863ca71f3508a48e72ff9c0ad8871f2710bd7efaffe74fbc929216e53 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:54:25 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:54:08Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:54:08Z" "architecture"="ppc64le" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:54:08Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 22:00:38 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 06 Oct 2026 22:00:43 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 06 Oct 2026 22:00:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 22:00:52 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 22:00:53 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 06 Oct 2026 22:00:53 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 06 Oct 2026 22:00:53 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=13.0.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 06 Oct 2026 22:00:53 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 06 Oct 2026 22:00:53 GMT
ARG MARIADB_VERSION=13.0.2
# Tue, 06 Oct 2026 22:00:53 GMT
ENV MARIADB_VERSION=13.0.2
# Tue, 06 Oct 2026 22:01:55 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 06 Oct 2026 22:01:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 06 Oct 2026 22:01:55 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 22:01:56 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 06 Oct 2026 22:01:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 22:01:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 22:01:57 GMT
USER mysql
# Tue, 06 Oct 2026 22:01:57 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 06 Oct 2026 22:01:57 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:3a3a2461cd07c59e0c778d6435ecc60f319acf3d0d977d18a22118130e1e6f78`  
		Last Modified: Tue, 06 Oct 2026 12:22:40 GMT  
		Size: 39.1 MB (39133633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e9f5f2a26187b884816f9f4a4b2bcebe3c6e9fbc19b2b477d8d57a60765c71`  
		Last Modified: Tue, 06 Oct 2026 22:02:53 GMT  
		Size: 4.8 KB (4759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a3ab648a68708618c0796aaf52e781c097399973c37cf2c0a47237703c8716`  
		Last Modified: Tue, 06 Oct 2026 22:02:53 GMT  
		Size: 2.3 MB (2306560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c997f0aeb3ec06fb9b095250354129c79a8bc18c5b3945e6d5a08a111ad992fc`  
		Last Modified: Tue, 06 Oct 2026 22:02:53 GMT  
		Size: 10.6 MB (10613371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4526b04a7a101a2221619a782945c8d5093f1ecabc5b276b6774816795475a90`  
		Last Modified: Tue, 06 Oct 2026 22:02:53 GMT  
		Size: 300.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:985ceb8ee2506aa208b104bdf88fb159f8e2dbdd11583aa8d324c2e3a52257a7`  
		Last Modified: Tue, 06 Oct 2026 22:03:00 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e324575e1b2abed4e99783cf4bb801efdedca9b26b16e025a911b800238c6c`  
		Last Modified: Tue, 06 Oct 2026 22:03:04 GMT  
		Size: 127.0 MB (126965600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca794de27716aef8198b41c6b892779b34cc1bdd74761fa61222d38d36eabb5b`  
		Last Modified: Tue, 06 Oct 2026 22:03:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b88d33e0217a68f7a134a8bb0d3c7d5d87108154dcf9dd29e8667f96d482fe`  
		Last Modified: Tue, 06 Oct 2026 22:03:00 GMT  
		Size: 4.0 KB (4030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0069878ec19b77930cba9d4e7820006888ce5f80373b7b5057e8799fb8aa8c`  
		Last Modified: Tue, 06 Oct 2026 22:03:01 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:13-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:784dcc89484e75e0761a9b477bc675b24e9e11a46e7fb05530ff5082cdb75665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4935986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787496adfd88b4112bd4653e893697cd89910a83971378c891b5030b2e5a2594`

```dockerfile
```

-	Layers:
	-	`sha256:d21202e8422b05b279d6a62d2240db5b8087fb00f73f15a7063993488ae1ea30`  
		Last Modified: Tue, 06 Oct 2026 22:03:00 GMT  
		Size: 4.9 MB (4902780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e655ae8116a4d0e67dec037f7c47f51f4169ac1a32177201eb756b9c2262c7e`  
		Last Modified: Tue, 06 Oct 2026 22:03:00 GMT  
		Size: 33.2 KB (33206 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:13-ubi` - linux; s390x

```console
$ docker pull mariadb@sha256:d9fd5f273ef5140ac65502f60f3058ec0d97e8030061a1188f47fdf1e711022f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172959270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c1419784772ec8d2301af1cf558e13ba7b874e6897a183c9fdcedce7c0987e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:58:22 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:58:22 GMT
ENV container oci
# Tue, 06 Oct 2026 06:58:22 GMT
COPY dir:59b340005a5695367b2b6ba200b95afac8af79674120f76d505f107f62ec7ed4 in /      
# Tue, 06 Oct 2026 06:58:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:58:22 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:58:22 GMT
COPY dir:c68ac7435b1ee2e4e342e6f714a2722fab812e488dc6d92d624bfb60cd57be96 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:58:22 GMT
COPY dir:c68ac7435b1ee2e4e342e6f714a2722fab812e488dc6d92d624bfb60cd57be96 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:58:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:57:02Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:57:02Z" "architecture"="s390x" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:57:02Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 21:52:59 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 06 Oct 2026 21:53:01 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:53:04 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 21:53:04 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 21:53:04 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 06 Oct 2026 21:53:04 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 06 Oct 2026 21:53:04 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=13.0.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 06 Oct 2026 21:53:04 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 06 Oct 2026 21:53:04 GMT
ARG MARIADB_VERSION=13.0.2
# Tue, 06 Oct 2026 21:53:04 GMT
ENV MARIADB_VERSION=13.0.2
# Tue, 06 Oct 2026 21:53:22 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 06 Oct 2026 21:53:22 GMT
VOLUME [/var/lib/mysql]
# Tue, 06 Oct 2026 21:53:22 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 21:53:22 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 06 Oct 2026 21:53:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 21:53:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 21:53:22 GMT
USER mysql
# Tue, 06 Oct 2026 21:53:22 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 06 Oct 2026 21:53:22 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:42cbc52a670f5b53993e0233ccf7a79e7a946f4215ce8ab80402bf2f86b79986`  
		Last Modified: Tue, 06 Oct 2026 12:22:34 GMT  
		Size: 34.9 MB (34862390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b28ce44e45fe5661f375621ee8ec5bdd05c2ee2ae603dc8f9030d120bacff9c`  
		Last Modified: Tue, 06 Oct 2026 21:53:53 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7bbb27cb26b86b65c3439a91346e17c5aee8630eedcfb6e77a4326bea07fe23`  
		Last Modified: Tue, 06 Oct 2026 21:53:53 GMT  
		Size: 2.3 MB (2284907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa92c48ab072fdf83680253b7020f04e191176af7b08739adf8f8cdb3bcb6d`  
		Last Modified: Tue, 06 Oct 2026 21:53:53 GMT  
		Size: 10.3 MB (10279468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d13511ec95712bf4673f5ae8fe9e5d2483b7a049b0cb9ce6123b608c7f2c2c7`  
		Last Modified: Tue, 06 Oct 2026 21:53:53 GMT  
		Size: 301.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13afd30be93eaa1e9107a18b9b1384260e0b9f9f8ba8c4894fc361ddf7baad9`  
		Last Modified: Tue, 06 Oct 2026 21:53:54 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a0618e8384db296956868b880c49b47f4d4d5ef230fb3d83329714af4f48ac4`  
		Last Modified: Tue, 06 Oct 2026 21:53:56 GMT  
		Size: 125.5 MB (125514468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8add36e2b798033f1542f05534b62cccb86901439ae6359e66d703108482426`  
		Last Modified: Tue, 06 Oct 2026 21:53:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d891b7ce3b024010490225d1f693e9bef0ba1f8ec9f821b1d6b3b46d4969b23b`  
		Last Modified: Tue, 06 Oct 2026 21:53:55 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31445f2463749b8eaf46e4b364c061fe8f8b3b19b5c4c39614cc7a7da8272d91`  
		Last Modified: Tue, 06 Oct 2026 21:53:55 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:13-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:ad802fb590df0680114165ff19c1b7f3bb2d64f12ae9a2ee5af7f846686d116a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4940649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f33f4b2db6dd530465ae978ddd35d7aa2055842bd3a89bea2dfa656becebb6`

```dockerfile
```

-	Layers:
	-	`sha256:f4458861b4a9e0edd7819088f9029d6c08a5b5e176a69a2e9e9bdfb7d74d3fcf`  
		Last Modified: Tue, 06 Oct 2026 21:53:53 GMT  
		Size: 4.9 MB (4906701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a001da3af0e6cdfdac6e170385602447c036fcaf3bbd18747aa055ebfbc90870`  
		Last Modified: Tue, 06 Oct 2026 21:53:53 GMT  
		Size: 33.9 KB (33948 bytes)  
		MIME: application/vnd.in-toto+json

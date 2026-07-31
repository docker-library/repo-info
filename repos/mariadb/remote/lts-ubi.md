## `mariadb:lts-ubi`

```console
$ docker pull mariadb@sha256:e6004000f28651d47141db8915c215491c8168c85f18f1b22d75447958dfcd81
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

### `mariadb:lts-ubi` - linux; amd64

```console
$ docker pull mariadb@sha256:da8c322d77a5a017074c1728a1af831827c509682e1eb1ad51c970330a455f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164791117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66edac82b8bebc5a322976b1f5e0752a65eabf0cfcadba056d9bde5c36454ea9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 13:46:35 GMT
ENV container oci
# Wed, 29 Jul 2026 13:46:35 GMT
COPY dir:8b54f62a83609f7ca7db35de99b97ad887016d7d343f267970f635c2bcfb9878 in /      
# Wed, 29 Jul 2026 13:46:35 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 13:46:35 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 13:46:36 GMT
COPY dir:a2f8f5692e4a30fca4b2fd34555df94b325e49a14060efd4825b60aed3fdb4a9 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 13:46:36 GMT
COPY dir:a2f8f5692e4a30fca4b2fd34555df94b325e49a14060efd4825b60aed3fdb4a9 in /root/buildinfo/      
# Wed, 29 Jul 2026 13:46:36 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T13:46:17Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T13:46:17Z" "architecture"="x86_64" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T13:46:17Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 00:14:20 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Fri, 31 Jul 2026 00:14:21 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:14:23 GMT
ENV GOSU_VERSION=1.19
# Fri, 31 Jul 2026 00:14:23 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 31 Jul 2026 00:14:23 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Fri, 31 Jul 2026 00:14:23 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Fri, 31 Jul 2026 00:14:23 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=12.3.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Fri, 31 Jul 2026 00:14:23 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 31 Jul 2026 00:14:23 GMT
ARG MARIADB_VERSION=12.3.2
# Fri, 31 Jul 2026 00:14:23 GMT
ENV MARIADB_VERSION=12.3.2
# Fri, 31 Jul 2026 00:14:49 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	microdnf install -y galera-4 rsync grep gawk iproute coreutils-single findutils tar lsof socat; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Fri, 31 Jul 2026 00:14:49 GMT
VOLUME [/var/lib/mysql]
# Fri, 31 Jul 2026 00:14:49 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 31 Jul 2026 00:14:49 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 31 Jul 2026 00:14:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:14:49 GMT
USER mysql
# Fri, 31 Jul 2026 00:14:49 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 31 Jul 2026 00:14:49 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:ddfe294a9804613156d3672398df770ff04349398a4be9dea00a32464465ed11`  
		Last Modified: Wed, 29 Jul 2026 14:40:41 GMT  
		Size: 34.9 MB (34900220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0ea8cb995d98a01f490c95f05fb48d7017f0adcd71c0bdb15a636ea0f19d2c`  
		Last Modified: Fri, 31 Jul 2026 00:15:08 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a383aa392f82fc36dac48d38b1f6404aa5a474c7303e1113e585ca69244e4dea`  
		Last Modified: Fri, 31 Jul 2026 00:15:08 GMT  
		Size: 2.2 MB (2240116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72c0299d2fc44edc6bc4369a08248f792e2704dca875099b14d0d037895fb9f5`  
		Last Modified: Fri, 31 Jul 2026 00:15:08 GMT  
		Size: 10.1 MB (10084129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9962c29a2c9248507eb00c15ebd23de769cf1418f5bdbbb9bd05565673d340e`  
		Last Modified: Fri, 31 Jul 2026 00:15:08 GMT  
		Size: 300.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682948b4723d64a105457bd42a66377995d32946ce39f62d19de171d8b36baa9`  
		Last Modified: Fri, 31 Jul 2026 00:15:09 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8e502a1f15cc5d68d80edf945ef4aa8bbcafcbf887369b7c998b6be35804a3`  
		Last Modified: Fri, 31 Jul 2026 00:15:12 GMT  
		Size: 117.5 MB (117548622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be37cceab5834a92ac887eee6050df6efa6e08db3a90593ffabf511c40cc5233`  
		Last Modified: Fri, 31 Jul 2026 00:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48233398158854a3bd236b81466224cdb57ab005f0da5c48d132b02bd7c5108`  
		Last Modified: Fri, 31 Jul 2026 00:15:10 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab443e453d1b986069d8f130e083b38eb8463dc621341de76d1e12eb263fffa7`  
		Last Modified: Fri, 31 Jul 2026 00:15:10 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:lts-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:dee02e177640ae75d382277e617074c7c37afdbb754ac7ec6ecfbaf4a3ecb602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4934740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5db4ad2ce185d29a9ca4c6a3f85394781fbd6a9106cf27ba025866b5ee1927c`

```dockerfile
```

-	Layers:
	-	`sha256:2efd92dd92f96819e2b4a08a81be28e1b5f7d2ce961865993574a8f129e87dc5`  
		Last Modified: Fri, 31 Jul 2026 00:15:08 GMT  
		Size: 4.9 MB (4899758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9baf82492deb564218bdf88b67027cb15afc2cdbe42b9e3206b31ddb52b24ad6`  
		Last Modified: Fri, 31 Jul 2026 00:15:08 GMT  
		Size: 35.0 KB (34982 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:lts-ubi` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:2e5647b0ee304738c45d9a43999f2a205945c7339fe1a43e589d3a91902f73fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160542445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e39fe63f3f1a23c603f95f87c12c7818bf32710df0dcacd0160796c9871de5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 13:49:53 GMT
ENV container oci
# Wed, 29 Jul 2026 13:49:54 GMT
COPY dir:6494f0a7f26288c5d33733a2fc6cb0725994b3f7d21bbebda5c614e2d2e0b030 in /      
# Wed, 29 Jul 2026 13:49:54 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 13:49:54 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 13:49:54 GMT
COPY dir:fec0a214d0310fdf953bc240b28235ee5011fef40c975541e9dcd78832e7e9c9 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 13:49:54 GMT
COPY dir:fec0a214d0310fdf953bc240b28235ee5011fef40c975541e9dcd78832e7e9c9 in /root/buildinfo/      
# Wed, 29 Jul 2026 13:49:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T13:49:30Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T13:49:30Z" "architecture"="aarch64" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T13:49:30Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 00:17:18 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Fri, 31 Jul 2026 00:17:20 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:17:22 GMT
ENV GOSU_VERSION=1.19
# Fri, 31 Jul 2026 00:17:22 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 31 Jul 2026 00:17:22 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Fri, 31 Jul 2026 00:17:22 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Fri, 31 Jul 2026 00:17:22 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=12.3.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Fri, 31 Jul 2026 00:17:22 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 31 Jul 2026 00:17:22 GMT
ARG MARIADB_VERSION=12.3.2
# Fri, 31 Jul 2026 00:17:22 GMT
ENV MARIADB_VERSION=12.3.2
# Fri, 31 Jul 2026 00:17:46 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	microdnf install -y galera-4 rsync grep gawk iproute coreutils-single findutils tar lsof socat; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Fri, 31 Jul 2026 00:17:46 GMT
VOLUME [/var/lib/mysql]
# Fri, 31 Jul 2026 00:17:46 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 31 Jul 2026 00:17:46 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 31 Jul 2026 00:17:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:17:46 GMT
USER mysql
# Fri, 31 Jul 2026 00:17:46 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 31 Jul 2026 00:17:46 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:4993068ac9f96458b90955f8347fdb41bb56d5cdbecf98080b50a406705a5ad7`  
		Last Modified: Wed, 29 Jul 2026 14:40:40 GMT  
		Size: 33.1 MB (33059937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d6560028773395abbfa71a86983b5a4987b253babf62c753b5b45ad4d2e0f3`  
		Last Modified: Fri, 31 Jul 2026 00:18:07 GMT  
		Size: 4.8 KB (4759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319ab2c882ee6ffb479021017d9f8acb36063874a639fe7f239e45bf06314373`  
		Last Modified: Fri, 31 Jul 2026 00:18:07 GMT  
		Size: 2.2 MB (2237336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b60face75ba1b09f77c015702eea03e7de25287bb64454bf119f7ad53af3f1`  
		Last Modified: Fri, 31 Jul 2026 00:18:07 GMT  
		Size: 9.9 MB (9879413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ef25cc9add769b53df36ffab8100e61b7c80eefb8ad2e2098018e0032bc75a`  
		Last Modified: Fri, 31 Jul 2026 00:18:07 GMT  
		Size: 301.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c33f31237d61d505f026897f26c847e142071867f2f4fa0c7ae73d0aebf7171`  
		Last Modified: Fri, 31 Jul 2026 00:18:08 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991282cb908fe0132ec97a1ba4773e5ee6c32ea4a999346c653303f5afbd1285`  
		Last Modified: Fri, 31 Jul 2026 00:18:11 GMT  
		Size: 115.3 MB (115347727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d783c30358137b2843a32b4ad89c5810884837a289e407976ee505df6ad927a`  
		Last Modified: Fri, 31 Jul 2026 00:18:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c57fd6a0f50071a940c77053d5d68c87e6735d0256f5361d7fc6000e40e0c9`  
		Last Modified: Fri, 31 Jul 2026 00:18:09 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5327f33e747826653f32183ce30acb578a636be74ab2312d8b810efeb6b79549`  
		Last Modified: Fri, 31 Jul 2026 00:18:09 GMT  
		Size: 8.5 KB (8491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:lts-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:4fb30318ef8a252af1b9679bde7150f1d14710087adb5e8053819f73d81c3c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4935044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89532a7b0c39347a3b78de15415eebcccb071cffa5354ff0ec67899e4be81df6`

```dockerfile
```

-	Layers:
	-	`sha256:dc28fbe1c2b4f6c983a5a5bb20eaf540fd494fe99deadca25eab871d9d851320`  
		Last Modified: Fri, 31 Jul 2026 00:18:07 GMT  
		Size: 4.9 MB (4899863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cf9e085a524cfac3b1a500b98e66c63526e861f27b31b47de48e66f4c83fe98`  
		Last Modified: Fri, 31 Jul 2026 00:18:07 GMT  
		Size: 35.2 KB (35181 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:lts-ubi` - linux; ppc64le

```console
$ docker pull mariadb@sha256:d78695f3c2bc30cf0f391b5c50fc72908a7c7f02a1fef62b2261d5bdff64d1e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (176008286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d6ddab7e45f7c1510ffc19b05cebac022d6cfb48b52dc65795067c315cbf5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 13:50:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 13:50:05 GMT
ENV container oci
# Wed, 29 Jul 2026 13:50:06 GMT
COPY dir:32b612952f6a200e1fc2841228adfff5b5619d342a0bf5d8f4fb3394f3204d40 in /      
# Wed, 29 Jul 2026 13:50:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 13:50:06 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 13:50:06 GMT
COPY dir:6312ce2863b2ed80640bbcd1b43ae5dd174e45e7d1f30d05f89f474c8f56d870 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 13:50:06 GMT
COPY dir:6312ce2863b2ed80640bbcd1b43ae5dd174e45e7d1f30d05f89f474c8f56d870 in /root/buildinfo/      
# Wed, 29 Jul 2026 13:50:06 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T13:49:48Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T13:49:48Z" "architecture"="ppc64le" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T13:49:48Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 02:52:49 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Fri, 31 Jul 2026 02:52:51 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Fri, 31 Jul 2026 02:53:02 GMT
ENV GOSU_VERSION=1.19
# Fri, 31 Jul 2026 02:53:02 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 31 Jul 2026 02:53:03 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Fri, 31 Jul 2026 02:53:34 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Fri, 31 Jul 2026 02:53:34 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=12.3.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Fri, 31 Jul 2026 02:53:34 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 31 Jul 2026 02:53:34 GMT
ARG MARIADB_VERSION=12.3.2
# Fri, 31 Jul 2026 02:53:34 GMT
ENV MARIADB_VERSION=12.3.2
# Fri, 31 Jul 2026 02:54:16 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	microdnf install -y galera-4 rsync grep gawk iproute coreutils-single findutils tar lsof socat; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Fri, 31 Jul 2026 02:54:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 31 Jul 2026 02:54:16 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 31 Jul 2026 02:54:16 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 31 Jul 2026 02:54:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 02:54:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 02:54:16 GMT
USER mysql
# Fri, 31 Jul 2026 02:54:16 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 31 Jul 2026 02:54:16 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:efe2e261eec9fcfe777756b6158d35446d9dd1a2f1a234aaded7f95906b10b72`  
		Last Modified: Wed, 29 Jul 2026 18:21:45 GMT  
		Size: 39.0 MB (39032105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403c810ca8dfeb5901e0becc8e2ea175206212a163cd55fe1824fa75a4977441`  
		Last Modified: Fri, 31 Jul 2026 02:54:31 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c43e56ee0623635f9bb27f6d0ebfb8a8a9243a1adc274f0b4f5ec3eb7e3d10`  
		Last Modified: Fri, 31 Jul 2026 02:54:31 GMT  
		Size: 2.3 MB (2267973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd357f7c8eaa44746440e354e7978e267c16a2469e19bec710ea04b701ead8a`  
		Last Modified: Fri, 31 Jul 2026 02:54:32 GMT  
		Size: 10.6 MB (10555928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03dddeea594985dd4d60875a87fb647c73f020566e2c9538f6ddc23607e8992e`  
		Last Modified: Fri, 31 Jul 2026 02:54:31 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c836c50cbb52581a4a519d1de67dd5236c33ec71dbf96059dc6bee47e52dfc43`  
		Last Modified: Fri, 31 Jul 2026 02:55:01 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6924745eefd00c0eb819252f3b3fe2852f46d17b8969fa64c7c5df05029b068`  
		Last Modified: Fri, 31 Jul 2026 02:55:04 GMT  
		Size: 124.1 MB (124134249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8867503ac2d6b9cc81afdc21d0b150272da46c621d5e565b79bdf0af4ed08ed`  
		Last Modified: Fri, 31 Jul 2026 02:55:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:599eb5388a1c8a6b23fe17801bcd2ae8ca81055800120a80ffeca5a6f9d41b86`  
		Last Modified: Fri, 31 Jul 2026 02:55:01 GMT  
		Size: 4.0 KB (4031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d35de96e21d41918e25f6a1a3493621a7296285dea5f7debb80016966d4a53`  
		Last Modified: Fri, 31 Jul 2026 02:55:03 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:lts-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:0a1070dbe62e375208a7ac9a20cbf3256aa5d5803937dbe32da483ee38dcb07c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4923214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0af632ce0eaf9e7218d268f70f72b34ddabc3d236acf8eedf85a94f87ab75311`

```dockerfile
```

-	Layers:
	-	`sha256:cfa43ca4d684da820d02aa1a57252d5a0838f28125a6d59a31712c0fc385faa3`  
		Last Modified: Fri, 31 Jul 2026 02:55:02 GMT  
		Size: 4.9 MB (4888961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73d82d769664952734700b4bdb70a65a7524b64a663e2fb20eb7a061ade074bf`  
		Last Modified: Fri, 31 Jul 2026 02:55:01 GMT  
		Size: 34.3 KB (34253 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:lts-ubi` - linux; s390x

```console
$ docker pull mariadb@sha256:9aa044039574e5bb8f47ee4ebb04ce82910bbd1858545df5d7818a77aec0ce38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170848531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c17ca84b005c5aeae88bc9b094db209010004078022a9e35042b85428033f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 14:09:24 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 14:09:24 GMT
ENV container oci
# Wed, 29 Jul 2026 14:09:25 GMT
COPY dir:95cb629b59dcab1d83b18a252bac1931d0ea13f8221158f9ae691eca6c2af42e in /      
# Wed, 29 Jul 2026 14:09:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 14:09:25 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 14:09:25 GMT
COPY dir:84509ddc5ec4034e1c3fd54fce9ccc6c0300dfbba8aa67a14a2de63394571f4b in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 14:09:25 GMT
COPY dir:84509ddc5ec4034e1c3fd54fce9ccc6c0300dfbba8aa67a14a2de63394571f4b in /root/buildinfo/      
# Wed, 29 Jul 2026 14:09:25 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T14:06:40Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T14:06:40Z" "architecture"="s390x" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T14:06:40Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 00:55:48 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Fri, 31 Jul 2026 00:55:50 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:55:53 GMT
ENV GOSU_VERSION=1.19
# Fri, 31 Jul 2026 00:55:53 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 31 Jul 2026 00:55:53 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Fri, 31 Jul 2026 00:55:53 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Fri, 31 Jul 2026 00:55:53 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=12.3.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Fri, 31 Jul 2026 00:55:53 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 31 Jul 2026 00:55:53 GMT
ARG MARIADB_VERSION=12.3.2
# Fri, 31 Jul 2026 00:55:53 GMT
ENV MARIADB_VERSION=12.3.2
# Fri, 31 Jul 2026 00:56:17 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	microdnf install -y galera-4 rsync grep gawk iproute coreutils-single findutils tar lsof socat; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Fri, 31 Jul 2026 00:56:17 GMT
VOLUME [/var/lib/mysql]
# Fri, 31 Jul 2026 00:56:17 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 31 Jul 2026 00:56:18 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 31 Jul 2026 00:56:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:56:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:56:18 GMT
USER mysql
# Fri, 31 Jul 2026 00:56:18 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 31 Jul 2026 00:56:18 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:c9183109e6599bdbc51a1ba29d2941b9a92503ebf23d69b5d2d0432506828168`  
		Last Modified: Wed, 29 Jul 2026 18:21:35 GMT  
		Size: 34.8 MB (34762514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e807ff93daaf8108ea47a09860d1f28d8d1bd6c0c2d1fe9bed1ee0fd6b324b4`  
		Last Modified: Fri, 31 Jul 2026 00:56:55 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aecbe30972fe62f5087acaa732c5b63bed0d5da13c71aeecda19b68366e3a82f`  
		Last Modified: Fri, 31 Jul 2026 00:56:55 GMT  
		Size: 2.2 MB (2245380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ec14885ea1c65acab82df5391551b824107e3446be8ec5ea61896671860f49`  
		Last Modified: Fri, 31 Jul 2026 00:56:55 GMT  
		Size: 10.2 MB (10224624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56067b77edb1fb22b9a2b4d130d82dc71e14a500d5c7e8346d00c4b01919f432`  
		Last Modified: Fri, 31 Jul 2026 00:56:55 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d8c1a7769fceae7781cf52061aba8b171e10811a4e4bda9af7a7b632b1b00a`  
		Last Modified: Fri, 31 Jul 2026 00:56:56 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1cff52d16a905657d5e9492bfefc74d97479b7b30efd1ca72ff1ecb958a5d97`  
		Last Modified: Fri, 31 Jul 2026 00:56:58 GMT  
		Size: 123.6 MB (123597979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b73ce01b743e6d7eaf20b440020bfd5f5e6f14571e28773cd403c01205b9da`  
		Last Modified: Fri, 31 Jul 2026 00:56:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8388a82147c08320ce9cf47902cb07bc5ac865045ec0faa05b6335c3b6b6eb`  
		Last Modified: Fri, 31 Jul 2026 00:56:57 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b79812e380e489ac71ef16e04fe594cf293ccb4711f046e0f5b98133f8841d8`  
		Last Modified: Fri, 31 Jul 2026 00:56:57 GMT  
		Size: 8.5 KB (8491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:lts-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:ea6be1a29571e41833beebe188952a100640f2812a39b8cdc74ec19ec9fca695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4927852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a41661d4dc7fcd11a2191a2723ef24ae201c0079ba3cbf722d65da489f6076`

```dockerfile
```

-	Layers:
	-	`sha256:d45456f4fff5166c21d6c81909224c34df74975f7bef28c8a4e00424c161e81f`  
		Last Modified: Fri, 31 Jul 2026 00:56:55 GMT  
		Size: 4.9 MB (4892870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad37e341431c38a535b0bdf3014b2fac0572298730c3cbec5f25ecec5cc164cf`  
		Last Modified: Fri, 31 Jul 2026 00:56:55 GMT  
		Size: 35.0 KB (34982 bytes)  
		MIME: application/vnd.in-toto+json

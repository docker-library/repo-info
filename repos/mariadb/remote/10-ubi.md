## `mariadb:10-ubi`

```console
$ docker pull mariadb@sha256:74826c228717737bb242cde3188b9786acaae4789fb8880cb41f83162dae31fe
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

### `mariadb:10-ubi` - linux; amd64

```console
$ docker pull mariadb@sha256:b91629ab0dd52a90b13ab4cf14d83f62fe8b6c4a043f57ae9a1590b8592d8208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161753351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d81f02eaa31fc9680685ef977c9be34839749d6b1f2c799af232912b5c12ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

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
# Thu, 16 Jul 2026 00:25:44 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Thu, 16 Jul 2026 00:25:45 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:25:48 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 00:25:48 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 00:25:48 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Thu, 16 Jul 2026 00:25:48 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Thu, 16 Jul 2026 00:25:48 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=10.11.18 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Thu, 16 Jul 2026 00:25:48 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.18 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Thu, 16 Jul 2026 00:25:48 GMT
ARG MARIADB_VERSION=10.11.18
# Thu, 16 Jul 2026 00:25:48 GMT
ENV MARIADB_VERSION=10.11.18
# Thu, 16 Jul 2026 00:26:07 GMT
# ARGS: MARIADB_VERSION=10.11.18
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export FF8AD1344597106ECE813B918A3872BF3228467C > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm --output /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-9.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-9.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf reinstall -y tzdata ; 	microdnf install -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Thu, 16 Jul 2026 00:26:07 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 00:26:08 GMT
# ARGS: MARIADB_VERSION=10.11.18
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 00:26:08 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Thu, 16 Jul 2026 00:26:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 00:26:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:26:08 GMT
USER mysql
# Thu, 16 Jul 2026 00:26:08 GMT
EXPOSE map[3306/tcp:{}]
# Thu, 16 Jul 2026 00:26:08 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44dcef4b0ac36de2021c4663d81a52700e7f2b3c471dad7afbb9ca84148040eb`  
		Last Modified: Thu, 16 Jul 2026 00:26:25 GMT  
		Size: 4.8 KB (4761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b04d8e8ce68adca539494ab396f424479384deb5b5383e71245ee99b03b80e3`  
		Last Modified: Thu, 16 Jul 2026 00:26:26 GMT  
		Size: 2.0 MB (2000761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6196736d7c82a6edbc2d6f5cd1027e3324190ac9e5f5cfa620a216f8341892b9`  
		Last Modified: Thu, 16 Jul 2026 00:26:26 GMT  
		Size: 7.9 MB (7871890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a839947c801b78d7da085aeb58b861060792561d8aec8ace096617322459e0d`  
		Last Modified: Thu, 16 Jul 2026 00:26:25 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e7c888aa7b3f7bbb21f7aa960c5685d448f4654c31098e3fd91ed8e40a2c5e`  
		Last Modified: Thu, 16 Jul 2026 00:26:27 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee792ef9b4ef6428fa081d5631a04282b47ac7da994d4e1af6fc65373942f34f`  
		Last Modified: Thu, 16 Jul 2026 00:26:30 GMT  
		Size: 111.2 MB (111174545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb831035a80fcffd4d5964a9aa6ee9dfbe063f75b1931c6a4356abad4d2f00d7`  
		Last Modified: Thu, 16 Jul 2026 00:26:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d8722aff28b3eb59524131cae4008385c4d4d5bf532528ad329184005692df`  
		Last Modified: Thu, 16 Jul 2026 00:26:27 GMT  
		Size: 4.0 KB (4013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d57945393c1288fcf44dd8db4ecb6a65786de1c2c753be2c070ea24a9403029`  
		Last Modified: Thu, 16 Jul 2026 00:26:28 GMT  
		Size: 8.5 KB (8458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:c5457791b2e79a3900c1bac55d6c57f85caa6fc6361b9c09cb89d1b565eefaa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4754899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58169a19a01dad19ec48e3aaf57768d8d4d6030f8897da6df116b07d28428a78`

```dockerfile
```

-	Layers:
	-	`sha256:6a5d34d276e92edeef3ee93c13334eec7fa1eb421569e5e2027d2d9ed8f79cf7`  
		Last Modified: Thu, 16 Jul 2026 00:26:26 GMT  
		Size: 4.7 MB (4721031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f6d5ed20e97ef0801bc791a6ea8d5d54fb1c2c705aef501da04cae9086b682b`  
		Last Modified: Thu, 16 Jul 2026 00:26:25 GMT  
		Size: 33.9 KB (33868 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-ubi` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:018cbc429d2e52bc590600108db4233ff59f1f5f265471960f54fd8ea70735a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157297580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d7e26c976323de68ee0e277117960e2b6421bbc2734741f7f93caaee936ba3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:10:52 GMT
ENV container oci
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:91cba88ba8f66a4d62e50f78add4d1fd07a5799e60037509c9ca5a48fefaa091 in /      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:10:53 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:10:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:10:31Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:10:31Z" "architecture"="aarch64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:10:31Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 17:04:09 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 21 Jul 2026 17:04:11 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:04:14 GMT
ENV GOSU_VERSION=1.19
# Tue, 21 Jul 2026 17:04:14 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 21 Jul 2026 17:04:14 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 21 Jul 2026 17:04:14 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 21 Jul 2026 17:04:14 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=10.11.18 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 21 Jul 2026 17:04:14 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.18 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 21 Jul 2026 17:04:14 GMT
ARG MARIADB_VERSION=10.11.18
# Tue, 21 Jul 2026 17:04:14 GMT
ENV MARIADB_VERSION=10.11.18
# Tue, 21 Jul 2026 17:04:41 GMT
# ARGS: MARIADB_VERSION=10.11.18
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export FF8AD1344597106ECE813B918A3872BF3228467C > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm --output /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-9.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-9.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf reinstall -y tzdata ; 	microdnf install -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 21 Jul 2026 17:04:41 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Jul 2026 17:04:41 GMT
# ARGS: MARIADB_VERSION=10.11.18
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 21 Jul 2026 17:04:41 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 21 Jul 2026 17:04:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 17:04:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Jul 2026 17:04:41 GMT
USER mysql
# Tue, 21 Jul 2026 17:04:41 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 21 Jul 2026 17:04:41 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:87b99ca60407b5b3044b907de710ecb00dd7222e3a38acbc4a3fc51d11d7c04e`  
		Last Modified: Tue, 21 Jul 2026 05:00:39 GMT  
		Size: 38.8 MB (38807059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7815a17d1948f251fc9b2e9b527465a71eb081d83cf69f81d6249fdc2ce94123`  
		Last Modified: Tue, 21 Jul 2026 17:05:01 GMT  
		Size: 4.8 KB (4761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:848bc6d2a19878b98fa85e257974917a296432a3387309394b248d2a03a4fc97`  
		Last Modified: Tue, 21 Jul 2026 17:05:01 GMT  
		Size: 2.0 MB (1983048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5dbc87867d10feb797c924f9e28bbd737f51686323e0163938e92132cd5b5e`  
		Last Modified: Tue, 21 Jul 2026 17:05:01 GMT  
		Size: 6.7 MB (6696037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68679a875d05815491f1ca2de0bfb8cb1d818dfd3897299af6192e3a115c87ee`  
		Last Modified: Tue, 21 Jul 2026 17:05:01 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9dc5b2c0de95da937268da86f3ccec90e821a74df396cfe7b89098724b31211`  
		Last Modified: Tue, 21 Jul 2026 17:05:03 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad262d803e412017063983fe50b6badba4c53c0c7bca9717653c2ff92d7bc56`  
		Last Modified: Tue, 21 Jul 2026 17:05:05 GMT  
		Size: 109.8 MB (109793419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958eac21d99dec7ef11ebf3c013d7a06f514234620f506d118823f22464e5d40`  
		Last Modified: Tue, 21 Jul 2026 17:05:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f493cfd51f052beccbea8273b652b1ac945138f31f0bfe1557beca4a25c77f59`  
		Last Modified: Tue, 21 Jul 2026 17:05:03 GMT  
		Size: 4.0 KB (4013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df7dc8704297b5dd3aa49f7c1d02d87867693df6828807b7178f437038c6a64`  
		Last Modified: Tue, 21 Jul 2026 17:05:04 GMT  
		Size: 8.5 KB (8457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:cecaeabd4f3a16ed27d779a9c008d62b90c45d0da29e7956df66be8906db0b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4752118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc995484d8c0a1656e095cb1d821452232dbc13561f442c1e764302cab61aa6`

```dockerfile
```

-	Layers:
	-	`sha256:80dfbd9b575aa33613ee081360a1cb4011c71e18824c3860eea68b26e2058bb2`  
		Last Modified: Tue, 21 Jul 2026 17:05:02 GMT  
		Size: 4.7 MB (4718068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61c6479acd41f4278048221e940e8d24dfc6c2b9f0cba8ebd73754b6a0d036fd`  
		Last Modified: Tue, 21 Jul 2026 17:05:01 GMT  
		Size: 34.0 KB (34050 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-ubi` - linux; ppc64le

```console
$ docker pull mariadb@sha256:0af54259cac600e115367a60ed2011c563ceb924b06207d31f34aa3139622a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.9 MB (171857812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0caf79f9fa087b4f5610c80c66294118c4af286097fe50b72a4ac3c8017032c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:26:45 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:26:45 GMT
ENV container oci
# Wed, 15 Jul 2026 05:26:46 GMT
COPY dir:1bdd6eb7357eefc120202f7e51c21e591c6baf5f7f7f06c5f481a4a64a785a60 in /      
# Wed, 15 Jul 2026 05:26:46 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:26:46 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:26:46 GMT
COPY dir:3a665f1b37b3154c8af087937dd890b8519b76b10ce182dee7eb4ca162486202 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:26:46 GMT
COPY dir:3a665f1b37b3154c8af087937dd890b8519b76b10ce182dee7eb4ca162486202 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:26:47 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:26:27Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:26:27Z" "architecture"="ppc64le" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:26:27Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:30:25 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Thu, 16 Jul 2026 00:30:28 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:30:34 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 00:30:34 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 00:32:25 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Thu, 16 Jul 2026 00:32:25 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Thu, 16 Jul 2026 00:32:25 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=10.11.18 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Thu, 16 Jul 2026 00:32:25 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.18 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Thu, 16 Jul 2026 00:32:25 GMT
ARG MARIADB_VERSION=10.11.18
# Thu, 16 Jul 2026 00:32:25 GMT
ENV MARIADB_VERSION=10.11.18
# Thu, 16 Jul 2026 00:33:02 GMT
# ARGS: MARIADB_VERSION=10.11.18
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export FF8AD1344597106ECE813B918A3872BF3228467C > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm --output /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-9.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-9.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf reinstall -y tzdata ; 	microdnf install -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Thu, 16 Jul 2026 00:33:02 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 00:33:03 GMT
# ARGS: MARIADB_VERSION=10.11.18
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 00:33:04 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Thu, 16 Jul 2026 00:33:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 00:33:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:33:05 GMT
USER mysql
# Thu, 16 Jul 2026 00:33:05 GMT
EXPOSE map[3306/tcp:{}]
# Thu, 16 Jul 2026 00:33:05 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:212a5704ab9a81496c2efada993e59b76d91e099f3325fb2266dceceb957afa7`  
		Last Modified: Wed, 15 Jul 2026 06:14:49 GMT  
		Size: 45.1 MB (45077772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2dfc4583773c002ddea18381b23ee6f3e0ef7349e09ee0e7c7faea1f586b77`  
		Last Modified: Thu, 16 Jul 2026 00:32:09 GMT  
		Size: 4.8 KB (4761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1fa6258c711bb6437e864dce5ebe0e4faed9864cb2087118f8d36a6c1b7614`  
		Last Modified: Thu, 16 Jul 2026 00:32:09 GMT  
		Size: 2.0 MB (1982697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:602fae0a822d6606629ac9ce90f5da24777439fb3ef92c5c661e6c019e917180`  
		Last Modified: Thu, 16 Jul 2026 00:32:09 GMT  
		Size: 6.7 MB (6674275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307963ca6091ceb5114977f36d9e42fe020c3fa469ab6d35c3b279abf3f8720c`  
		Last Modified: Thu, 16 Jul 2026 00:33:48 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d888cc4feefd3a08c53caf918ba1e4fccf685181067bcd551966a87d996c87`  
		Last Modified: Thu, 16 Jul 2026 00:33:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c077de21b79e2b642b0e146ef3b6add545be6287d200d453239c3d4be9d5254`  
		Last Modified: Thu, 16 Jul 2026 00:33:51 GMT  
		Size: 118.1 MB (118105045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bfbfdc3dd2ffdac645b307e49934fd9bff825c2a4557cc0612515406b7403f1`  
		Last Modified: Thu, 16 Jul 2026 00:33:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49ff8f891c4d0da348d5c8b1d644af9cbc5e7f5c5a78f4f1eef0e26943fe83f`  
		Last Modified: Thu, 16 Jul 2026 00:33:49 GMT  
		Size: 4.0 KB (4016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d8e085fe0c2e530e80e4a33454d32b3d170cd9e99dc878849ccb4678cb31ad`  
		Last Modified: Thu, 16 Jul 2026 00:33:49 GMT  
		Size: 8.5 KB (8459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:c7718fe47061892ab7e12c1f6f543836fc7614cb9a40194c10a27f5a7860e49f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4746688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0481c73cc496d799dc87993024bc90ca698e8b226f467bd07bdc5a052ab79b7d`

```dockerfile
```

-	Layers:
	-	`sha256:daf25ef671b697f6ac807588ea91158ea4e89f6235abd61878aa689713fdf95d`  
		Last Modified: Thu, 16 Jul 2026 00:33:48 GMT  
		Size: 4.7 MB (4713565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:869098d8f93a725d11385da69a6994c377a0ea5d289e31c56abc8548b42e09bc`  
		Last Modified: Thu, 16 Jul 2026 00:33:48 GMT  
		Size: 33.1 KB (33123 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-ubi` - linux; s390x

```console
$ docker pull mariadb@sha256:4b2bd6895d338626fa4cd411c5e8e29789843bf35594be60efcf412ad98273b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.8 MB (158829426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970f8ebb7f296795c42812a592f34c0496d551c6f5d3dc7360284056f20125ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:19:20 GMT
ENV container oci
# Tue, 21 Jul 2026 01:19:20 GMT
COPY dir:bdc996a75c84fc88425f33a7d1bf350e2bc028ff4b4a542a7f650bbe93627c06 in /      
# Tue, 21 Jul 2026 01:19:20 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:19:20 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:19:20 GMT
COPY dir:ff4c148529ae762e64c6addf17dd2488a09966186c1274718d0ec593def9b204 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:19:20 GMT
COPY dir:ff4c148529ae762e64c6addf17dd2488a09966186c1274718d0ec593def9b204 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:18:20Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:18:20Z" "architecture"="s390x" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:18:20Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 16:53:52 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 21 Jul 2026 16:53:54 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 21 Jul 2026 16:53:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 21 Jul 2026 16:53:56 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 21 Jul 2026 16:55:10 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 21 Jul 2026 16:55:10 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 21 Jul 2026 16:55:10 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=10.11.18 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 21 Jul 2026 16:55:10 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.18 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 21 Jul 2026 16:55:10 GMT
ARG MARIADB_VERSION=10.11.18
# Tue, 21 Jul 2026 16:55:10 GMT
ENV MARIADB_VERSION=10.11.18
# Tue, 21 Jul 2026 16:55:30 GMT
# ARGS: MARIADB_VERSION=10.11.18
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export FF8AD1344597106ECE813B918A3872BF3228467C > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm --output /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-9.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-9.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf reinstall -y tzdata ; 	microdnf install -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 21 Jul 2026 16:55:30 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Jul 2026 16:55:30 GMT
# ARGS: MARIADB_VERSION=10.11.18
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 21 Jul 2026 16:55:30 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 21 Jul 2026 16:55:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 16:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Jul 2026 16:55:30 GMT
USER mysql
# Tue, 21 Jul 2026 16:55:30 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 21 Jul 2026 16:55:30 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:2f7677930089559faf58a771ff6e526985999fa9988089b71e6c02d4cc584f67`  
		Last Modified: Tue, 21 Jul 2026 05:00:39 GMT  
		Size: 38.7 MB (38727940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a03c153b87fc3ae13a74766eeda0d1f1441b1450b4f1017ea98403183720a80`  
		Last Modified: Tue, 21 Jul 2026 16:54:49 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e505833627bf2522bfe3d16d3b5bb92ac7c06f7956bff1d891438b478509a6`  
		Last Modified: Tue, 21 Jul 2026 16:54:49 GMT  
		Size: 2.0 MB (2002539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a319363d7a1e2baec714fbde5bd7da8f9f94aada3bc23ea19c577443668e84f`  
		Last Modified: Tue, 21 Jul 2026 16:54:49 GMT  
		Size: 6.7 MB (6698351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236cdb10abebe64cd838dffc6d46ebca7bf4b8766ca2248458dbe541f45d8e65`  
		Last Modified: Tue, 21 Jul 2026 16:56:00 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58c7622853b33be0790eb0f5bbecc9138ff792562316b77de4c041c1d46f211`  
		Last Modified: Tue, 21 Jul 2026 16:56:00 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c380635c7b6f054865daa81bebf058054db96517c9df462eeb158999142cc5`  
		Last Modified: Tue, 21 Jul 2026 16:56:02 GMT  
		Size: 111.4 MB (111382587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdeb985e2e176faf0bc316450656059b78c998df36de25dbc708679440bc7aa`  
		Last Modified: Tue, 21 Jul 2026 16:56:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdefe6f1b79d8d529bbf01c73f6585e2e182717ff2a83f7f6753f1bc00197b6`  
		Last Modified: Tue, 21 Jul 2026 16:56:01 GMT  
		Size: 4.0 KB (4011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332c17506945dcf67d6ba30dd046d8bf743490735ceabf094cd3ab9f00834998`  
		Last Modified: Tue, 21 Jul 2026 16:56:01 GMT  
		Size: 8.5 KB (8456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:d864e18b70e47cc9abe1f49036bd89bae9c4898251ab6a40395e74d84fac418b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4741852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6030babe0e08256a0daf9d41532789de1669e457da1da93661d8150e80cc7e`

```dockerfile
```

-	Layers:
	-	`sha256:be67d6e672d101539478d0da86a7f9385b0fc58233a2000c9c11fd39268c5095`  
		Last Modified: Tue, 21 Jul 2026 16:56:00 GMT  
		Size: 4.7 MB (4707983 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83c56ed52af95bf307b3b3cc85fa16e63f3aeec750bf5f26b24fc4c0b65811d3`  
		Last Modified: Tue, 21 Jul 2026 16:56:00 GMT  
		Size: 33.9 KB (33869 bytes)  
		MIME: application/vnd.in-toto+json

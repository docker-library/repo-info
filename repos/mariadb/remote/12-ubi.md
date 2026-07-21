## `mariadb:12-ubi`

```console
$ docker pull mariadb@sha256:e752a70737d084919d3659aed35d31ed54de158d2711e9be19ea8154051dee3f
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
$ docker pull mariadb@sha256:10e62e9d93410b0444cbf05a14227d65ae77bbfd68be31c119830a171593ab8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164744930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6340a79d0b6e018f20d0dbc7d30d65b379dc0362c2051cc4391017676c16a26`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:52:21 GMT
ENV container oci
# Wed, 15 Jul 2026 05:52:22 GMT
COPY dir:e80ceae0f38fed255e475d6f3c857d9cc653b611388172a20e2345e2608f2c11 in /      
# Wed, 15 Jul 2026 05:52:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:52:22 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:52:23 GMT
COPY dir:fcea21daaad748df5672e8517505782b30d2c53d6febb830378b77388dd947d6 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:52:23 GMT
COPY dir:fcea21daaad748df5672e8517505782b30d2c53d6febb830378b77388dd947d6 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:52:23 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:48:52Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:48:52Z" "architecture"="x86_64" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:48:52Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:25:08 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Thu, 16 Jul 2026 00:25:09 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:25:11 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 00:25:11 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 00:25:11 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Thu, 16 Jul 2026 00:25:11 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Thu, 16 Jul 2026 00:25:11 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=12.3.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Thu, 16 Jul 2026 00:25:11 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Thu, 16 Jul 2026 00:25:11 GMT
ARG MARIADB_VERSION=12.3.2
# Thu, 16 Jul 2026 00:25:11 GMT
ENV MARIADB_VERSION=12.3.2
# Thu, 16 Jul 2026 00:25:32 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	microdnf install -y galera-4 rsync grep gawk iproute coreutils-single findutils tar lsof socat; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Thu, 16 Jul 2026 00:25:32 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 00:25:32 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 00:25:32 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Thu, 16 Jul 2026 00:25:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 00:25:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:25:32 GMT
USER mysql
# Thu, 16 Jul 2026 00:25:32 GMT
EXPOSE map[3306/tcp:{}]
# Thu, 16 Jul 2026 00:25:32 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:c7288023ded975bbfebf94654b2abd0529e40b52fa589ee42fa73afc0e6c0670`  
		Last Modified: Wed, 15 Jul 2026 06:55:17 GMT  
		Size: 34.9 MB (34898991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2900ebdb2113e88d58d74788c86239a1c6eeccab30184f066b5aaa4d5a04d91`  
		Last Modified: Thu, 16 Jul 2026 00:25:53 GMT  
		Size: 4.8 KB (4761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:debf8ea03079794ae74e6cbcb8548ef6ecbfa33bb725b535e0454b0e4d4fbbee`  
		Last Modified: Thu, 16 Jul 2026 00:25:53 GMT  
		Size: 2.2 MB (2235884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9750649bdd73c848c84a4ca1e9400209290f0e09b185c85fb1ca946fe05ec66`  
		Last Modified: Thu, 16 Jul 2026 00:25:53 GMT  
		Size: 10.1 MB (10068498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf559dd693ef42af1310d3f49ee8ad463c87a26e89c91563bb2b6e441139d73e`  
		Last Modified: Thu, 16 Jul 2026 00:25:53 GMT  
		Size: 301.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9955d944cf424af117bd8093309511686b8a236adb24ae84fb4873ca11a733c`  
		Last Modified: Thu, 16 Jul 2026 00:25:54 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9615dad2ea29d6db868b291deba72ee66a63c077d75344c8cc538220781da6`  
		Last Modified: Thu, 16 Jul 2026 00:25:57 GMT  
		Size: 117.5 MB (117523525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54af669257fea49c36278a40bdab13625eaa7b11995a878022a4e06a68ae535`  
		Last Modified: Thu, 16 Jul 2026 00:25:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4f7ba8b552cf78e1474bd3716a8cde9aa3822e4f9e04368b7db76b944cb816`  
		Last Modified: Thu, 16 Jul 2026 00:25:55 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52956a70dafec6aad20652bcb24eeafb77bf845378e60022d4bdea027bd75e8e`  
		Last Modified: Thu, 16 Jul 2026 00:25:55 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:e066f8a3ca059084659f3f97084cecbcc49f5dc152ed3a554eea223226a24ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4934732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6d2ec5202220b78c45c237298ee7f7f0bc4f12ed485089a1352f7fa5eaa497`

```dockerfile
```

-	Layers:
	-	`sha256:7868afbed0b5301a29b2da59e7d31981143fca8b5b5f625cd22d802fc245c2de`  
		Last Modified: Thu, 16 Jul 2026 00:25:53 GMT  
		Size: 4.9 MB (4899750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c145f7f7da9cd518fc12c1529e02614852ff11aedfb66fa7d29ca643b582bb15`  
		Last Modified: Thu, 16 Jul 2026 00:25:53 GMT  
		Size: 35.0 KB (34982 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-ubi` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:ce96444ea5fce404406295465e07b33f1b33db37196f5a8de6e4b4c268c34bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165060191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cd8693be766baac6dc145ccaade604996e2ac95afa09202161ce92c033cce45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL io.openshift.expose-services=""
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 20 Jul 2026 21:07:32 GMT
ENV container oci
# Mon, 20 Jul 2026 21:07:33 GMT
COPY dir:62b4a42eb40600c59bfd1fd54712a84c802a4e9884ee9756642eb56fa9e3dded in /      
# Mon, 20 Jul 2026 21:07:33 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 20 Jul 2026 21:07:33 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 21:07:33 GMT
COPY dir:9e3ac7ef784ea1786b4c0db58729498372dfbd1d076c9d076141fd7f15208171 in /usr/share/buildinfo/      
# Mon, 20 Jul 2026 21:07:33 GMT
COPY dir:9e3ac7ef784ea1786b4c0db58729498372dfbd1d076c9d076141fd7f15208171 in /root/buildinfo/      
# Mon, 20 Jul 2026 21:07:34 GMT
LABEL "org.opencontainers.image.created"="2026-07-20T21:07:11Z" "org.opencontainers.image.revision"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "build-date"="2026-07-20T21:07:11Z" "architecture"="aarch64" "vcs-ref"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "vcs-type"="git" "release"="1784581369"org.opencontainers.image.created=2026-07-20T21:07:11Z,org.opencontainers.image.revision=71f84d0717d42d49af1ce4d67019f56edf8b1f68
# Tue, 21 Jul 2026 17:03:16 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 21 Jul 2026 17:03:18 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:03:21 GMT
ENV GOSU_VERSION=1.19
# Tue, 21 Jul 2026 17:03:21 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 21 Jul 2026 17:03:21 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 21 Jul 2026 17:03:21 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 21 Jul 2026 17:03:21 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=12.3.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 21 Jul 2026 17:03:21 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 21 Jul 2026 17:03:21 GMT
ARG MARIADB_VERSION=12.3.2
# Tue, 21 Jul 2026 17:03:21 GMT
ENV MARIADB_VERSION=12.3.2
# Tue, 21 Jul 2026 17:03:46 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	microdnf install -y galera-4 rsync grep gawk iproute coreutils-single findutils tar lsof socat; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 21 Jul 2026 17:03:46 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Jul 2026 17:03:46 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 21 Jul 2026 17:03:46 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 21 Jul 2026 17:03:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 17:03:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Jul 2026 17:03:46 GMT
USER mysql
# Tue, 21 Jul 2026 17:03:46 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 21 Jul 2026 17:03:46 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:9e87f0b05623e42064eff2c03f371c8ad59cb9096807807d8d149c97eb66a9e5`  
		Last Modified: Mon, 20 Jul 2026 21:53:27 GMT  
		Size: 33.0 MB (33038839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64a542067f86a65a593d3023459d9b5d2ed67b7f2b4bf866f5f03f9d3819759`  
		Last Modified: Tue, 21 Jul 2026 17:04:08 GMT  
		Size: 4.8 KB (4759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d238c1ff6fb0e5e2cd9e27c7600b1111ea946af3f50f5c0df4d8e702bc7e469`  
		Last Modified: Tue, 21 Jul 2026 17:04:09 GMT  
		Size: 2.2 MB (2230884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29bea27de7ed663820e960fbf182d8fde712f3272d5a286e521ae49b1aba4001`  
		Last Modified: Tue, 21 Jul 2026 17:04:09 GMT  
		Size: 9.9 MB (9864507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c377075d0adc79b60f6d5458ce6fa6aee1af98b27076fd4c9818481f178ce6e`  
		Last Modified: Tue, 21 Jul 2026 17:04:08 GMT  
		Size: 301.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103898dd649ca3bc50ab9833ca301fca7d7dd61c95650b1fac4f1d81baaad505`  
		Last Modified: Tue, 21 Jul 2026 17:04:10 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0574afcd122001846a9db1c12b53260bbadb8c58727b3fffd0f3d8b7823f0fd4`  
		Last Modified: Tue, 21 Jul 2026 17:04:13 GMT  
		Size: 119.9 MB (119907932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed17d1ef1d2d48717a30dbdf26723dc55113ff008973260b1b6113fe47ac2984`  
		Last Modified: Tue, 21 Jul 2026 17:04:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52bbd83f605e6693a0225d5f5017221f792c75036e9ab55cf7ad017b2975e8b9`  
		Last Modified: Tue, 21 Jul 2026 17:04:10 GMT  
		Size: 4.0 KB (4030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b211b3a060fe208ef7716b2a4980e69352c7fadb23a94c7d5e77a191062adfed`  
		Last Modified: Tue, 21 Jul 2026 17:04:11 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:0e2ea88fe153b97e540dcffda67e16bc2c5de955dd8cb116922a649120dde4e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5253441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a683c54cc9df3f482391149b39fe7ca15f62829a3a3f72fb4ac27dc752c71be1`

```dockerfile
```

-	Layers:
	-	`sha256:82eb3bf0aa52f31b05ce64bcb6425887025048a09def033f446f999361d8f449`  
		Last Modified: Tue, 21 Jul 2026 17:04:09 GMT  
		Size: 5.2 MB (5218262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ed8a461c54bf39bda70828a9588b2ba910f5e74be12dd23792df70225d5a330`  
		Last Modified: Tue, 21 Jul 2026 17:04:09 GMT  
		Size: 35.2 KB (35179 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-ubi` - linux; ppc64le

```console
$ docker pull mariadb@sha256:16ae881421614f352d9f7bc939a4a61fbdfe7e75a42c33724821b3cd2a8403b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.7 MB (182689731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f01700a2880d7736672ebd1144fd0096d8dde8131f0ef31643bd654f153916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL io.openshift.expose-services=""
# Mon, 20 Jul 2026 21:10:41 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 20 Jul 2026 21:10:41 GMT
ENV container oci
# Mon, 20 Jul 2026 21:10:41 GMT
COPY dir:486c188ec489f585250b063e77f54577b4fcf90bf07fe8ac893420971b0ec8ed in /      
# Mon, 20 Jul 2026 21:10:41 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 20 Jul 2026 21:10:41 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 21:10:41 GMT
COPY dir:1529365045deeb3e3148761dba002be739f48b987d287c6ea4004bcf6f239911 in /usr/share/buildinfo/      
# Mon, 20 Jul 2026 21:10:41 GMT
COPY dir:1529365045deeb3e3148761dba002be739f48b987d287c6ea4004bcf6f239911 in /root/buildinfo/      
# Mon, 20 Jul 2026 21:10:42 GMT
LABEL "org.opencontainers.image.created"="2026-07-20T21:10:24Z" "org.opencontainers.image.revision"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "build-date"="2026-07-20T21:10:24Z" "architecture"="ppc64le" "vcs-ref"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "vcs-type"="git" "release"="1784581369"org.opencontainers.image.created=2026-07-20T21:10:24Z,org.opencontainers.image.revision=71f84d0717d42d49af1ce4d67019f56edf8b1f68
# Tue, 21 Jul 2026 17:02:12 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 21 Jul 2026 17:02:17 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:02:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 21 Jul 2026 17:02:26 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 21 Jul 2026 17:02:27 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 21 Jul 2026 17:02:27 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 21 Jul 2026 17:02:27 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=12.3.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 21 Jul 2026 17:02:27 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 21 Jul 2026 17:02:27 GMT
ARG MARIADB_VERSION=12.3.2
# Tue, 21 Jul 2026 17:02:27 GMT
ENV MARIADB_VERSION=12.3.2
# Tue, 21 Jul 2026 17:03:27 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	microdnf install -y galera-4 rsync grep gawk iproute coreutils-single findutils tar lsof socat; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 21 Jul 2026 17:03:27 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Jul 2026 17:03:28 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 21 Jul 2026 17:03:28 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 21 Jul 2026 17:03:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 17:03:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Jul 2026 17:03:28 GMT
USER mysql
# Tue, 21 Jul 2026 17:03:28 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 21 Jul 2026 17:03:28 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:d680386524b7132d3758999921708dfa4704f315f2416aed5ab9cca03ee6b05d`  
		Last Modified: Tue, 21 Jul 2026 00:15:53 GMT  
		Size: 39.0 MB (39003051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5b1b909844c12d9a20de503f451e3d3335cfbf760a5763a9a5280939d70759`  
		Last Modified: Tue, 21 Jul 2026 17:04:18 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95523d6d8187a5996aad4215c6f42cb6603454f440906b73dabdb377f2394321`  
		Last Modified: Tue, 21 Jul 2026 17:04:19 GMT  
		Size: 2.3 MB (2260626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef24c36d0d4c46395d5b19476619910a00066d397e730bc70e9a1ad6f36eb749`  
		Last Modified: Tue, 21 Jul 2026 17:04:20 GMT  
		Size: 10.5 MB (10541374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ddb9421fcbc98773e22245c094d8c1cc5c8536546ac02da028373478eb2fdb3`  
		Last Modified: Tue, 21 Jul 2026 17:04:18 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f64a639675e3bdce41e4809041075d5983311e3cfccb4aea8febcc3de9d7ba7`  
		Last Modified: Tue, 21 Jul 2026 17:04:20 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942dbb2262aa19b34b0066c99ca86267002d6b240cf5686a29818947c7dc50b7`  
		Last Modified: Tue, 21 Jul 2026 17:04:23 GMT  
		Size: 130.9 MB (130866646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681ba8633fbc2ba27bbf29fc56fd45188cb1d29c7e6866b69b73d804f6ec1a51`  
		Last Modified: Tue, 21 Jul 2026 17:04:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c07f1772401d89a7322737a2fc58c1c8ebc5e4235fa87579f8bffde68ca15b5`  
		Last Modified: Tue, 21 Jul 2026 17:04:21 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873bf4c38f8337fb3b9d15c7b7328d3852db7f7047b26d1a22a5abba1be4728d`  
		Last Modified: Tue, 21 Jul 2026 17:04:21 GMT  
		Size: 8.5 KB (8491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:0866d0aba958911a0680311caf7eb04c0e36a906f35a1092c9972322d9ec17bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d89816e6fee51e2eab8bea7775e4d5494a718a3483e9e9a08caa903daa1f414`

```dockerfile
```

-	Layers:
	-	`sha256:3ddd8d332d1d2eab9dcbb618327d2c8aba8e50356ef199fad803b9d071025238`  
		Last Modified: Tue, 21 Jul 2026 17:04:19 GMT  
		Size: 5.2 MB (5207368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec903231b895061d41be5c3f7c2522de06d0c16391eeb5ff4e82876510597637`  
		Last Modified: Tue, 21 Jul 2026 17:04:18 GMT  
		Size: 34.3 KB (34253 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-ubi` - linux; s390x

```console
$ docker pull mariadb@sha256:69acd962767f38e9b595a03747f692772c8b4d6d704cb6e62d56efd7d462f75d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175586222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f0d522118c2031d9d83c7618b64066ff343028f061941f6928ad9865a03209e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL io.openshift.expose-services=""
# Mon, 20 Jul 2026 21:17:11 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 20 Jul 2026 21:17:11 GMT
ENV container oci
# Mon, 20 Jul 2026 21:17:12 GMT
COPY dir:a6976d9edd4931db01f54246b007db8821e070ff96271037dd495011b478ba3b in /      
# Mon, 20 Jul 2026 21:17:12 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 20 Jul 2026 21:17:12 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 21:17:12 GMT
COPY dir:d0e1923003a0e4f9e2e88ae4ff75844529b8365c177dd138fc02f1d5c0bc4ec5 in /usr/share/buildinfo/      
# Mon, 20 Jul 2026 21:17:12 GMT
COPY dir:d0e1923003a0e4f9e2e88ae4ff75844529b8365c177dd138fc02f1d5c0bc4ec5 in /root/buildinfo/      
# Mon, 20 Jul 2026 21:17:12 GMT
LABEL "org.opencontainers.image.created"="2026-07-20T21:16:03Z" "org.opencontainers.image.revision"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "build-date"="2026-07-20T21:16:03Z" "architecture"="s390x" "vcs-ref"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "vcs-type"="git" "release"="1784581369"org.opencontainers.image.created=2026-07-20T21:16:03Z,org.opencontainers.image.revision=71f84d0717d42d49af1ce4d67019f56edf8b1f68
# Tue, 21 Jul 2026 16:53:50 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 21 Jul 2026 16:53:51 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 21 Jul 2026 16:53:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 21 Jul 2026 16:53:56 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 21 Jul 2026 16:53:56 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 21 Jul 2026 16:53:56 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 21 Jul 2026 16:53:56 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=12.3.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 21 Jul 2026 16:53:56 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 21 Jul 2026 16:53:56 GMT
ARG MARIADB_VERSION=12.3.2
# Tue, 21 Jul 2026 16:53:56 GMT
ENV MARIADB_VERSION=12.3.2
# Tue, 21 Jul 2026 16:54:19 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	microdnf install -y galera-4 rsync grep gawk iproute coreutils-single findutils tar lsof socat; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 21 Jul 2026 16:54:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Jul 2026 16:54:19 GMT
# ARGS: MARIADB_VERSION=12.3.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 21 Jul 2026 16:54:19 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 21 Jul 2026 16:54:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 16:54:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Jul 2026 16:54:19 GMT
USER mysql
# Tue, 21 Jul 2026 16:54:19 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 21 Jul 2026 16:54:19 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:8f200b9c901c53267e3af6f18a54f6038f0d14c580dd6d30d165b125119c4f1c`  
		Last Modified: Tue, 21 Jul 2026 00:15:45 GMT  
		Size: 34.7 MB (34728302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce060635f93b24107028c0f7183daaf3498872c19da09e224ef6aed0a8d838d`  
		Last Modified: Tue, 21 Jul 2026 16:54:55 GMT  
		Size: 4.8 KB (4759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ad2280a056057d821f2017dc02a115e283620fc20870fda2cfc845b2190ae9`  
		Last Modified: Tue, 21 Jul 2026 16:54:55 GMT  
		Size: 2.2 MB (2239867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c0a632d5126b227858b992a4bc34070519b264a6b3e0335b7f03a7544ef51f`  
		Last Modified: Tue, 21 Jul 2026 16:54:55 GMT  
		Size: 10.2 MB (10206489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd60d6538eed818a0540b9c5e649d17b24cef4ce77eb39e115046949e349c8b`  
		Last Modified: Tue, 21 Jul 2026 16:54:55 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffe7011c418a3f4f3788197fd0540beb5e07a56b3ffe3be7ab16429955baf77`  
		Last Modified: Tue, 21 Jul 2026 16:54:57 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc858bbfe7d84035223ce381c22076e824a3824da4a9ef0bce41642cf95038a`  
		Last Modified: Tue, 21 Jul 2026 16:54:59 GMT  
		Size: 128.4 MB (128393536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8089e0af7ea5dbe1e0e18dd710694ef53448c919778df9f257c769c3d9742d`  
		Last Modified: Tue, 21 Jul 2026 16:54:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce456cc48cb885b7eea55fd15ed952d21e9c6fc25cc0404abaae1c0b2b160f01`  
		Last Modified: Tue, 21 Jul 2026 16:54:57 GMT  
		Size: 4.0 KB (4029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47ff2f3da4afc22b2d24b8bb80860790c6d0337d17a34fcf9c2fc54c28a7d62`  
		Last Modified: Tue, 21 Jul 2026 16:54:58 GMT  
		Size: 8.5 KB (8489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:23425c15074ac55b080bd0ca7089f7f769ad59fa8fc133d30802d3f69975b286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5246251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2e85d4f217b64841d56b4da31ea303fabf090ad2937841c1c740d2bae44f69`

```dockerfile
```

-	Layers:
	-	`sha256:6932edf0eaca7106e69b334fcf3c366cdc99888cd7efb994e7528ce2552bc6f8`  
		Last Modified: Tue, 21 Jul 2026 16:54:56 GMT  
		Size: 5.2 MB (5211269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:860a8c1ee85fd6fcb71deca30135dcbade858cda75ddf4f36213af37d7a5537d`  
		Last Modified: Tue, 21 Jul 2026 16:54:56 GMT  
		Size: 35.0 KB (34982 bytes)  
		MIME: application/vnd.in-toto+json

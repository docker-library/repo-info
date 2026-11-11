## `mariadb:13-ubi`

```console
$ docker pull mariadb@sha256:b6cd3135058c723ca84e6a5f606cbb92ad811809370913bf565fa513530dc0fa
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
$ docker pull mariadb@sha256:03ea66fbae54e6081b70a12cf67b36684582cbf1b54af6b7026a2dbcb4519429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165762662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8744d18b49c1081bdca74521bf2a3bbaca082c4f7f4c986fb71929d2eac42ddb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:26:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:26:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:26:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:26:07 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:26:07 GMT
ENV container oci
# Mon, 09 Nov 2026 12:26:07 GMT
COPY dir:de8dd738944ef6f5b4d97345e9a50f3fee83357444222ef69d5f7873b509f97e in /      
# Mon, 09 Nov 2026 12:26:07 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:26:08 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:26:08 GMT
COPY dir:2e9c6dae68dcfc921d3ed6e1432dcf31580e458a2773247f4b6f7a0702800b5c in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:26:08 GMT
COPY dir:2e9c6dae68dcfc921d3ed6e1432dcf31580e458a2773247f4b6f7a0702800b5c in /root/buildinfo/      
# Mon, 09 Nov 2026 12:26:08 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:25:43Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:25:43Z" "architecture"="x86_64" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:25:43Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 21:49:03 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 10 Nov 2026 21:49:05 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:49:09 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:49:09 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:49:09 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 10 Nov 2026 21:49:09 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 10 Nov 2026 21:49:09 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=13.0.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 10 Nov 2026 21:49:09 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 10 Nov 2026 21:49:09 GMT
ARG MARIADB_VERSION=13.0.2
# Tue, 10 Nov 2026 21:49:09 GMT
ENV MARIADB_VERSION=13.0.2
# Tue, 10 Nov 2026 21:49:37 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 10 Nov 2026 21:49:37 GMT
VOLUME [/var/lib/mysql]
# Tue, 10 Nov 2026 21:49:37 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 10 Nov 2026 21:49:38 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 10 Nov 2026 21:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:49:38 GMT
USER mysql
# Tue, 10 Nov 2026 21:49:38 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 10 Nov 2026 21:49:38 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:69b57da00fac19111ae56640149ff52360565f228e0311da5314d5052ae6a477`  
		Last Modified: Mon, 09 Nov 2026 14:54:21 GMT  
		Size: 34.9 MB (34932314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cfeaa86e8e540c1bc8ef292cdeea8d38cf6a5696d14b1f32d5ad60a2ed8d8b8`  
		Last Modified: Tue, 10 Nov 2026 21:49:57 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c487aab4867aae38326a10d9712ff17ee7482894aaca324019a9efd4ff50f98`  
		Last Modified: Tue, 10 Nov 2026 21:49:57 GMT  
		Size: 2.3 MB (2289408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52038ca2fd1caa56d644f9f8996246487fc2b5ef439fc81aac4806dbb6576f6b`  
		Last Modified: Tue, 10 Nov 2026 21:49:57 GMT  
		Size: 10.2 MB (10161094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b67de6f2a7e0e3017be87828e7b8c450eeaff654dd7c211438af73cbff24fd3`  
		Last Modified: Tue, 10 Nov 2026 21:49:57 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35af1edd87d294d1382469b701f1bcc3076f92525377c4cdb462745109ec8d91`  
		Last Modified: Tue, 10 Nov 2026 21:49:58 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960cfadeb87f499ebbb98b25bac113cc2a77806c7efcbc1a5eed3db1f5043d67`  
		Last Modified: Tue, 10 Nov 2026 21:50:00 GMT  
		Size: 118.4 MB (118361817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8dba43c123b5b9f6cb7e1b1d9f32a057bda7f07e5edc9e7fe2ce971a954697c`  
		Last Modified: Tue, 10 Nov 2026 21:49:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82680c26290ca8badeba7a672ee812069f9952d650be892f55dabb628da3f5a`  
		Last Modified: Tue, 10 Nov 2026 21:49:58 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c7f43b7ed2ec00a1623df5e2374250a714cbea024d90254d6dc5651a7525ce`  
		Last Modified: Tue, 10 Nov 2026 21:49:59 GMT  
		Size: 8.5 KB (8489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:13-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:7416ec8da316ee1c02db2d53c1d4d9470c8c72cc421dc03ef0b8a9c875e04313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4933107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b7458377d8dce8bb2247b3fbaca59ba04cae8d98fdb286a05232dd0a53ff899`

```dockerfile
```

-	Layers:
	-	`sha256:f20dbda2683b652fb1d2be6060573cbc25d75b071a26629abfba46ee197d9332`  
		Last Modified: Tue, 10 Nov 2026 21:49:57 GMT  
		Size: 4.9 MB (4899159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11a53319b5c56f54b82ea1c4c60a2af996d860dff22c42d7122954ef1b7e0eea`  
		Last Modified: Tue, 10 Nov 2026 21:49:57 GMT  
		Size: 33.9 KB (33948 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:13-ubi` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7e2440b237c6e6a4dc835e182d7ce7df5cb2a3ce96ca7d56c5491bfe44d4a923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161466480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc2a0e71edef997345e110545480c7264d8abc540e8e74b52d6bf5b961561609`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:30:50 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:30:50 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:30:50 GMT
ENV container oci
# Mon, 09 Nov 2026 12:30:51 GMT
COPY dir:bf003691994de32df5104daabfbd9232c3fc6127a3d2eea464e7f865a51f97b3 in /      
# Mon, 09 Nov 2026 12:30:51 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:30:51 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:30:52 GMT
COPY dir:e41cb72f62e144ba0400c303aa4242e38a9ceaff1fdb33d5559f5ebc8f63325d in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:30:52 GMT
COPY dir:e41cb72f62e144ba0400c303aa4242e38a9ceaff1fdb33d5559f5ebc8f63325d in /root/buildinfo/      
# Mon, 09 Nov 2026 12:30:52 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:30:22Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:30:22Z" "architecture"="aarch64" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:30:22Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 21:52:09 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 10 Nov 2026 21:52:11 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:52:15 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:52:15 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:52:15 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 10 Nov 2026 21:52:15 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 10 Nov 2026 21:52:15 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=13.0.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 10 Nov 2026 21:52:15 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 10 Nov 2026 21:52:15 GMT
ARG MARIADB_VERSION=13.0.2
# Tue, 10 Nov 2026 21:52:15 GMT
ENV MARIADB_VERSION=13.0.2
# Tue, 10 Nov 2026 21:53:01 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 10 Nov 2026 21:53:01 GMT
VOLUME [/var/lib/mysql]
# Tue, 10 Nov 2026 21:53:01 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 10 Nov 2026 21:53:01 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 10 Nov 2026 21:53:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:53:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:53:01 GMT
USER mysql
# Tue, 10 Nov 2026 21:53:01 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 10 Nov 2026 21:53:01 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:79d5de29018018708e9112a663bf8efe877acdd3d07ba720507df4eef16fb72d`  
		Last Modified: Mon, 09 Nov 2026 14:54:21 GMT  
		Size: 33.1 MB (33060918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:382fb481ccf8314d514b2b5a6f624fccd0381f6b254db4cbd67614c0ad3bef0e`  
		Last Modified: Tue, 10 Nov 2026 21:53:23 GMT  
		Size: 4.8 KB (4759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8fc4e951b60b1c5405ffad3ff36245b47a1a8a67643137c88dd829dfa1cfec3`  
		Last Modified: Tue, 10 Nov 2026 21:53:23 GMT  
		Size: 2.3 MB (2282850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4dab270c4e9d2c74746bd376346da3bc2b73125dd21f714e7a00fbbd47bf4c`  
		Last Modified: Tue, 10 Nov 2026 21:53:23 GMT  
		Size: 10.0 MB (9953175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6726a4f42c47c97e81d855c8ffee5481e4027962b3361632818c1a246a279cb1`  
		Last Modified: Tue, 10 Nov 2026 21:53:23 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c2908169862f8f31ca9bb9198e1cd9f4931fecd6433a275fa62a9c37fe6cb0`  
		Last Modified: Tue, 10 Nov 2026 21:53:24 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b7049f6494340f9375577adf20f959388ec4786d31db670717539b7ea9d2a4`  
		Last Modified: Tue, 10 Nov 2026 21:53:26 GMT  
		Size: 116.2 MB (116151504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1860d8c4c9fb20d4fadf7dd8bcfc54c925e0966401c525aeca107fb3e1df10cb`  
		Last Modified: Tue, 10 Nov 2026 21:53:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55eb63360f7572b11d6c4c338cbf3168ce9b395ee16a1444c397a0cec46bf05`  
		Last Modified: Tue, 10 Nov 2026 21:53:24 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb20ec900c1195413ada000d9dfe62beef9309b96fe3c1dc361805ab344b4bfc`  
		Last Modified: Tue, 10 Nov 2026 21:53:25 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:13-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:c5e762298aae39e3a1820943beee07f5068b33ccfe1a84451899422563d29ed8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4933362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3948514ac87be7cd90047a0a5c3dbc17d68de7d17d39f88d2e0aad3dfad9d088`

```dockerfile
```

-	Layers:
	-	`sha256:02aea4cfe66553e40e2c77b289882124a4a97e30b916637aba7bc26a396f12be`  
		Last Modified: Tue, 10 Nov 2026 21:53:23 GMT  
		Size: 4.9 MB (4899240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce61b3f6b5f5bb955add07c1f86b291107505791e2c078bde8a94674e87f9622`  
		Last Modified: Tue, 10 Nov 2026 21:53:23 GMT  
		Size: 34.1 KB (34122 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:13-ubi` - linux; ppc64le

```console
$ docker pull mariadb@sha256:c4a53bf163c9bd292d2e4187f4c0fedc4f673318989080fa81905b104269092f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177056058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db88592d0e63ced4ec9d049b6c7acfb14d26d63e548daa94c8c50f92bff25d01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:40:30 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:40:30 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:40:30 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:40:30 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:40:30 GMT
ENV container oci
# Thu, 05 Nov 2026 07:40:30 GMT
COPY dir:ef0a5b3221286bc5da7ded1d6d73993149619ebbfa1eff48bd10630e811a62f3 in /      
# Thu, 05 Nov 2026 07:40:31 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:40:31 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:40:31 GMT
COPY dir:bc858c1c076be826efb9489bf63488f5dbdd270173dcfb63b9afab32a68c8beb in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:40:31 GMT
COPY dir:bc858c1c076be826efb9489bf63488f5dbdd270173dcfb63b9afab32a68c8beb in /root/buildinfo/      
# Thu, 05 Nov 2026 07:40:32 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:40:01Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:40:01Z" "architecture"="ppc64le" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:40:01Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Fri, 06 Nov 2026 10:53:15 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Fri, 06 Nov 2026 10:53:17 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Fri, 06 Nov 2026 10:53:22 GMT
ENV GOSU_VERSION=1.19
# Fri, 06 Nov 2026 10:53:22 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 06 Nov 2026 10:53:22 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Fri, 06 Nov 2026 10:55:41 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Fri, 06 Nov 2026 10:55:41 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=13.0.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Fri, 06 Nov 2026 10:55:41 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 06 Nov 2026 10:55:41 GMT
ARG MARIADB_VERSION=13.0.2
# Fri, 06 Nov 2026 10:55:41 GMT
ENV MARIADB_VERSION=13.0.2
# Fri, 06 Nov 2026 10:57:21 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Fri, 06 Nov 2026 10:57:21 GMT
VOLUME [/var/lib/mysql]
# Fri, 06 Nov 2026 10:57:22 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 06 Nov 2026 10:57:22 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 06 Nov 2026 10:57:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 06 Nov 2026 10:57:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Nov 2026 10:57:23 GMT
USER mysql
# Fri, 06 Nov 2026 10:57:23 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 06 Nov 2026 10:57:23 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:e2df2a13f2a2146cbf4edd81ddf04fddc43c45871b3c10eea6e38c08cdc09fc0`  
		Last Modified: Thu, 05 Nov 2026 12:26:21 GMT  
		Size: 39.1 MB (39077253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9af039d6397682cc7b55eb731635ad22dd59741af5e40fdcc9a0ed28ad07f1`  
		Last Modified: Fri, 06 Nov 2026 10:55:23 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca51243fa99864750a6ca553045bbc9092401b018b458970283237e61d802d40`  
		Last Modified: Fri, 06 Nov 2026 10:55:23 GMT  
		Size: 2.3 MB (2314634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2be2c12d1ca2e4dc09da4faab1b52a35fa677a80cb146ec356de4760b04746`  
		Last Modified: Fri, 06 Nov 2026 10:55:24 GMT  
		Size: 10.6 MB (10631415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65cda57498f29eb68873b737cfdfa1d357000ef21ffc906965965b84354fae8`  
		Last Modified: Fri, 06 Nov 2026 10:55:23 GMT  
		Size: 301.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e021d2f6ee552e68e04b4afc542ff12a9cdc2e9baf2f47ad48334bddfa2b904c`  
		Last Modified: Fri, 06 Nov 2026 10:58:16 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f250685ab6bb3e87a81a75e21f005b8de8d14e33898d8e10a52436ec72e066dc`  
		Last Modified: Fri, 06 Nov 2026 10:58:19 GMT  
		Size: 125.0 MB (125014725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b5f6c949fb1b1fde4c50d130a3919b191b46c084c10cc1c48a173bb330f5b2`  
		Last Modified: Fri, 06 Nov 2026 10:58:16 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b8d0d511aece186da8536d17318a4edbb208f999da626c94bde759300379ef`  
		Last Modified: Fri, 06 Nov 2026 10:58:16 GMT  
		Size: 4.0 KB (4031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e89277978e75d2870ac417f4ed6b34995d8ade08263b8d01b1851fd8545920`  
		Last Modified: Fri, 06 Nov 2026 10:58:17 GMT  
		Size: 8.5 KB (8488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:13-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:8a7a2c0c54992a6c2df0880f8242f6b396956e81f39e4e7dcf1e6d3735b8c520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4922355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b51cc29d88617dc373bdf3b1338a6e0cb77f3729e2747cde7b57c87c1954cc`

```dockerfile
```

-	Layers:
	-	`sha256:cb94bfe8518ecbf5adfc7f2b1c53faacd67ac5d6eb51edebd64fc1bad8ed51b5`  
		Last Modified: Fri, 06 Nov 2026 10:58:16 GMT  
		Size: 4.9 MB (4888350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a6845a72e0bebdf916bbdfde41674608b2a7c3e7edde202fd30abb28de0c112`  
		Last Modified: Fri, 06 Nov 2026 10:58:16 GMT  
		Size: 34.0 KB (34005 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:13-ubi` - linux; s390x

```console
$ docker pull mariadb@sha256:23a111cd77dad123c670a19ff123803e4503b6faa577f4dd4e34405bff898c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171840382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59660e98a58bcf181774b644ba27fa353c2873604972416833640d2058ff347`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:45:22 GMT
ENV container oci
# Mon, 09 Nov 2026 12:45:23 GMT
COPY dir:d12d65b9ef1c46718ee21196fcc3025bc337aeb7a761a8432166375e120770b8 in /      
# Mon, 09 Nov 2026 12:45:23 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:45:23 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:45:24 GMT
COPY dir:86c9bd055e7df245798740ba1f2bd92a4e2862708391b43aa25b1e3890a08f1e in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:45:24 GMT
COPY dir:86c9bd055e7df245798740ba1f2bd92a4e2862708391b43aa25b1e3890a08f1e in /root/buildinfo/      
# Mon, 09 Nov 2026 12:45:24 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:44:00Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:44:00Z" "architecture"="s390x" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:44:00Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 23:01:08 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Tue, 10 Nov 2026 23:01:15 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Tue, 10 Nov 2026 23:01:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 23:01:31 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 23:01:33 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Tue, 10 Nov 2026 23:02:48 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Tue, 10 Nov 2026 23:02:48 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=13.0.2 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Tue, 10 Nov 2026 23:02:48 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 10 Nov 2026 23:02:48 GMT
ARG MARIADB_VERSION=13.0.2
# Tue, 10 Nov 2026 23:02:48 GMT
ENV MARIADB_VERSION=13.0.2
# Tue, 10 Nov 2026 23:04:11 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-10 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export 7D8D15CBFC4E62688591FB2633D98517E37ED158 > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm --output /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-10.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-10.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-10.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf install -y tzdata ; 	microdnf install --enablerepo=epel --disablerepo=mariadb --releasever=10.1 -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-galera-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Tue, 10 Nov 2026 23:04:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 10 Nov 2026 23:04:12 GMT
# ARGS: MARIADB_VERSION=13.0.2
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 10 Nov 2026 23:04:12 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 10 Nov 2026 23:04:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 23:04:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 23:04:14 GMT
USER mysql
# Tue, 10 Nov 2026 23:04:14 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 10 Nov 2026 23:04:14 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:06080e5ed1e7453afb1c4cce82c124613221fc6e9b9184d3a4d5fd1c6a308b4f`  
		Last Modified: Mon, 09 Nov 2026 18:21:56 GMT  
		Size: 34.8 MB (34761006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f84d995f3348c731a89f2d7baa534315e86e02ffbf20371ff0968b6d6c9ecfc`  
		Last Modified: Tue, 10 Nov 2026 23:04:10 GMT  
		Size: 4.8 KB (4758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7204fa9540b2d3e61b166511ee7dc59a097a246199df2a3b2a27144555efc6`  
		Last Modified: Tue, 10 Nov 2026 23:04:11 GMT  
		Size: 2.3 MB (2292585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11cf67c8dfb9d0079518f53c970a7a86d82f2ec7b1baf9b2aace7da2601a32c1`  
		Last Modified: Tue, 10 Nov 2026 23:04:11 GMT  
		Size: 10.3 MB (10299186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0320d4ae45a8d282e66826bbb96304f98bf51924eece5b5e7852907ffbef40`  
		Last Modified: Tue, 10 Nov 2026 23:04:10 GMT  
		Size: 299.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ef1653c8550060b728a4b64a9e937ec5a155b176cbdbfdf3d091cab370a3d2`  
		Last Modified: Tue, 10 Nov 2026 23:05:13 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9e56ee06628f03c9a5eb2e17b3ccc58ee76c4c14d7559fe19fe9582aafab10`  
		Last Modified: Tue, 10 Nov 2026 23:05:20 GMT  
		Size: 124.5 MB (124469575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d43ff9615fd256b9c81d8b89241411fafa6cb98adda03c876fef9572dc2ad6a8`  
		Last Modified: Tue, 10 Nov 2026 23:05:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a55e5b107c6400ffb8d5b21aaebbe8bc250b806b18181094522514652ce9fd`  
		Last Modified: Tue, 10 Nov 2026 23:05:13 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2040a46dc0903906fc943ea8565bbb53e38fb61a5744a0f1feeeee2e0645d3a`  
		Last Modified: Tue, 10 Nov 2026 23:05:16 GMT  
		Size: 8.5 KB (8487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:13-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:38c5ed9d1ccbc9d61da2dab7f64a2c5cee75b2642b47b6c63d68229395fa45c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4925419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1d5d210b1f169fbd2bd3372c80bc450c883e4232b6354ec20cf503ba641f11`

```dockerfile
```

-	Layers:
	-	`sha256:8ef330e1a9f38652e6e0d045c7d1ced12f9a09058933b58afc86743422e02092`  
		Last Modified: Tue, 10 Nov 2026 23:05:14 GMT  
		Size: 4.9 MB (4892271 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef4133112bd0e8409e7f3b70505007f9279cc35479ea157691c5aaa13fba80ac`  
		Last Modified: Tue, 10 Nov 2026 23:05:12 GMT  
		Size: 33.1 KB (33148 bytes)  
		MIME: application/vnd.in-toto+json

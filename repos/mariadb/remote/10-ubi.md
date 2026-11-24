## `mariadb:10-ubi`

```console
$ docker pull mariadb@sha256:172acae684beb30ef49e1f3e3cad6dfe989718791f3f0d8e67acdef1a0635cd1
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
$ docker pull mariadb@sha256:72334898dc82cb91cca05140da26b6198d0caa8b3e875d210a7dd5b4c304d42d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162650765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0dae74ac80d328279cd649d90f2841e1924d4ce42d8a10b7e5c2403e436ef45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:09:20 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Mon, 23 Nov 2026 22:09:23 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:09:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 22:09:26 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 22:09:26 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Mon, 23 Nov 2026 22:09:26 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Mon, 23 Nov 2026 22:09:26 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=10.11.19 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Mon, 23 Nov 2026 22:09:26 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 23 Nov 2026 22:09:26 GMT
ARG MARIADB_VERSION=10.11.19
# Mon, 23 Nov 2026 22:09:26 GMT
ENV MARIADB_VERSION=10.11.19
# Mon, 23 Nov 2026 22:09:51 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export FF8AD1344597106ECE813B918A3872BF3228467C > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm --output /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-9.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-9.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf reinstall -y tzdata ; 	microdnf install -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Mon, 23 Nov 2026 22:09:51 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 22:09:51 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 22:09:51 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 23 Nov 2026 22:09:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 22:09:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 22:09:51 GMT
USER mysql
# Mon, 23 Nov 2026 22:09:51 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 23 Nov 2026 22:09:51 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff542ca29d7981b16d0cb304fc167214d192917ead2273640d616ef13873dbe0`  
		Last Modified: Mon, 23 Nov 2026 22:10:09 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515bf9dddadfbdb6e9ed5084e91179e4c2ea9029079b593dd9839538f9d4d9cb`  
		Last Modified: Mon, 23 Nov 2026 22:10:09 GMT  
		Size: 2.0 MB (1983979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee736d2da86005915d1bbbd07ea7171a6d254e20bb278e117900aca7e876cfd`  
		Last Modified: Mon, 23 Nov 2026 22:10:09 GMT  
		Size: 8.3 MB (8310166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78cd249968c1dfa0dd98d4527021c15df1be79855cd1e126b821accfa1643a67`  
		Last Modified: Mon, 23 Nov 2026 22:10:09 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317429b1f8997f14432a81969c504b7ca3482d31fe0b3595bb3e1882072e0130`  
		Last Modified: Mon, 23 Nov 2026 22:10:10 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea3328339dd792a7a46752f32fb5ed68393b19c88a7b8230102a891b0eb3d57`  
		Last Modified: Mon, 23 Nov 2026 22:10:13 GMT  
		Size: 111.7 MB (111691755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b4ee9c00121ebff7425b1c2c676113562e3994997435b8fa70b84102af1777`  
		Last Modified: Mon, 23 Nov 2026 22:10:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56931b9f21eb20d69126a52205f463f609528f7f77191467e2d221017a875135`  
		Last Modified: Mon, 23 Nov 2026 22:10:11 GMT  
		Size: 4.0 KB (4015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af3975ce51400371d0081c8422ae55690338542cb6c0c1043fa5f4ef9b4bd6`  
		Last Modified: Mon, 23 Nov 2026 22:10:12 GMT  
		Size: 8.5 KB (8460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:71ade54c2919703f001b88d66163430867e395433423773abb845be92f5969f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4754615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a6adab4fa83d4afcc56aa71662e370f813be600e2cc05ad921ceaa2dcfc8b2`

```dockerfile
```

-	Layers:
	-	`sha256:2ef956611574a814d3819ed88c7314a445eb4817335d430bffff04d9120088a7`  
		Last Modified: Mon, 23 Nov 2026 22:10:09 GMT  
		Size: 4.7 MB (4720746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa7c44390c54e4fd09a6c0db1c45408f4430009eb269e75b8610cb90f55e3772`  
		Last Modified: Mon, 23 Nov 2026 22:10:09 GMT  
		Size: 33.9 KB (33869 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-ubi` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:0672a67d0ef0fb0ed63e30b5314e3072251551eb7267b52043983072869b6b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158047289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ac0daa7ede8cd21fbb317c052131e002f70084aa4eed678e5d9e2eff66be58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:12:47 GMT
ENV container oci
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:2777349c454497d0bc88142806b0acc7931a2a02082de3b6e563fd8f4b29edfa in /      
# Fri, 20 Nov 2026 18:12:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:12:49 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:12:15Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:12:15Z" "architecture"="aarch64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:12:15Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:07:57 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Mon, 23 Nov 2026 22:08:00 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:08:04 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 22:08:04 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 22:08:04 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Mon, 23 Nov 2026 22:08:04 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Mon, 23 Nov 2026 22:08:04 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=10.11.19 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Mon, 23 Nov 2026 22:08:04 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 23 Nov 2026 22:08:04 GMT
ARG MARIADB_VERSION=10.11.19
# Mon, 23 Nov 2026 22:08:04 GMT
ENV MARIADB_VERSION=10.11.19
# Mon, 23 Nov 2026 22:08:30 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export FF8AD1344597106ECE813B918A3872BF3228467C > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm --output /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-9.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-9.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf reinstall -y tzdata ; 	microdnf install -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Mon, 23 Nov 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 22:08:30 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 22:08:30 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 23 Nov 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 22:08:30 GMT
USER mysql
# Mon, 23 Nov 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 23 Nov 2026 22:08:30 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d740a76ffd89932c0a7a67e126c7dd26e9e77cabcd03a82125661baa4c3d86e`  
		Last Modified: Mon, 23 Nov 2026 22:08:50 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b37d45a54403b8b16b1839995462eecfb5663e66eff291a9f685e4fe32bb09`  
		Last Modified: Mon, 23 Nov 2026 22:08:50 GMT  
		Size: 2.0 MB (1972182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fa71a5f149a33b6712f629a2b0e5b28d27cf2a488747350b7c379240a7e000`  
		Last Modified: Mon, 23 Nov 2026 22:08:50 GMT  
		Size: 7.0 MB (7041895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c285f34d3009491a6a4910c33f802fe164834376408ddfce57860accaa34d8f`  
		Last Modified: Mon, 23 Nov 2026 22:08:50 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640a27c27456e1d10e9f943c6d4329dec3f5cab78ada67f8e94428426868a460`  
		Last Modified: Mon, 23 Nov 2026 22:08:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5116c63b0bfa8e925d71b852d66f66a987c2a2e1f5c6499eafe9965e071d07e1`  
		Last Modified: Mon, 23 Nov 2026 22:08:54 GMT  
		Size: 110.3 MB (110311121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a849b35873bcac65056305e42e11d3aa1bea277cba3d92ac072245fcb32350a`  
		Last Modified: Mon, 23 Nov 2026 22:08:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77eb41cce96a0440c9ded15c7122dca431fe65f0fd105964a0f250b7508b4a18`  
		Last Modified: Mon, 23 Nov 2026 22:08:52 GMT  
		Size: 4.0 KB (4016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb9d1075c7c348f80c14ba4dca3840014de42ffb678ce91fe01a97e28ddb3c2`  
		Last Modified: Mon, 23 Nov 2026 22:08:53 GMT  
		Size: 8.5 KB (8459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:37a510986e5c3004a49a202731d45a51c6635b6b78420ef725654f4c033c3e22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4751825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd391401aeb297653787697f3a8741153bbdc59c865bc4a4cbd3a6bf771d7dca`

```dockerfile
```

-	Layers:
	-	`sha256:8bde5bf278ac855c34a34c0a768b9a529a4899f3f68be8c6741faa8c5762d786`  
		Last Modified: Mon, 23 Nov 2026 22:08:50 GMT  
		Size: 4.7 MB (4717775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0c2194e4735e9b6133c237b30283537a0c53d0ef9f3960fb1a97184168c8848`  
		Last Modified: Mon, 23 Nov 2026 22:08:50 GMT  
		Size: 34.0 KB (34050 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-ubi` - linux; ppc64le

```console
$ docker pull mariadb@sha256:1f8423ca28ac38e066baaacbfa9bf260031f8609dec2ae29ccf8b30c0ec59fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172693926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba11a965c84cab359fb44445875d7d8ef38c963d814f990909848b725e5cc63f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:21:53 GMT
ENV container oci
# Fri, 20 Nov 2026 18:21:53 GMT
COPY dir:9d42577db2dc9d97b6db090d2d65c35ca6b076e887552712746b7559e7eae01d in /      
# Fri, 20 Nov 2026 18:21:54 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:21:54 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:21:54 GMT
COPY dir:ab6ed5ccaae221eefc015f1cf511e671a90d35c952f4480f0970740c7b1f1a8b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:21:54 GMT
COPY dir:ab6ed5ccaae221eefc015f1cf511e671a90d35c952f4480f0970740c7b1f1a8b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:21:55 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:21:30Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:21:30Z" "architecture"="ppc64le" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:21:30Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:16:35 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Mon, 23 Nov 2026 22:16:39 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:16:44 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 22:16:44 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 22:18:48 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Mon, 23 Nov 2026 22:18:48 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Mon, 23 Nov 2026 22:18:48 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=10.11.19 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Mon, 23 Nov 2026 22:18:48 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 23 Nov 2026 22:18:48 GMT
ARG MARIADB_VERSION=10.11.19
# Mon, 23 Nov 2026 22:18:48 GMT
ENV MARIADB_VERSION=10.11.19
# Mon, 23 Nov 2026 22:19:30 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export FF8AD1344597106ECE813B918A3872BF3228467C > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm --output /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-9.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-9.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf reinstall -y tzdata ; 	microdnf install -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Mon, 23 Nov 2026 22:19:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 22:19:30 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 22:19:32 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 23 Nov 2026 22:19:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 22:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 22:19:32 GMT
USER mysql
# Mon, 23 Nov 2026 22:19:32 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 23 Nov 2026 22:19:32 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:c97b9a308c8eb9502e6d4ff0ae8c362b07bd35b8e0a0e3a4e8a1e495976591bc`  
		Last Modified: Sat, 21 Nov 2026 00:18:56 GMT  
		Size: 45.0 MB (45027256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852e094a8687d7debc5b104988a500420fadc6435d2877aed99e2fb9d7e37ec9`  
		Last Modified: Mon, 23 Nov 2026 22:18:31 GMT  
		Size: 4.8 KB (4761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3c6c9dc74c36a436e64260bf0d1aed1a7ab11c4557d912f6d6d06a12a742c4`  
		Last Modified: Mon, 23 Nov 2026 22:18:31 GMT  
		Size: 2.0 MB (1967473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b5699b6f7b9b345f23b8ead3f31401e28667feab28f912d390fced57edc747`  
		Last Modified: Mon, 23 Nov 2026 22:18:31 GMT  
		Size: 7.0 MB (7047836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb738e7c15ab54055293f4d853012650c61c8e9aa62a4bf44c0a1c76440cb786`  
		Last Modified: Mon, 23 Nov 2026 22:20:23 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56a61196cfaee9075ebee492f3438c45905895db26f6a514b03d4313893bc6bf`  
		Last Modified: Mon, 23 Nov 2026 22:20:26 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f494b353f16d13a52fb07d38e08474648cccfd78f1c0790ef84b14c8c87f974`  
		Last Modified: Mon, 23 Nov 2026 22:20:30 GMT  
		Size: 118.6 MB (118633341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5490905216e34a16a7097216e8f345df441cea5595a1647346c15eaf28cac1e5`  
		Last Modified: Mon, 23 Nov 2026 22:20:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757999380ecdf0bd88121d05bdd1f7e0c5ffcef56a8421a71448451f0fdaadd2`  
		Last Modified: Mon, 23 Nov 2026 22:20:27 GMT  
		Size: 4.0 KB (4014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398766013ac9c66da2d095fbfdac887b75aba443372807c8e91346fd1b48c0db`  
		Last Modified: Mon, 23 Nov 2026 22:20:28 GMT  
		Size: 8.5 KB (8459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:981323a6a9f0dc25765093b613af33b6e3c9d4c6f2ac3b044ff71979c2d06649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4747207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b96726065a2a93b3f2fe74b50e6b011f6160aea3313e119021f73e2d37e6a2`

```dockerfile
```

-	Layers:
	-	`sha256:147671521f639d6be19331b3491cd2cde37b532f3eea5c53ee2bb7f52bec9110`  
		Last Modified: Mon, 23 Nov 2026 22:20:27 GMT  
		Size: 4.7 MB (4713280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fd3a1c91adab1f4d67b43bafbbbfaea32eee3b1a60980b96793f0a4ad48e561`  
		Last Modified: Mon, 23 Nov 2026 22:20:26 GMT  
		Size: 33.9 KB (33927 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-ubi` - linux; s390x

```console
$ docker pull mariadb@sha256:8f5769339488865bfa4125ae92650e4d6bc2e9f583caf1b79ac279c790272ca6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159625405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161a53532b5c85b2d6409d38db6d3ee03c7ada2cbfdeb59fbcd0ab20e54f1a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:47:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:47:49 GMT
ENV container oci
# Fri, 20 Nov 2026 18:47:49 GMT
COPY dir:4860b72aebf06285c055212d0515db541664c99cacb0a5928bddfb8368bad1f4 in /      
# Fri, 20 Nov 2026 18:47:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:47:50 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:47:51 GMT
COPY dir:578ee725f27a0a02192213651b81dddb3f241dbd46fc05097b5828039995de43 in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:47:51 GMT
COPY dir:578ee725f27a0a02192213651b81dddb3f241dbd46fc05097b5828039995de43 in /root/buildinfo/      
# Fri, 20 Nov 2026 18:47:51 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:46:44Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:46:44Z" "architecture"="s390x" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:46:44Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:08:21 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Mon, 23 Nov 2026 22:08:23 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:08:27 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 22:08:27 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 22:08:30 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Mon, 23 Nov 2026 22:08:30 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Mon, 23 Nov 2026 22:08:30 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=10.11.19 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Mon, 23 Nov 2026 22:08:30 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 23 Nov 2026 22:08:30 GMT
ARG MARIADB_VERSION=10.11.19
# Mon, 23 Nov 2026 22:08:30 GMT
ENV MARIADB_VERSION=10.11.19
# Mon, 23 Nov 2026 22:08:54 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export FF8AD1344597106ECE813B918A3872BF3228467C > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm --output /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-9.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-9.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf reinstall -y tzdata ; 	microdnf install -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Mon, 23 Nov 2026 22:08:54 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 22:08:54 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 22:08:54 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 23 Nov 2026 22:08:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 22:08:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 22:08:54 GMT
USER mysql
# Mon, 23 Nov 2026 22:08:54 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 23 Nov 2026 22:08:54 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:12ee8f9b356a9697783bcbbc91605329f7064346789cdc657774072dc51daf3e`  
		Last Modified: Fri, 20 Nov 2026 19:55:28 GMT  
		Size: 38.7 MB (38653844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5554c3fa5581a9966716d5c59c74b1344076d00057e1830830ae46de6cda2a6`  
		Last Modified: Mon, 23 Nov 2026 22:09:24 GMT  
		Size: 4.8 KB (4761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10477c85a641f4f6a949d8436c34f70f9e328992a323bb437c844540431804ff`  
		Last Modified: Mon, 23 Nov 2026 22:09:24 GMT  
		Size: 2.0 MB (1988810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c100a42e5287c6dd1ba43f53f2e0cc57b5d4418b2bd7b6b4c2ac166cc398b95f`  
		Last Modified: Mon, 23 Nov 2026 22:09:24 GMT  
		Size: 7.1 MB (7051157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23855eea92c5f2b4d8e209978e4226b79571515b7aa9f6435386f92743671d56`  
		Last Modified: Mon, 23 Nov 2026 22:09:24 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5a97cc4b44c0f6e0a598bb30cf1b7bcf513069ecd318f6d7de8bed118163db`  
		Last Modified: Mon, 23 Nov 2026 22:09:25 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79fbc064b55c7887e2be32bc54a7710b2458115ea183b555fb18451824e596d`  
		Last Modified: Mon, 23 Nov 2026 22:09:27 GMT  
		Size: 111.9 MB (111913577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4632b35c2fc03a97f58910e3b3b74e094645c2d98c8ef938120297dcd32b700c`  
		Last Modified: Mon, 23 Nov 2026 22:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3fc317b662c85b0bf98225924b22eb4e5778ab25d7c2c98662531b90649852`  
		Last Modified: Mon, 23 Nov 2026 22:09:25 GMT  
		Size: 4.0 KB (4014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9c1fa63b345c8b4fb1a63eb74f1882e56c9ffaf8ccb66d20d09f0ebf89a7878`  
		Last Modified: Mon, 23 Nov 2026 22:09:26 GMT  
		Size: 8.5 KB (8457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:5fcd8294e22f28199970bdc9a463c947b060be11b5cb8793d398faf4eae9e0e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4741567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34db5e8fa6b969124447f17e8ad69a823dcc62f9fa291d2d3a5499ba59c973e8`

```dockerfile
```

-	Layers:
	-	`sha256:9c1b6adb1696521cd9693a91b20a21cf0b2ad692c456732114abc63b523510b1`  
		Last Modified: Mon, 23 Nov 2026 22:09:24 GMT  
		Size: 4.7 MB (4707698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56af0abb02888fb20400b56b6493a3a95b2fbd72934d3aef2fb81ab4185e24a6`  
		Last Modified: Mon, 23 Nov 2026 22:09:24 GMT  
		Size: 33.9 KB (33869 bytes)  
		MIME: application/vnd.in-toto+json

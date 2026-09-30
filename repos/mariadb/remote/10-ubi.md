## `mariadb:10-ubi`

```console
$ docker pull mariadb@sha256:58df65ff8181531318705e2ad9df6b9bff0c34dff1e9e19d3472e2ed892ba66f
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
$ docker pull mariadb@sha256:f1a9d52d8aacd76133c9f027096683fc57406a3c142b688b7bab6b6dd715df52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162311008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62ed9639955e9c70cc6b4aab93db2dd2389b86326ada6cda5541a5bf6c685f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:43:40 GMT
ENV container oci
# Wed, 30 Sep 2026 07:43:40 GMT
COPY dir:01535d66c659bac5dc638e334bb8c0882e8bbe4dcc144deb448bf0673973267f in /      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:43:41 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /root/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:43:22Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:43:22Z" "architecture"="x86_64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:43:22Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:05:28 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Wed, 30 Sep 2026 21:05:30 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:05:32 GMT
ENV GOSU_VERSION=1.19
# Wed, 30 Sep 2026 21:05:32 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 30 Sep 2026 21:05:32 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Wed, 30 Sep 2026 21:05:32 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Wed, 30 Sep 2026 21:05:32 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=10.11.19 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Wed, 30 Sep 2026 21:05:32 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 30 Sep 2026 21:05:32 GMT
ARG MARIADB_VERSION=10.11.19
# Wed, 30 Sep 2026 21:05:32 GMT
ENV MARIADB_VERSION=10.11.19
# Wed, 30 Sep 2026 21:05:53 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export FF8AD1344597106ECE813B918A3872BF3228467C > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm --output /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-9.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-9.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf reinstall -y tzdata ; 	microdnf install -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Wed, 30 Sep 2026 21:05:53 GMT
VOLUME [/var/lib/mysql]
# Wed, 30 Sep 2026 21:05:53 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 30 Sep 2026 21:05:53 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 30 Sep 2026 21:05:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 21:05:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:05:53 GMT
USER mysql
# Wed, 30 Sep 2026 21:05:53 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 30 Sep 2026 21:05:53 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:dc56ef34398ed4f6c8151f31ee5784575bedb47794f5ba379ebc2a25834fac35`  
		Last Modified: Wed, 30 Sep 2026 08:42:23 GMT  
		Size: 40.7 MB (40700861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f941a8a74d22b957fdba5158c78336043c0d279041b190ab36dd66747e19b720`  
		Last Modified: Wed, 30 Sep 2026 21:06:14 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db55b75d1209aeb72c78c9663808ca4eab4cd16bb9d766202b8cf76e84a0060`  
		Last Modified: Wed, 30 Sep 2026 21:06:14 GMT  
		Size: 2.0 MB (1999862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2fcbb76fde8711aa919be44f730aeff198dec5923c0febcfcf6102e22759990`  
		Last Modified: Wed, 30 Sep 2026 21:06:14 GMT  
		Size: 8.1 MB (8052371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c01e20764641eec232bc79007a3ca7ca3aec32983c049d2105b2c5d5d1c433`  
		Last Modified: Wed, 30 Sep 2026 21:06:14 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83995b6c04999f8e7c4978800fd97be112c464cd679ad088f7cf0591d4bfcb4d`  
		Last Modified: Wed, 30 Sep 2026 21:06:15 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a83c23d0ef3171a0a82a404fd793d67df877916d43744cc0d11d6ac2be27fd8d`  
		Last Modified: Wed, 30 Sep 2026 21:06:18 GMT  
		Size: 111.5 MB (111539893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23143a25937c8d4caa2081b26a9b7599d1a1c4a26d56744aa0d6bf94cf5bcfb9`  
		Last Modified: Wed, 30 Sep 2026 21:06:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09832b887218a55523a64bb3612aabcb2511dd35d3d31d718d7300af92ecf287`  
		Last Modified: Wed, 30 Sep 2026 21:06:16 GMT  
		Size: 4.0 KB (4016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e848c977e40a8e87bf9fba6ac451418d4bb0edf766aa6f105b710f26d0dab695`  
		Last Modified: Wed, 30 Sep 2026 21:06:16 GMT  
		Size: 8.5 KB (8459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:9f2646763f0faf566de937ee5d4863aafb80a747619632902de76fe7e87da62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4768920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2751f8986806c880e8db1d8d0b24122019d5f33f765488b05ce0a3421a42b8dc`

```dockerfile
```

-	Layers:
	-	`sha256:dbad98df2ab5e28c9d9cc8c616c760b5e8442d443b4685856767051862672c84`  
		Last Modified: Wed, 30 Sep 2026 21:06:14 GMT  
		Size: 4.7 MB (4735052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f653f1ab302d4c25afb12512cb69ba4c535aa0d6a8acd8f6c313d28ebb9ae95e`  
		Last Modified: Wed, 30 Sep 2026 21:06:14 GMT  
		Size: 33.9 KB (33868 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-ubi` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:0e0c8d4d242a209752ffe899d6a7e248e97dfe6236f6435bb6fc3940990a3b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157721215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711403f3fe36adab785995cf745a821a3e5dd8cb41355ba4c804fed2eb0e682d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:45:10 GMT
ENV container oci
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:06d90a0b7db8992c03ff9664b8cd3e00c58fd39e054579d5795d410389dd5e96 in /      
# Wed, 30 Sep 2026 07:45:10 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:45:10 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /root/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:44:47Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:44:47Z" "architecture"="aarch64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:44:47Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:03:42 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Wed, 30 Sep 2026 21:03:43 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:03:46 GMT
ENV GOSU_VERSION=1.19
# Wed, 30 Sep 2026 21:03:46 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 30 Sep 2026 21:04:42 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Wed, 30 Sep 2026 21:04:42 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Wed, 30 Sep 2026 21:04:42 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=10.11.19 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Wed, 30 Sep 2026 21:04:42 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 30 Sep 2026 21:04:42 GMT
ARG MARIADB_VERSION=10.11.19
# Wed, 30 Sep 2026 21:04:42 GMT
ENV MARIADB_VERSION=10.11.19
# Wed, 30 Sep 2026 21:05:04 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export FF8AD1344597106ECE813B918A3872BF3228467C > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm --output /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-9.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-9.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf reinstall -y tzdata ; 	microdnf install -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Wed, 30 Sep 2026 21:05:04 GMT
VOLUME [/var/lib/mysql]
# Wed, 30 Sep 2026 21:05:05 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 30 Sep 2026 21:05:05 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 30 Sep 2026 21:05:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 21:05:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:05:05 GMT
USER mysql
# Wed, 30 Sep 2026 21:05:05 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 30 Sep 2026 21:05:05 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:b8f4af811c7c98a1b33bf1a9f90c3e1b1f2296b681895a0031b0560a5db8a0a4`  
		Last Modified: Wed, 30 Sep 2026 08:42:32 GMT  
		Size: 38.8 MB (38801364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd029ccc0f9401642e1c5f92062564718ece0dccc9427c631e9fc456c4522094`  
		Last Modified: Wed, 30 Sep 2026 21:04:32 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c35ccd9c30d69a2727f6254f414648646d304fed9d5781852a70ffc5e05da7`  
		Last Modified: Wed, 30 Sep 2026 21:04:32 GMT  
		Size: 2.0 MB (1978122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7751eb4dd038fb2a82e4bee1d563f284eb725c099c21085779ca73e0cdefc6db`  
		Last Modified: Wed, 30 Sep 2026 21:04:32 GMT  
		Size: 6.8 MB (6781627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43e4a5cc73a56e2c70d624e0d4b7b77f67d5d5e6e4836b02098e6d6935b9bb4`  
		Last Modified: Wed, 30 Sep 2026 21:05:24 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9772263d9e237c483db88cdc6a22498ead41d1c32ae3f209ad1a7ff1760b1a`  
		Last Modified: Wed, 30 Sep 2026 21:05:24 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be759454c663644e5153a71616af1c9071837084612ff95091a79eb52db330d`  
		Last Modified: Wed, 30 Sep 2026 21:05:27 GMT  
		Size: 110.1 MB (110142089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a402eec9bd24a692bbb3cfc275151618e66ed8d62930685009942257d016a8`  
		Last Modified: Wed, 30 Sep 2026 21:05:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a71b6ea92520bc82b85e8522d39a34ba3169edc958076b5111c21ea8398e47`  
		Last Modified: Wed, 30 Sep 2026 21:05:25 GMT  
		Size: 4.0 KB (4014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a50f4e7a11ce0126a79fbdbad02f90008bfb00fceee1aabc6cc64281d79b648`  
		Last Modified: Wed, 30 Sep 2026 21:05:25 GMT  
		Size: 8.5 KB (8458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:3d565421e622ec63c05921133b090caf7626fee04f7a0117be4f4cfb2094a114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4766131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3a688018524127f400be64f4271f280e64999251e158b919ce32e74d1b10c6`

```dockerfile
```

-	Layers:
	-	`sha256:baa684f1ad971abce34aaef3a4cf38fbac9b1ed1cb8990c1dfd9fff595fbfa7c`  
		Last Modified: Wed, 30 Sep 2026 21:05:24 GMT  
		Size: 4.7 MB (4732081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e178e8bf29f7736c4ee3df2d8945005b1be6b6fcabc7b5c145763b00ceed7b86`  
		Last Modified: Wed, 30 Sep 2026 21:05:24 GMT  
		Size: 34.0 KB (34050 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-ubi` - linux; ppc64le

```console
$ docker pull mariadb@sha256:2344de9def3d83ba232b0d1bfb3acf178388c3d6a294636a638b994828d5c8f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172333579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a00a823deb8e037d97f2107b11f6d2dd2f328c0c36512f100a352a6cc3614f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:45:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:45:36 GMT
ENV container oci
# Wed, 30 Sep 2026 07:45:37 GMT
COPY dir:4cb48862fe4662e41c3a56d6b359e33e4d555c6623a40f2773bc23feb43cfe43 in /      
# Wed, 30 Sep 2026 07:45:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:45:37 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:45:37 GMT
COPY dir:684cffcefbe18a79082b5d1177bd0a1ba4c1e150d009ccfa0e2601b532089da9 in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:45:37 GMT
COPY dir:684cffcefbe18a79082b5d1177bd0a1ba4c1e150d009ccfa0e2601b532089da9 in /root/buildinfo/      
# Wed, 30 Sep 2026 07:45:38 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:45:17Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:45:17Z" "architecture"="ppc64le" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:45:17Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:18:05 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Wed, 30 Sep 2026 21:18:11 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:18:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 30 Sep 2026 21:18:19 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 30 Sep 2026 21:20:37 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Wed, 30 Sep 2026 21:20:38 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Wed, 30 Sep 2026 21:20:38 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=10.11.19 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Wed, 30 Sep 2026 21:20:38 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 30 Sep 2026 21:20:38 GMT
ARG MARIADB_VERSION=10.11.19
# Wed, 30 Sep 2026 21:20:38 GMT
ENV MARIADB_VERSION=10.11.19
# Wed, 30 Sep 2026 21:21:34 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export FF8AD1344597106ECE813B918A3872BF3228467C > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm --output /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-9.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-9.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf reinstall -y tzdata ; 	microdnf install -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Wed, 30 Sep 2026 21:21:34 GMT
VOLUME [/var/lib/mysql]
# Wed, 30 Sep 2026 21:21:40 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 30 Sep 2026 21:21:42 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 30 Sep 2026 21:21:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 21:21:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:21:43 GMT
USER mysql
# Wed, 30 Sep 2026 21:21:43 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 30 Sep 2026 21:21:43 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:2d868f2473ac963a485d7abd68cef434f33691c56b1f88b36171cbdd8adfa2fe`  
		Last Modified: Wed, 30 Sep 2026 12:23:52 GMT  
		Size: 45.1 MB (45090153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86df9359c90dbd088a98684c3cc8564ae157400dc2a6f90fd23fdb7a54ff0f0b`  
		Last Modified: Wed, 30 Sep 2026 21:20:14 GMT  
		Size: 4.8 KB (4760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7292dd9e430a1e2c8dbc21e15d3219d24a08b617185b1e579e9fad4531a224`  
		Last Modified: Wed, 30 Sep 2026 21:20:14 GMT  
		Size: 2.0 MB (1974913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cdc6fea28ea2215073beb0d4dda715a41e33cfb96ad9ee0423123c712b2013a`  
		Last Modified: Wed, 30 Sep 2026 21:20:15 GMT  
		Size: 6.8 MB (6772258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f67555e184b0765761bdf1a4fb5988b8663577ff43c00835af963d77d50657`  
		Last Modified: Wed, 30 Sep 2026 21:22:37 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9789bde9ff30bb944c5d09a6f81ed12362746f30959cfd2b94c2688dcf751b6a`  
		Last Modified: Wed, 30 Sep 2026 21:22:37 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a849e43485fc2711c996b52f62ded61ad2ea3c729fa49aa63f97b1314ac20260`  
		Last Modified: Wed, 30 Sep 2026 21:22:41 GMT  
		Size: 118.5 MB (118478233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d4ae93a5d434182e51bfe2dccce6b687bb8f6be947420cec393c94d039aba5d`  
		Last Modified: Wed, 30 Sep 2026 21:22:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb6cfb17225f4eb3ccdc85e72274b8820320896e5b5212e38fae15d90c2f47c`  
		Last Modified: Wed, 30 Sep 2026 21:22:39 GMT  
		Size: 4.0 KB (4016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:007e4cfac23e3c77b98e8d2b565d99ba8c5ca13c991e0e9a6c76cb4d06759269`  
		Last Modified: Wed, 30 Sep 2026 21:22:39 GMT  
		Size: 8.5 KB (8460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:eafc779803464acd211f91779bde5ee2a44f3920172a633ebc5a8c67782eda88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4761512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c21c4c05ac441376ad0d2745de801199ec7461a597cc15a117d18035d772d9`

```dockerfile
```

-	Layers:
	-	`sha256:1b874e560668891fa8111f5b421e919a30b57d4213b7379e6f52b96db9c1e759`  
		Last Modified: Wed, 30 Sep 2026 21:22:38 GMT  
		Size: 4.7 MB (4727586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:928503710aa4bbf98e222171d3d78510dcd01b10b75a05a8be2cb41ef1078f9c`  
		Last Modified: Wed, 30 Sep 2026 21:22:37 GMT  
		Size: 33.9 KB (33926 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-ubi` - linux; s390x

```console
$ docker pull mariadb@sha256:64cf3a97f7ccc9020a2c1fdfd7849dc541decd643fb8184b2e458909ba7255cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159311505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac90d58107da30a6588cf0f3d4863ea865c8a064a9560c85f41841f15a3a8da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 08:01:34 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 08:01:35 GMT
ENV container oci
# Wed, 30 Sep 2026 08:01:35 GMT
COPY dir:445decd9d97f9dcf53d77f808319e52de061e3b39d0a3a73f10dadcad04374c3 in /      
# Wed, 30 Sep 2026 08:01:35 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 08:01:35 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 08:01:35 GMT
COPY dir:80358e9112321f12996db9bd990d52a51b07e50af0cf78d80d3c6605d4960c8a in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 08:01:35 GMT
COPY dir:80358e9112321f12996db9bd990d52a51b07e50af0cf78d80d3c6605d4960c8a in /root/buildinfo/      
# Wed, 30 Sep 2026 08:01:35 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T08:00:38Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T08:00:38Z" "architecture"="s390x" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T08:00:38Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:05:03 GMT
RUN sed -i -e '/\[ evp_properties \]/a default_properties = fips=yes'  -e '/opensslcnf.config/a .include = /etc/crypto-policies/back-ends/openssl_fips.config' -e '/\[provider_sect\]/a fips = fips_sect' /etc/pki/tls/openssl.cnf # buildkit
# Wed, 30 Sep 2026 21:05:05 GMT
RUN microdnf install -y shadow-utils && 	groupadd --gid 999 -r mysql && 	useradd -r -g mysql mysql --home-dir /var/lib/mysql --uid 999 && 	microdnf remove -y shadow-utils && 	microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:05:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 30 Sep 2026 21:05:08 GMT
RUN set -eux; 	rpmArch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$rpmArch" in 		aarch64) dpkgArch='arm64' ;; 		armv7*) dpkgArch='armhf' ;; 		i686) dpkgArch='i386' ;; 		ppc64le) dpkgArch='ppc64el' ;; 		s390x|riscv64) dpkgArch=$rpmArch ;; 		x86_64) dpkgArch='amd64' ;; 		*) echo >&2 "error: unknown/unsupported architecture '$rpmArch'"; exit 1 ;; 	esac; 	curl --fail --location --output /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch} ; 	curl --fail --location --output /usr/local/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	microdnf install -y gnupg2; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	chmod a+x /usr/local/bin/gosu; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 30 Sep 2026 21:05:08 GMT
COPY --chmod=0644 docker.cnf /etc/my.cnf.d/ # buildkit
# Wed, 30 Sep 2026 21:05:08 GMT
COPY MariaDB.repo /etc/yum.repos.d/ # buildkit
# Wed, 30 Sep 2026 21:05:08 GMT
LABEL name=MariaDB Server vendor=MariaDB Community version=10.11.19 release=Refer to Annotations org.opencontainers.image.{revision,source} summary=MariaDB Database description=MariaDB Database for relational SQL
# Wed, 30 Sep 2026 21:05:08 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/redhat/ubi9-minimal org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 30 Sep 2026 21:05:08 GMT
ARG MARIADB_VERSION=10.11.19
# Wed, 30 Sep 2026 21:05:08 GMT
ENV MARIADB_VERSION=10.11.19
# Wed, 30 Sep 2026 21:05:45 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN set -eux ; 	curl --fail https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9 --output /tmp/epelkey.txt ; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME ; 	gpg --batch --import /tmp/epelkey.txt ; 	gpg --batch --armor --export FF8AD1344597106ECE813B918A3872BF3228467C > /tmp/epelkey.txt ; 	rpmkeys --import /tmp/epelkey.txt ; 	curl --fail https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm --output /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -K /tmp/epel-release-latest-9.noarch.rpm ; 	rpm -ivh /tmp/epel-release-latest-9.noarch.rpm ; 	rm /tmp/epelkey.txt /tmp/epel-release-latest-9.noarch.rpm ; 	curl --fail https://archive.mariadb.org/PublicKey --output /tmp/MariaDB-Server-GPG-KEY ; 	gpg --batch --import /tmp/MariaDB-Server-GPG-KEY; 	gpg --batch --armor --export 177F4010FE56CA3336300305F1656F24C74CD1D8 > /tmp/MariaDB-Server-GPG-KEY ; 	rpmkeys --import /tmp/MariaDB-Server-GPG-KEY ; 	rm -rf "$GNUPGHOME" /tmp/MariaDB-Server-GPG-KEY ; 	unset GNUPGHOME ; 	microdnf update -y ; 	microdnf reinstall -y tzdata ; 	microdnf install -y procps-ng zstd xz gzip tar jemalloc gperftools-libs pwgen pv util-linux-core ; 	mkdir -p /etc/mysql/conf.d /etc/mysql/mariadb.conf.d/ /var/lib/mysql/mysql /run/mariadb /usr/lib64/galera ; 	chmod ugo+rwx,o+t /run/mariadb ; 	microdnf install -y MariaDB-backup-${MARIADB_VERSION}  MariaDB-server-${MARIADB_VERSION} ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib/libgalera_smm.so ; 	ln -s /usr/lib64/galera-4/libgalera_smm.so /usr/lib64/galera/libgalera_smm.so ; 	openssl list -providers | awk '/^\s*fips/{f=1} f && /status: active/{print "FIPS is active"; found=1; exit 0} END { if (!found) { print "FIPS is not active"; exit 1} }'; 	microdnf clean all ; 	rmdir /var/lib/mysql/mysql ; 	chown -R mysql:mysql /var/lib/mysql /run/mariadb ; 	mkdir /licenses ; 	ln -s /usr/share/doc/MariaDB-server-${MARIADB_VERSION}/COPYING /licenses/GPL-2 ; 	ln -s /usr/share/licenses /licenses/package-licenses ; 	ln -s Apache-2.0-license /licenses/gosu # buildkit
# Wed, 30 Sep 2026 21:05:45 GMT
VOLUME [/var/lib/mysql]
# Wed, 30 Sep 2026 21:05:45 GMT
# ARGS: MARIADB_VERSION=10.11.19
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 30 Sep 2026 21:05:45 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 30 Sep 2026 21:05:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 21:05:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:05:45 GMT
USER mysql
# Wed, 30 Sep 2026 21:05:45 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 30 Sep 2026 21:05:45 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:8221589aa79a7b59750fc4603e575a71e013e7993fa7c7b201c7c9d75949a900`  
		Last Modified: Wed, 30 Sep 2026 09:10:54 GMT  
		Size: 38.8 MB (38753942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c43bf45ef87c12d1f1e12eb7f8bd3fbde7d9b75d00d237ef11b861baa491c40a`  
		Last Modified: Wed, 30 Sep 2026 21:06:12 GMT  
		Size: 4.8 KB (4759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d956bcf43eca8d0b32551bcd48da4f9e77f11d3418d1db49c84321d75956716`  
		Last Modified: Wed, 30 Sep 2026 21:06:12 GMT  
		Size: 2.0 MB (1998660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1280d2a402a12c4cac145f7fa08a04d7f9439af8c7bdbd77860cf3aca648b6`  
		Last Modified: Wed, 30 Sep 2026 21:06:12 GMT  
		Size: 6.8 MB (6806817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f19ab47bc6e93665637c17c0358adcd0c3a6e06497a348d0d57d4487956846bd`  
		Last Modified: Wed, 30 Sep 2026 21:06:12 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fac202d3f96680d7b5a84d8a5b50952065332cc6eb519c58db660e5a8189fc`  
		Last Modified: Wed, 30 Sep 2026 21:06:13 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d080c6687ff1b94f1e888daf3b711b00b604b6820a99c45821b46d81ad8193`  
		Last Modified: Wed, 30 Sep 2026 21:06:15 GMT  
		Size: 111.7 MB (111734068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e574c075034bb8c5c194e1dc44dc278f96329253e9c37a995a587346ca494b8c`  
		Last Modified: Wed, 30 Sep 2026 21:06:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:095107ef5f23d754345d175235a2f62eb2a80899c8811db427269a769ec3f970`  
		Last Modified: Wed, 30 Sep 2026 21:06:13 GMT  
		Size: 4.0 KB (4015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b12b36bdc0cb2e0e64b9183c0ceee428cf07e9508a09fa2a32cff52a36c962`  
		Last Modified: Wed, 30 Sep 2026 21:06:14 GMT  
		Size: 8.5 KB (8457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-ubi` - unknown; unknown

```console
$ docker pull mariadb@sha256:0d5cf46787e94d62f72ee746a0274a931e912535d9b8843944297626303d6cc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4755873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d46febf31dcd996e5f07f164c9ec0d881e72d728fcc4f082d181183a03d9db6`

```dockerfile
```

-	Layers:
	-	`sha256:dbd21274620d3c00b1cdd6bea3f421a308b31b6a10a1ffad58ae62f25c3b32f2`  
		Last Modified: Wed, 30 Sep 2026 21:06:12 GMT  
		Size: 4.7 MB (4722004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94fa1fcdb28b58c75d04d1d67e202abb6d003351a511e9055857842b09b2e896`  
		Last Modified: Wed, 30 Sep 2026 21:06:12 GMT  
		Size: 33.9 KB (33869 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:ps-8.0`

```console
$ docker pull percona@sha256:29801a0596540131d8d29c95d8d1bb5d93c8956c234efb70e4aa7b6fd18997b0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0` - linux; amd64

```console
$ docker pull percona@sha256:8bf2a7112da66e6fe173da4c6d2f5f37466f634052fc3222b5ba27ab65b65730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.1 MB (411052919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3c82dbf7a9efeff9864d1c83cb461801edd140311fde7087552c8b39842eebb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:29:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:efac128f83583a6247aea2e1de3f354267a91fa9afbb47889a2bebf40b22f4af in /      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:29:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /root/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:29:15Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:29:15Z" "architecture"="x86_64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:29:15Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:17:16 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 01 Jul 2026 00:17:16 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Wed, 01 Jul 2026 00:17:16 GMT
ENV PS_VERSION=8.0.46-37.1
# Wed, 01 Jul 2026 00:17:16 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Wed, 01 Jul 2026 00:17:16 GMT
ENV OS_VER=el9
# Wed, 01 Jul 2026 00:17:16 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Wed, 01 Jul 2026 00:17:16 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Wed, 01 Jul 2026 00:17:16 GMT
ENV PS_REPO=testing
# Wed, 01 Jul 2026 00:17:16 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Wed, 01 Jul 2026 00:17:16 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 01 Jul 2026 00:17:16 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Wed, 01 Jul 2026 00:17:16 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 01 Jul 2026 00:17:16 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 01 Jul 2026 00:17:21 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Wed, 01 Jul 2026 00:17:46 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Wed, 01 Jul 2026 00:17:47 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Wed, 01 Jul 2026 00:17:47 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 01 Jul 2026 00:17:47 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Wed, 01 Jul 2026 00:17:47 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 01 Jul 2026 00:17:47 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:17:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:17:47 GMT
USER mysql
# Wed, 01 Jul 2026 00:17:47 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 01 Jul 2026 00:17:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8af57f051b373375a1be8f892172089259ad624ed8452291226c539055e60228`  
		Last Modified: Tue, 30 Jun 2026 06:57:41 GMT  
		Size: 40.7 MB (40689427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2bd9737f56164356f5fb634afebcf23b6c54a3e199867b0410acf634e091197`  
		Last Modified: Wed, 01 Jul 2026 00:18:24 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53057e1dac619f606e7dbe9544bc014e926d29ab2787fdf95658593f8f09b828`  
		Last Modified: Wed, 01 Jul 2026 00:18:25 GMT  
		Size: 9.2 MB (9196634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:886e8424675132eb6325bfdeb282c82a506d2e331c60af82f009f2605ef69603`  
		Last Modified: Wed, 01 Jul 2026 00:18:32 GMT  
		Size: 361.2 MB (361157123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9d41c8c505928501be0d737a986199e0295c882e0274b4815d60dfc7391b16`  
		Last Modified: Wed, 01 Jul 2026 00:18:24 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a683da69fcbaeba8133beb48091e67de2c236e5d611dab5315085cb57b782d8d`  
		Last Modified: Wed, 01 Jul 2026 00:18:25 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9af960ae30a3f0f227a7836c794e4f5f30505aae382ecf4bea923e9f4223f8c`  
		Last Modified: Wed, 01 Jul 2026 00:18:26 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:13a7f043b1da1e4c515f9377f66f12906a3163b5f41c9c03727d17e1a769761b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca807356883fa3bf66e4f9c45f712984c2c63b6b6ff5acbba135510bfe10eb5`

```dockerfile
```

-	Layers:
	-	`sha256:89a1c18ee6ea6e84703fddfdf1fc22ace77630af8ef0f1fd8ad0a5f793ffffe1`  
		Last Modified: Wed, 01 Jul 2026 00:18:24 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

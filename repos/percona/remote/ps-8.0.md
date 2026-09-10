## `percona:ps-8.0`

```console
$ docker pull percona@sha256:f3a52ed891d058ce9ad03300fdb98f4b913b98be4cf34208e988f739eb5f8fe4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0` - linux; amd64

```console
$ docker pull percona@sha256:137444672034c479dc020509a94917e1d319669af4c53cd6d56abfeb7c1692a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411522777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac7cb6496c1b276a6928af37cc1dd1fdcfa8285560f8a5f7ddf555eefd88023`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:32:04 GMT
ENV container oci
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:7d4e1add6b136709dfd81a23f253956035f58d34c5d236b96fba89c53c087ca2 in /      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:32:05 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /root/buildinfo/      
# Wed, 09 Sep 2026 07:32:06 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:31:28Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:31:28Z" "architecture"="x86_64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:31:28Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:36:02 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 09 Sep 2026 22:36:02 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Wed, 09 Sep 2026 22:36:02 GMT
ENV PS_VERSION=8.0.46-37.1
# Wed, 09 Sep 2026 22:36:02 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Wed, 09 Sep 2026 22:36:02 GMT
ENV OS_VER=el9
# Wed, 09 Sep 2026 22:36:02 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Wed, 09 Sep 2026 22:36:02 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Wed, 09 Sep 2026 22:36:02 GMT
ENV PS_REPO=testing
# Wed, 09 Sep 2026 22:36:02 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Wed, 09 Sep 2026 22:36:02 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 09 Sep 2026 22:36:02 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Wed, 09 Sep 2026 22:36:02 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 09 Sep 2026 22:36:02 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 09 Sep 2026 22:36:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Wed, 09 Sep 2026 22:36:45 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Wed, 09 Sep 2026 22:36:45 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Wed, 09 Sep 2026 22:36:45 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 09 Sep 2026 22:36:46 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Wed, 09 Sep 2026 22:36:46 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 09 Sep 2026 22:36:46 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:36:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 22:36:46 GMT
USER mysql
# Wed, 09 Sep 2026 22:36:46 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 09 Sep 2026 22:36:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:399616a84899868b5dcba80b172eb2b68d9d6ceba1655cad130718f24d1f2160`  
		Last Modified: Wed, 09 Sep 2026 08:28:28 GMT  
		Size: 40.7 MB (40711761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f970009e609f0e5795554c09f472bb6b597c7f5c19f45f9cf0ff68cd291397e4`  
		Last Modified: Wed, 09 Sep 2026 22:37:28 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bbe6657b1467b5f22961161d9dab732c48a14e4b33f4c8e42e0caad6093fd7a`  
		Last Modified: Wed, 09 Sep 2026 22:37:28 GMT  
		Size: 9.4 MB (9380842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3185b54fc4582d2daae55d36234b61056c6558917eabebe4fd41215891e0b9ad`  
		Last Modified: Wed, 09 Sep 2026 22:37:35 GMT  
		Size: 361.4 MB (361420446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652a9599d38f9e21fb1e76ff8e678d7b5d0e8545336cbe05fe096156718e3d75`  
		Last Modified: Wed, 09 Sep 2026 22:37:28 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2adea48525e1f75ea69f3a6e0662a8b8d2d554ce4312f772092c32dfff8ac3`  
		Last Modified: Wed, 09 Sep 2026 22:37:29 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972782e8175707701aca64a9074af6fe9c31c3a13ac7fea3641be75fb6f7b6af`  
		Last Modified: Wed, 09 Sep 2026 22:37:29 GMT  
		Size: 3.3 KB (3282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:6f80941aeb1d767537dc3dd04458c63861b05556eb804a1e7d9d9c3d9557dce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e610a854426b812fefe703e331ef959ea1a5c5fb37eb884ff66df42ccc305e`

```dockerfile
```

-	Layers:
	-	`sha256:c0eadfb5463d4a758343a342feeda10c5b386b7c88a266a47424aa06cb3e7028`  
		Last Modified: Wed, 09 Sep 2026 22:37:28 GMT  
		Size: 30.8 KB (30847 bytes)  
		MIME: application/vnd.in-toto+json

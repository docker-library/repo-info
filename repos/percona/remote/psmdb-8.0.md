## `percona:psmdb-8.0`

```console
$ docker pull percona@sha256:2ef70994d1a2e40b1d9626c03ab7c3ec74ffc6c67996bfba1dd4487d12735644
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0` - linux; amd64

```console
$ docker pull percona@sha256:e9034c7bc98cc45bed9cfd25d12f85adc4a493258d209b30043faf3feeddea9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.4 MB (324381374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c04f6e2bef6f692bf67a4d0184e6a24a082f68fc7395239671105bb3cf342c0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:17 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:17 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Mon, 31 Aug 2026 19:11:17 GMT
ENV PSMDB_VERSION=8.0.29-13
# Mon, 31 Aug 2026 19:11:17 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:17 GMT
ENV FULL_PERCONA_VERSION=8.0.29-13.el9
# Mon, 31 Aug 2026 19:11:17 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Mon, 31 Aug 2026 19:11:17 GMT
ENV PSMDB_REPO=testing
# Mon, 31 Aug 2026 19:11:17 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Mon, 31 Aug 2026 19:11:17 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:17 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:17 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Mon, 31 Aug 2026 19:11:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Mon, 31 Aug 2026 19:11:36 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Mon, 31 Aug 2026 19:11:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Mon, 31 Aug 2026 19:11:36 GMT
ENV GOSU_VERSION=1.11
# Mon, 31 Aug 2026 19:11:39 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Mon, 31 Aug 2026 19:11:39 GMT
VOLUME [/data/db]
# Mon, 31 Aug 2026 19:11:39 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Mon, 31 Aug 2026 19:11:39 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:39 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:39 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:39 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 31 Aug 2026 19:11:39 GMT
USER 1001
# Mon, 31 Aug 2026 19:11:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206131518722ed8cc1cd77e2f4948aa9e97ae36350ce4bfa1ea2078d7aa333dd`  
		Last Modified: Mon, 31 Aug 2026 19:12:10 GMT  
		Size: 9.0 MB (8991407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f6e2fb0cca7b615b15cd6707ef0430a88ba1939f8c82cdd3ea8294fb1c0f27`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 273.7 MB (273727452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7675173752ec8568773fe2e7ae961c99d9a87f8cb896c336785f2d1bb39b834e`  
		Last Modified: Mon, 31 Aug 2026 19:12:10 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8313490544c7f55b87402cffb58ed408463e3fb3e63327115f3d160effe5270a`  
		Last Modified: Mon, 31 Aug 2026 19:12:11 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556d5bc291996db0d0d102eaa43e696e26ec44017c5a0fd34b7d06a220554657`  
		Last Modified: Mon, 31 Aug 2026 19:12:12 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3903bf6ac40a38b65bcd3605a0fd2ff3b13c91c7cfc98db78b7e3f9cd4ba70`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9699c5c52cb73951ec244c6176b14374040dec8d5774aa4d4a9328881e79dbf`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33462d81279c7cd5fae67cd8376e1275ab913245f7306395a2bba8b3e668bd4b`  
		Last Modified: Mon, 31 Aug 2026 19:12:14 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72e68820808489cd60e43b2a7ec42476716e7de4a071d45536fae95c7ce8b70`  
		Last Modified: Mon, 31 Aug 2026 19:12:15 GMT  
		Size: 5.0 KB (4965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:0eb9708652d370eaba2a76aca5c31c4b1ec0d26f45589809d481908d11da3472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a4a4e853d54191204c7f9c00c39dc00572cfa10f9d68f1bc315d1288b8317b2`

```dockerfile
```

-	Layers:
	-	`sha256:2af33113b15c00bb24c553c3e625b3e732dca335f40e5cc0a5312cf98e29072f`  
		Last Modified: Mon, 31 Aug 2026 19:12:10 GMT  
		Size: 32.7 KB (32673 bytes)  
		MIME: application/vnd.in-toto+json

## `percona:psmdb-8.3`

```console
$ docker pull percona@sha256:efb128a8abf36f765288119397ab7f5cb9cf256472da581b2498f7009b6c90d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.3` - linux; amd64

```console
$ docker pull percona@sha256:279dd7d91893f2c52819edbf3387b31c344159700de85fa6266cc8105d89aeb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.6 MB (393608167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d59014be38ce35f2997699f78d3c440bc402f5b25f1683418fe362ddc9692d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:48:31 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:48:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 05 Nov 2026 22:48:31 GMT
ENV PSMDB_VERSION=8.3.13-4
# Thu, 05 Nov 2026 22:48:31 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_PERCONA_VERSION=8.3.13-4.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 05 Nov 2026 22:48:31 GMT
ENV PSMDB_REPO=release
# Thu, 05 Nov 2026 22:48:31 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Thu, 05 Nov 2026 22:48:31 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:48:31 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:48:31 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-83 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-83/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 05 Nov 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 05 Nov 2026 22:48:54 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 05 Nov 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 05 Nov 2026 22:48:54 GMT
ENV GOSU_VERSION=1.11
# Thu, 05 Nov 2026 22:48:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 05 Nov 2026 22:48:56 GMT
VOLUME [/data/db]
# Thu, 05 Nov 2026 22:48:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 05 Nov 2026 22:48:57 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:48:57 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:48:57 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:48:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 22:48:57 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 05 Nov 2026 22:48:57 GMT
USER 1001
# Thu, 05 Nov 2026 22:48:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853849a8e1f0360fef1c01c90d4b1a73d532fcd7197bad2c2c7d7cd93ad301e3`  
		Last Modified: Thu, 05 Nov 2026 22:49:33 GMT  
		Size: 8.9 MB (8949045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0850dd9be41e601308d04d5c865e442e8eeadb61ae7eff3f85533c9da714a432`  
		Last Modified: Thu, 05 Nov 2026 22:49:39 GMT  
		Size: 343.0 MB (343049419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299fc74713d83ecdaff2a31b31363a3d90a52719a5868088a787189bf794b5cf`  
		Last Modified: Thu, 05 Nov 2026 22:49:32 GMT  
		Size: 1.6 KB (1640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e947523b019901cfab6e84809f54a755af8f603be0ee1e94ab09412826a6e726`  
		Last Modified: Thu, 05 Nov 2026 22:49:32 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88a9d568e2c9b7f5242da1b3615c1fc92ac4501d607cbe3bfa010a4933ccb09`  
		Last Modified: Thu, 05 Nov 2026 22:49:33 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481b21bf296601be3cec5a8d32a5248954c5a5de6ad4b66467b5db94d7d42972`  
		Last Modified: Thu, 05 Nov 2026 22:49:34 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e0ea02acf2a89f95173468569897ebe00961344895f213593e2b60945dddea`  
		Last Modified: Thu, 05 Nov 2026 22:49:34 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c4b667d0c41e9a7f5353a380e62e02ae66e94957eaf75cad4e8ed7e9b4a2b5`  
		Last Modified: Thu, 05 Nov 2026 22:49:35 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d03db91e0708fc4a3bffc53fed29521ea463df99d219c9ccdddd77e63690c3`  
		Last Modified: Thu, 05 Nov 2026 22:49:35 GMT  
		Size: 5.0 KB (4961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.3` - unknown; unknown

```console
$ docker pull percona@sha256:e16d47df7165f12ac5927e08193675ece6938704d4d06433834aaca2a40effba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f5eb3c2a18126a62e377558986db879b3f64592b006ebf6828a16619c61267`

```dockerfile
```

-	Layers:
	-	`sha256:474507006839d1f3a4bc804335c8b8d10528934002c013b32e3adf0865e0bea9`  
		Last Modified: Thu, 05 Nov 2026 22:49:32 GMT  
		Size: 33.9 KB (33856 bytes)  
		MIME: application/vnd.in-toto+json

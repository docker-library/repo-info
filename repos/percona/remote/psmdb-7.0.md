## `percona:psmdb-7.0`

```console
$ docker pull percona@sha256:b9ebbbcd3243dc4259e9b17b30fdc0c865611734b33dc415c5d15cd7aac044d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0` - linux; amd64

```console
$ docker pull percona@sha256:0b480730899014f5e8856df482d27b2bbb71fa4d68261c4c7bb9662137624519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.1 MB (304126481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d14cc420ed8894d1f087108c4dc59710f5c3dc704133ccb79649888e08ca9f`
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
# Mon, 31 Aug 2026 19:11:20 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:20 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Mon, 31 Aug 2026 19:11:20 GMT
ENV PSMDB_VERSION=7.0.40-22
# Mon, 31 Aug 2026 19:11:20 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:20 GMT
ENV FULL_PERCONA_VERSION=7.0.40-22.el9
# Mon, 31 Aug 2026 19:11:20 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Mon, 31 Aug 2026 19:11:20 GMT
ENV PSMDB_REPO=release
# Mon, 31 Aug 2026 19:11:20 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:20 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:20 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:41 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Mon, 31 Aug 2026 19:11:41 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Mon, 31 Aug 2026 19:11:41 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Mon, 31 Aug 2026 19:11:41 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Mon, 31 Aug 2026 19:11:41 GMT
ENV GOSU_VERSION=1.11
# Mon, 31 Aug 2026 19:11:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Mon, 31 Aug 2026 19:11:43 GMT
VOLUME [/data/db]
# Mon, 31 Aug 2026 19:11:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:44 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:44 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 31 Aug 2026 19:11:44 GMT
USER 1001
# Mon, 31 Aug 2026 19:11:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686c1c7fdf79d812cc94ffb1c0e7d472508e597f4e889f51c47055a3cfff990e`  
		Last Modified: Mon, 31 Aug 2026 19:12:15 GMT  
		Size: 9.0 MB (8991388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef38c5bab88e1eb07ab71b01b877d67939179a554ff64345782497c8166fbf1`  
		Last Modified: Mon, 31 Aug 2026 19:12:20 GMT  
		Size: 253.5 MB (253472597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c310af034b43eb404b39ac13e4b5afea4c105cd2d4605676a255740a8f1a41b`  
		Last Modified: Mon, 31 Aug 2026 19:12:15 GMT  
		Size: 1.6 KB (1632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cad50e96a2d1fb358aaa2aa301a910dfd7a959c444a95f8d6bd5cbf77938a87`  
		Last Modified: Mon, 31 Aug 2026 19:12:14 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1ebf7e0a1cac19d1755a4a760660d2b06141aa3314b6e48de2a2467016a816`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 10.6 KB (10571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fb0a093f347f75b4e32c17ddd07c45d00039d3e9fef795806e1647874558ea`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6433c62908fee2abb93f8b7007912a8040f95d320276f376d41e13a67346e7`  
		Last Modified: Mon, 31 Aug 2026 19:12:17 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae3212602ab8b4b2071fbf02c3ad25c5eb7ee790ca7df811d26edb15cc906b5`  
		Last Modified: Mon, 31 Aug 2026 19:12:17 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b916eee4c1d90d569b2c45f0957f19d78421a02d94accfb7a027fe6495d168f`  
		Last Modified: Mon, 31 Aug 2026 19:12:18 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0` - unknown; unknown

```console
$ docker pull percona@sha256:b2d17f5d49e23c30af835cdb19d76ac2e148374d4a04a71c15d8b22f95d21677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ccf5844696ae1c64bb236013624238a1aa12fb09d2a6b15a8e9c7e843bb5fc`

```dockerfile
```

-	Layers:
	-	`sha256:5cc763c2414c15bbd7e891476e8396fac6494c1aee9536e3ccdd1bac8cbdd0d9`  
		Last Modified: Mon, 31 Aug 2026 19:12:14 GMT  
		Size: 32.4 KB (32367 bytes)  
		MIME: application/vnd.in-toto+json

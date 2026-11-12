## `percona:psmdb-7.0`

```console
$ docker pull percona@sha256:b48944b1e8b134b9fb080bebe916f1ddd34ca597e180dbe139fdb5f29b0f345e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0` - linux; amd64

```console
$ docker pull percona@sha256:5b4d3557b521a6f4935e574176efd52d07db02b41c81e3a3a5846484ce5d0a09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.3 MB (309341458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4549a4bf4262e2be500577f8b43f763e16eb1c082cc0f28bd1ac6dd0d320c0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:05:31 GMT
ENV container oci
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1065617e8ffc1bf546938007c42ca6d2543da069b404ba7a3172b874660980aa in /      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:05:32 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:05:33 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:05:11Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:05:11Z" "architecture"="x86_64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:05:11Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:34:01 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 11 Nov 2026 22:34:01 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 11 Nov 2026 22:34:01 GMT
ENV PSMDB_VERSION=7.0.45-24
# Wed, 11 Nov 2026 22:34:01 GMT
ENV OS_VER=el9
# Wed, 11 Nov 2026 22:34:01 GMT
ENV FULL_PERCONA_VERSION=7.0.45-24.el9
# Wed, 11 Nov 2026 22:34:01 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Wed, 11 Nov 2026 22:34:01 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Wed, 11 Nov 2026 22:34:01 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Wed, 11 Nov 2026 22:34:01 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Wed, 11 Nov 2026 22:34:01 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 11 Nov 2026 22:34:01 GMT
ENV PSMDB_REPO=release
# Wed, 11 Nov 2026 22:34:01 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 11 Nov 2026 22:34:01 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 11 Nov 2026 22:34:01 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 11 Nov 2026 22:34:21 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         curl-minimal         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 11 Nov 2026 22:34:21 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 11 Nov 2026 22:34:21 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 11 Nov 2026 22:34:22 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 11 Nov 2026 22:34:22 GMT
ENV GOSU_VERSION=1.11
# Wed, 11 Nov 2026 22:34:23 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 11 Nov 2026 22:34:23 GMT
VOLUME [/data/db]
# Wed, 11 Nov 2026 22:34:23 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 11 Nov 2026 22:34:24 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 11 Nov 2026 22:34:24 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 11 Nov 2026 22:34:24 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:34:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 22:34:24 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 11 Nov 2026 22:34:24 GMT
USER 1001
# Wed, 11 Nov 2026 22:34:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d17fc3a27a551e8e18348f89a75752fab8f83ab83c8dd4d22bcf3418f9e6a06a`  
		Last Modified: Wed, 11 Nov 2026 05:24:43 GMT  
		Size: 40.7 MB (40684080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba397fee61065db6844cce17aea35421a9116dcc3371d30a64f5918e87e4803`  
		Last Modified: Wed, 11 Nov 2026 22:34:54 GMT  
		Size: 9.2 MB (9184351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0120466cd04f85ede2285f2db8c7e9d1b65a069ead6739e1367718b6ccc4bbc`  
		Last Modified: Wed, 11 Nov 2026 22:34:59 GMT  
		Size: 258.5 MB (258520060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5b9be0b89316b6cc054ccea0fad83c82dcfaa2890be7a3d9e00888a87833ee`  
		Last Modified: Wed, 11 Nov 2026 22:34:54 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63612bd2d5d5dcfbecbd2bd2c838506ae56b9a6e5fdf08f8e1a02594a71a3687`  
		Last Modified: Wed, 11 Nov 2026 22:34:55 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed9cf34a03e691c9cf3693d4b45296d349ff2d71ccde25d48fdde62036cbfa0`  
		Last Modified: Wed, 11 Nov 2026 22:34:56 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411f81ba40d320039bf3ecb0e8786615cc9954883aae51f52382014f60cd0117`  
		Last Modified: Wed, 11 Nov 2026 22:34:56 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf58429721fa6736034fa106517c0d029d59d84ca1399068f93fd30fa4562eba`  
		Last Modified: Wed, 11 Nov 2026 22:34:57 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677b37774d09be3e89a8e8534bfe1524c2233a36eff2ccbfab37035bbe1bd8a4`  
		Last Modified: Wed, 11 Nov 2026 22:34:57 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e21b60a93ecd8ec413620397b3ccb059a0020839249a10df3414eb641dd065`  
		Last Modified: Wed, 11 Nov 2026 22:34:57 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0` - unknown; unknown

```console
$ docker pull percona@sha256:e771512672ba994a3667dc2f01c390018524dad444098df0af778a1c539ab476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6e16b072166a16b6e28eb63065918bf4b6edf4be8b58502056470059dc3639`

```dockerfile
```

-	Layers:
	-	`sha256:629255b4cdbbb877f043125782a0a5ac65ac2ce229317d628973b06ef9f306de`  
		Last Modified: Wed, 11 Nov 2026 22:34:54 GMT  
		Size: 33.7 KB (33662 bytes)  
		MIME: application/vnd.in-toto+json

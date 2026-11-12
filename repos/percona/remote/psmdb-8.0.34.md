## `percona:psmdb-8.0.34`

```console
$ docker pull percona@sha256:e505c0eb860fc3ca530a5f6192d19901649e3770f413b664bd6ad7cd4b363714
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0.34` - linux; amd64

```console
$ docker pull percona@sha256:862f4531579b960c01b03b2a5ea1cf5240cb7c876ada1489a3c8f22834f7a806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.7 MB (329745229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5de23ba0ca817db20df42f3b780965043d4db02ab4005e13ed53d3db1f8c21`
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
# Wed, 11 Nov 2026 22:58:47 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 11 Nov 2026 22:58:47 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 11 Nov 2026 22:58:47 GMT
ENV PSMDB_VERSION=8.0.34-15
# Wed, 11 Nov 2026 22:58:47 GMT
ENV OS_VER=el9
# Wed, 11 Nov 2026 22:58:47 GMT
ENV FULL_PERCONA_VERSION=8.0.34-15.el9
# Wed, 11 Nov 2026 22:58:47 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Wed, 11 Nov 2026 22:58:47 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Wed, 11 Nov 2026 22:58:47 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Wed, 11 Nov 2026 22:58:47 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Wed, 11 Nov 2026 22:58:47 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 11 Nov 2026 22:58:47 GMT
ENV PSMDB_REPO=release
# Wed, 11 Nov 2026 22:58:47 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 11 Nov 2026 22:58:47 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 11 Nov 2026 22:58:47 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 11 Nov 2026 22:58:47 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 11 Nov 2026 22:59:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 11 Nov 2026 22:59:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 11 Nov 2026 22:59:10 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 11 Nov 2026 22:59:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 11 Nov 2026 22:59:10 GMT
ENV GOSU_VERSION=1.11
# Wed, 11 Nov 2026 22:59:11 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 11 Nov 2026 22:59:11 GMT
VOLUME [/data/db]
# Wed, 11 Nov 2026 22:59:12 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 11 Nov 2026 22:59:12 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 11 Nov 2026 22:59:12 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 11 Nov 2026 22:59:12 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:59:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 22:59:12 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 11 Nov 2026 22:59:12 GMT
USER 1001
# Wed, 11 Nov 2026 22:59:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d17fc3a27a551e8e18348f89a75752fab8f83ab83c8dd4d22bcf3418f9e6a06a`  
		Last Modified: Wed, 11 Nov 2026 05:24:43 GMT  
		Size: 40.7 MB (40684080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7c0b89f0a8e0064065677ee1234c6c64feed3362120db6a8442ea7557ebc675`  
		Last Modified: Wed, 11 Nov 2026 22:59:42 GMT  
		Size: 9.2 MB (9184373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3be2c432adf43ef359c9c489c7a6f95b5f9cda2784e9336a28dcfeee31a11e`  
		Last Modified: Wed, 11 Nov 2026 22:59:47 GMT  
		Size: 278.9 MB (278923811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add8b8ba63b37849f0180e7b917b0e921e4eb6d11301ebaaa2c439fb735597e7`  
		Last Modified: Wed, 11 Nov 2026 22:59:42 GMT  
		Size: 1.7 KB (1672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7615cecce6f59492c02939032f08230881a4fedf6a048f7581b8c7799d086e`  
		Last Modified: Wed, 11 Nov 2026 22:59:42 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef57efe5278af2bb860bf9bffa642ce9e9660dbd4c5c2fe29fa3a3f1900776e4`  
		Last Modified: Wed, 11 Nov 2026 22:59:43 GMT  
		Size: 10.6 KB (10576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aa4e76c6346cdc0f532202ed80023bb22c0902d1a471daa699ce648a9c3ef5e`  
		Last Modified: Wed, 11 Nov 2026 22:59:39 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f82933fb87726b098304c41780918d1ee30ebe331711f034808e21e5b883d2`  
		Last Modified: Wed, 11 Nov 2026 22:59:40 GMT  
		Size: 13.2 KB (13203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c32bf1447f3297222d1da63430c53268d4adb21db2ee58fa54b431200dd1e2af`  
		Last Modified: Wed, 11 Nov 2026 22:59:43 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3909ff28cb4b1b91aa6b5964480cea636b102c0a30bab2a18c95a5b96d8db4b9`  
		Last Modified: Wed, 11 Nov 2026 22:59:44 GMT  
		Size: 5.0 KB (4965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0.34` - unknown; unknown

```console
$ docker pull percona@sha256:2c71d80850cd2d69d60b1dfbc74ef8c732ea09a9f63f005afd20535c0d6706bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e8cf6051fb3740da64ba9ed23e4afe7d5a0644a57f7faf8155eb921f343a106`

```dockerfile
```

-	Layers:
	-	`sha256:b7f1bdb473ddff2734b5ac94e13583e512d6a0fca5495e1385119c055e7cb111`  
		Last Modified: Wed, 11 Nov 2026 22:59:42 GMT  
		Size: 33.9 KB (33869 bytes)  
		MIME: application/vnd.in-toto+json

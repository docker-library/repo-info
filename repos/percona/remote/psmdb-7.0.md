## `percona:psmdb-7.0`

```console
$ docker pull percona@sha256:48fed2f52a6ddab34f11f128999592649e926763b3c13af5dbb7cd2011a6a464
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0` - linux; amd64

```console
$ docker pull percona@sha256:9083cc26d73ed1a5a350c915a833f4b6b41e13c4109d928a3509b092027610fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.0 MB (304977174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b16d9bd84117c2865e4e923465994bdae48a2fccae805d310ec564850f02c609`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:34:11 GMT
ENV container oci
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:0bbd26efdf764fb2a803e39c5f9309efe9ad8dccb284af5b7fa3a1cebd98b694 in /      
# Mon, 26 Oct 2026 21:34:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:34:12 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:33:49Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:33:49Z" "architecture"="x86_64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:33:49Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:43:35 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 27 Oct 2026 17:43:35 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Tue, 27 Oct 2026 17:43:35 GMT
ENV PSMDB_VERSION=7.0.45-24
# Tue, 27 Oct 2026 17:43:35 GMT
ENV OS_VER=el9
# Tue, 27 Oct 2026 17:43:35 GMT
ENV FULL_PERCONA_VERSION=7.0.45-24.el9
# Tue, 27 Oct 2026 17:43:35 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Tue, 27 Oct 2026 17:43:35 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Tue, 27 Oct 2026 17:43:35 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Tue, 27 Oct 2026 17:43:35 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Tue, 27 Oct 2026 17:43:35 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Tue, 27 Oct 2026 17:43:35 GMT
ENV PSMDB_REPO=release
# Tue, 27 Oct 2026 17:43:35 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 27 Oct 2026 17:43:35 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 27 Oct 2026 17:43:35 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 27 Oct 2026 17:43:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         curl-minimal         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Tue, 27 Oct 2026 17:43:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Tue, 27 Oct 2026 17:43:54 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Tue, 27 Oct 2026 17:43:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Tue, 27 Oct 2026 17:43:54 GMT
ENV GOSU_VERSION=1.11
# Tue, 27 Oct 2026 17:43:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Tue, 27 Oct 2026 17:43:56 GMT
VOLUME [/data/db]
# Tue, 27 Oct 2026 17:43:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Tue, 27 Oct 2026 17:43:57 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Tue, 27 Oct 2026 17:43:57 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 27 Oct 2026 17:43:57 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:43:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 17:43:57 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 27 Oct 2026 17:43:57 GMT
USER 1001
# Tue, 27 Oct 2026 17:43:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8f4a4ef7ec87af1eb84ab8382222fe461e965d7d1c9f8b34dd0890b7009a51bb`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 40.7 MB (40654237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d06bd5d62b630413cfa1ae674fcc470a59e906879af0f750a377f17ad08ee6d`  
		Last Modified: Tue, 27 Oct 2026 17:44:23 GMT  
		Size: 8.9 MB (8934833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af627524dcaefb92928a936f4774dac54a90bfacd09809ef325f3dffede5b4a2`  
		Last Modified: Tue, 27 Oct 2026 17:44:28 GMT  
		Size: 254.4 MB (254435163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d31f9a642783703f5678456a97bbeb1cfe758bad48ebea597113ca7a4a80c8b`  
		Last Modified: Tue, 27 Oct 2026 17:44:23 GMT  
		Size: 1.6 KB (1640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b00cc946ef4a21e21b08418130f1814a0061c756f62cf2289bbde8e70f861c`  
		Last Modified: Tue, 27 Oct 2026 17:44:23 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514fb95515506457cbea425b2300f2791f4eef0a490bd93460830459c0af4613`  
		Last Modified: Tue, 27 Oct 2026 17:44:24 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878adf9c9e21dc42cc5f26bcc85445b504be3871ebac7aa031db032e964e6452`  
		Last Modified: Tue, 27 Oct 2026 17:44:24 GMT  
		Size: 914.5 KB (914520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7580306956bae009bdc9020977a59e124e8f9721e0f19ccd299e0db5123f6892`  
		Last Modified: Tue, 27 Oct 2026 17:44:25 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e989f36c6c1d0f0392645b7f39355fd4914f609c37afe8588c8a03268c969679`  
		Last Modified: Tue, 27 Oct 2026 17:44:25 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2f5f76da7b6ebffc360f7a7e850e4a3b490544892d012f003e80f78b4efa2f`  
		Last Modified: Tue, 27 Oct 2026 17:44:25 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0` - unknown; unknown

```console
$ docker pull percona@sha256:ce2770f236884af3bb8fe0c019c76f3aad64958344a2c5777be3bc340054d758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c73e821f43732368806b64217ff516c17006ad005c238dd58d23ef3031e00f`

```dockerfile
```

-	Layers:
	-	`sha256:5e4249387aef38d9815830f1fc63d0ddf0481cd51f30f278eeddf6ce508b7b68`  
		Last Modified: Tue, 27 Oct 2026 17:44:23 GMT  
		Size: 33.7 KB (33662 bytes)  
		MIME: application/vnd.in-toto+json

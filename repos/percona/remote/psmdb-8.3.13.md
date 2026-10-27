## `percona:psmdb-8.3.13`

```console
$ docker pull percona@sha256:396bbb85eb980d859ee91f125237dc618012cd413b5cab24bafed332f153c6d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.3.13` - linux; amd64

```console
$ docker pull percona@sha256:12fcbe7c86f01dfc542c772aeca7eb15f24e82029456a0ad658db99331bcd1d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.6 MB (393589987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be40ae2df2fe91701540c86a5197dbfcf786497182c1f41cd7704e5334c6cbb`
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
# Tue, 27 Oct 2026 19:14:33 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 27 Oct 2026 19:14:33 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Tue, 27 Oct 2026 19:14:33 GMT
ENV PSMDB_VERSION=8.3.13-4
# Tue, 27 Oct 2026 19:14:33 GMT
ENV OS_VER=el9
# Tue, 27 Oct 2026 19:14:33 GMT
ENV FULL_PERCONA_VERSION=8.3.13-4.el9
# Tue, 27 Oct 2026 19:14:33 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Tue, 27 Oct 2026 19:14:33 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Tue, 27 Oct 2026 19:14:33 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Tue, 27 Oct 2026 19:14:33 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Tue, 27 Oct 2026 19:14:33 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Tue, 27 Oct 2026 19:14:33 GMT
ENV PSMDB_REPO=release
# Tue, 27 Oct 2026 19:14:33 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 27 Oct 2026 19:14:33 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 27 Oct 2026 19:14:33 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 27 Oct 2026 19:14:33 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 27 Oct 2026 19:14:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-83 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-83/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Tue, 27 Oct 2026 19:14:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Tue, 27 Oct 2026 19:14:56 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Tue, 27 Oct 2026 19:14:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Tue, 27 Oct 2026 19:14:56 GMT
ENV GOSU_VERSION=1.11
# Tue, 27 Oct 2026 19:14:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Tue, 27 Oct 2026 19:14:58 GMT
VOLUME [/data/db]
# Tue, 27 Oct 2026 19:14:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Tue, 27 Oct 2026 19:14:59 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Tue, 27 Oct 2026 19:14:59 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 27 Oct 2026 19:14:59 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 19:14:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 19:14:59 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 27 Oct 2026 19:14:59 GMT
USER 1001
# Tue, 27 Oct 2026 19:14:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8f4a4ef7ec87af1eb84ab8382222fe461e965d7d1c9f8b34dd0890b7009a51bb`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 40.7 MB (40654237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d965500fdacd2b3a305a3f49e7717f10507f224c00326104d40c7d186b786a`  
		Last Modified: Tue, 27 Oct 2026 19:15:35 GMT  
		Size: 8.9 MB (8934827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30787c901dc5d6e6a78ce79063140d94dd3ce46a96fbf89181043bd9e885d464`  
		Last Modified: Tue, 27 Oct 2026 19:15:43 GMT  
		Size: 343.0 MB (343047993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781e20bac570a01bb8240a88b05d6dc979aac124cf902c2a2e485eb4ca9378fb`  
		Last Modified: Tue, 27 Oct 2026 19:15:35 GMT  
		Size: 1.6 KB (1643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1263a2972fe055949a034b02ec9e3a60372d28e429d9b6d9a1684051aaf595`  
		Last Modified: Tue, 27 Oct 2026 19:15:35 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b760fa1f25a5eb2dd195eed737836ed2d3be643bb7e7b6ac3ca766c6936275`  
		Last Modified: Tue, 27 Oct 2026 19:15:36 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d69741164e28ab02b6513c879f91d01e2f5a4574d1ab6911f1dd4cf9ed93e3a`  
		Last Modified: Tue, 27 Oct 2026 19:15:36 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851fc29bc7b900b78579d968dbb6810aed6d5859c795a9199802373a1801fad2`  
		Last Modified: Tue, 27 Oct 2026 19:15:37 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec1d449376cd6831137d663598b7f322388328f664e44fefc028c0586d46d52`  
		Last Modified: Tue, 27 Oct 2026 19:15:37 GMT  
		Size: 4.0 KB (3958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e4e301a549f8c72d75c81d96295c9f2fb128b13871a824c306ec854d3397a1`  
		Last Modified: Tue, 27 Oct 2026 19:15:38 GMT  
		Size: 5.0 KB (4958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.3.13` - unknown; unknown

```console
$ docker pull percona@sha256:646ac58c8ab39ff0558596c9d4f13286ae4cdbefa8c5374563a4270a27248791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ecb1d05ec3656200a685cf6cc5b34123496071a18c04cb5dd63267e4597c78d`

```dockerfile
```

-	Layers:
	-	`sha256:eee49914d6edc9e90f14df48064a8a27d39bf38d66922fc3cd2bd035ac0a7778`  
		Last Modified: Tue, 27 Oct 2026 19:15:35 GMT  
		Size: 33.9 KB (33857 bytes)  
		MIME: application/vnd.in-toto+json

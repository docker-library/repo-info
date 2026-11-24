## `percona:psmdb-8.3.13`

```console
$ docker pull percona@sha256:5a8a5eb8b6db54dcd50408a4b2175e0a228bb2c378d1e4cf5de8cec9211161e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.3.13` - linux; amd64

```console
$ docker pull percona@sha256:f241047d624241af6f00cbcd6d1aa7279c650ce4321d0bad6d0ec9ddbabfb44d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.9 MB (393920766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe6f44578ac921bce73bf023478007fcf500b74586495a6273fe0102afbe50b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:07:10 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 23 Nov 2026 22:07:10 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Mon, 23 Nov 2026 22:07:10 GMT
ENV PSMDB_VERSION=8.3.13-4
# Mon, 23 Nov 2026 22:07:10 GMT
ENV OS_VER=el9
# Mon, 23 Nov 2026 22:07:10 GMT
ENV FULL_PERCONA_VERSION=8.3.13-4.el9
# Mon, 23 Nov 2026 22:07:10 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Mon, 23 Nov 2026 22:07:10 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Mon, 23 Nov 2026 22:07:10 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Mon, 23 Nov 2026 22:07:10 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Mon, 23 Nov 2026 22:07:10 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Mon, 23 Nov 2026 22:07:10 GMT
ENV PSMDB_REPO=release
# Mon, 23 Nov 2026 22:07:10 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Mon, 23 Nov 2026 22:07:10 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 23 Nov 2026 22:07:10 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 23 Nov 2026 22:07:10 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 23 Nov 2026 22:07:34 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-83 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-83/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Mon, 23 Nov 2026 22:07:34 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Mon, 23 Nov 2026 22:07:35 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Mon, 23 Nov 2026 22:07:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Mon, 23 Nov 2026 22:07:35 GMT
ENV GOSU_VERSION=1.11
# Mon, 23 Nov 2026 22:07:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Mon, 23 Nov 2026 22:07:36 GMT
VOLUME [/data/db]
# Mon, 23 Nov 2026 22:07:37 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Mon, 23 Nov 2026 22:07:37 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Mon, 23 Nov 2026 22:07:37 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 23 Nov 2026 22:07:37 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:07:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Nov 2026 22:07:37 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 23 Nov 2026 22:07:37 GMT
USER 1001
# Mon, 23 Nov 2026 22:07:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95354d3d80c9ca1a55a13b239b1cd286fd45db664f6e3f2ff97015788589c695`  
		Last Modified: Mon, 23 Nov 2026 22:08:13 GMT  
		Size: 9.2 MB (9237691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4eea085d5bb32d36c62754862c4d11e7937df002f2482eab66c30cef2d0debc`  
		Last Modified: Mon, 23 Nov 2026 22:08:20 GMT  
		Size: 343.1 MB (343083273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519cfe664dc227d8e5af7cf394ed7a1823da7a4d2308224e5a5e306af9609d70`  
		Last Modified: Mon, 23 Nov 2026 22:08:13 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ca1bda2c8630b03a22589b861ba8a5efd84ec0558c2b1815f8ac4bbbe4fcb0`  
		Last Modified: Mon, 23 Nov 2026 22:08:13 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:442ac0ec8a1603afee8b1fac80541bd8458e3ce7fa853bbaae7d8d36bd4bbaf5`  
		Last Modified: Mon, 23 Nov 2026 22:08:14 GMT  
		Size: 10.6 KB (10576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2387b181c447c25369257292ff656a515ecf48e04fb2ea57888c42cf556215`  
		Last Modified: Mon, 23 Nov 2026 22:08:14 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b914dd3b18f3d21feb7fce18b6839b323cf73c2507e51a6357d621b9fc5a74`  
		Last Modified: Mon, 23 Nov 2026 22:08:04 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a294a13ca4b6ba180da614abbb2bf333c66c843bd6cff32d23b216911b94a32f`  
		Last Modified: Mon, 23 Nov 2026 22:08:15 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2d663d4c33f9b3638030c3ab77a7826a21306153e53823ad13bf52b413fb1f`  
		Last Modified: Mon, 23 Nov 2026 22:08:15 GMT  
		Size: 5.0 KB (4958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.3.13` - unknown; unknown

```console
$ docker pull percona@sha256:2e0de11d3102ccf9cb64debb8361bdd485934b9a497c975f473d17c38ecff3ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b2e21625bc34815b11213398d930e8eb3689e82b3d1efdbc335d6d0c144ae7`

```dockerfile
```

-	Layers:
	-	`sha256:e3c1b9dbd9ea68172271f35c30835671dfdd95f8785b95daca082a9770faa9bc`  
		Last Modified: Mon, 23 Nov 2026 22:08:13 GMT  
		Size: 33.9 KB (33856 bytes)  
		MIME: application/vnd.in-toto+json

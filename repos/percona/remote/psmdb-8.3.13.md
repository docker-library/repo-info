## `percona:psmdb-8.3.13`

```console
$ docker pull percona@sha256:57163e40661f2f368c68d41f0cc4abaf1cfb0767c12fadcf5ba4b5fd931d9574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.3.13` - linux; amd64

```console
$ docker pull percona@sha256:f55538b2110696b9aed62820195b88ceccbebe036fca46a5779d0621bb8ccfbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.0 MB (397954958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539fc157c5606f4a2ba494bedd5a7532a0146874be7fa591ab3d44d35264bacb`
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
# Wed, 11 Nov 2026 22:33:54 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 11 Nov 2026 22:33:54 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 11 Nov 2026 22:33:54 GMT
ENV PSMDB_VERSION=8.3.13-4
# Wed, 11 Nov 2026 22:33:54 GMT
ENV OS_VER=el9
# Wed, 11 Nov 2026 22:33:54 GMT
ENV FULL_PERCONA_VERSION=8.3.13-4.el9
# Wed, 11 Nov 2026 22:33:54 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Wed, 11 Nov 2026 22:33:54 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Wed, 11 Nov 2026 22:33:54 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Wed, 11 Nov 2026 22:33:54 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Wed, 11 Nov 2026 22:33:54 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 11 Nov 2026 22:33:54 GMT
ENV PSMDB_REPO=release
# Wed, 11 Nov 2026 22:33:54 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 11 Nov 2026 22:33:54 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 11 Nov 2026 22:33:54 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 11 Nov 2026 22:33:54 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 11 Nov 2026 22:34:16 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-83 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-83/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 11 Nov 2026 22:34:17 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 11 Nov 2026 22:34:17 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 11 Nov 2026 22:34:17 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 11 Nov 2026 22:34:17 GMT
ENV GOSU_VERSION=1.11
# Wed, 11 Nov 2026 22:34:19 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 11 Nov 2026 22:34:19 GMT
VOLUME [/data/db]
# Wed, 11 Nov 2026 22:34:19 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 11 Nov 2026 22:34:19 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 11 Nov 2026 22:34:19 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 11 Nov 2026 22:34:19 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:34:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 22:34:19 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 11 Nov 2026 22:34:19 GMT
USER 1001
# Wed, 11 Nov 2026 22:34:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d17fc3a27a551e8e18348f89a75752fab8f83ab83c8dd4d22bcf3418f9e6a06a`  
		Last Modified: Wed, 11 Nov 2026 05:24:43 GMT  
		Size: 40.7 MB (40684080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef0e54cdff1c2dbef6880a1cd3439591ebf05b202dcf4a06cfe4eb918b14d39`  
		Last Modified: Wed, 11 Nov 2026 22:34:55 GMT  
		Size: 9.2 MB (9184357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15621495beb31c7e27f00d1367b48e6ff3367d5d7ab3b7b5a6854eabdcde744`  
		Last Modified: Wed, 11 Nov 2026 22:35:02 GMT  
		Size: 347.1 MB (347133553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2bd32ff2a52ee7e449d47cfac905f279dc4313ca428074c51b6ba7c20404d3`  
		Last Modified: Wed, 11 Nov 2026 22:34:55 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023892451ef685db4dce968815b2bcccbafba1fec1ca657f85fd5bd01d81ef4a`  
		Last Modified: Wed, 11 Nov 2026 22:34:56 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e8c81e1a1f464eca7799b90c96f3cc2d415355043f1e2e56e92ceb8663ff1c`  
		Last Modified: Wed, 11 Nov 2026 22:34:57 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8697c39208d75de711b5c1f5b3e5438d442deff0e756b04bb5a8e33bac4d1a4f`  
		Last Modified: Wed, 11 Nov 2026 22:34:57 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c2fa2105962e03e661ff4e8439b6bc7b6e5f6796b1e4b0440621fd68b0461e3`  
		Last Modified: Wed, 11 Nov 2026 22:34:58 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:809c75e6c06cc693071ad16ca9f390261c8dbfdbccebaabbe49a2e30b9da4038`  
		Last Modified: Wed, 11 Nov 2026 22:34:58 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5214ce75dc222e7d312e3be9f1c80b7e895531183a4677bdc74cc8b8e9638ff`  
		Last Modified: Wed, 11 Nov 2026 22:34:59 GMT  
		Size: 5.0 KB (4961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.3.13` - unknown; unknown

```console
$ docker pull percona@sha256:cc830d5fe4b9dc14e7d12c8ad48fa4cd37db587afb671ac9a1a8f38e2867fbdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c00c05a77410b87887041c6c1538eb5c75d0c57dea256d2d761e4dcb60e7c92`

```dockerfile
```

-	Layers:
	-	`sha256:793b8f57c9410c5491559ac9bbbed6cbccad88c6ffe0dbc300a48796565bf599`  
		Last Modified: Wed, 11 Nov 2026 22:34:55 GMT  
		Size: 33.9 KB (33857 bytes)  
		MIME: application/vnd.in-toto+json

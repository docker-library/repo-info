## `percona:psmdb-8.0.26`

```console
$ docker pull percona@sha256:dd4b597b62f0c2bc9a5ed1c80704bc19d71307ab5d3e1e52511bfa457a2ad74c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0.26` - linux; amd64

```console
$ docker pull percona@sha256:4abdcbcafcfeedd739e0b5a5d5b0b4f81da2ddf91070110f0ad513018229c92b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.7 MB (320719013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae8f08f1d6af9e245aa42f8888df1492f2bc193f9c32a1a5575609ad650a92e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:20:10 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:10 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 16 Jul 2026 00:20:10 GMT
ENV PSMDB_VERSION=8.0.26-11
# Thu, 16 Jul 2026 00:20:10 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:10 GMT
ENV FULL_PERCONA_VERSION=8.0.26-11.el9
# Thu, 16 Jul 2026 00:20:10 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 16 Jul 2026 00:20:10 GMT
ENV PSMDB_REPO=testing
# Thu, 16 Jul 2026 00:20:10 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Thu, 16 Jul 2026 00:20:10 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:10 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:10 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 16 Jul 2026 00:20:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 16 Jul 2026 00:20:25 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 16 Jul 2026 00:20:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 16 Jul 2026 00:20:25 GMT
ENV GOSU_VERSION=1.11
# Thu, 16 Jul 2026 00:20:27 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 16 Jul 2026 00:20:27 GMT
VOLUME [/data/db]
# Thu, 16 Jul 2026 00:20:28 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 16 Jul 2026 00:20:28 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:28 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:28 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:28 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 16 Jul 2026 00:20:28 GMT
USER 1001
# Thu, 16 Jul 2026 00:20:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b6b353d18cbf73d80147ef83abe4750dd8e24a64488e55787d4c5e9b515fbc`  
		Last Modified: Thu, 16 Jul 2026 00:20:59 GMT  
		Size: 8.8 MB (8818433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a84fce823d9e5d1b8e102ce6ac78f6a4ed3e338819558b451ee67caa681cdc1`  
		Last Modified: Thu, 16 Jul 2026 00:21:04 GMT  
		Size: 270.3 MB (270259474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf422d796a2fb5ccd9be489bbf51e5203812baf9a0fcc07505263bfe2bbc73f`  
		Last Modified: Thu, 16 Jul 2026 00:20:58 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1262597b4a53d6f5a08fe814cee5ed4ad1f99975793682ec6700fd0b77976f2`  
		Last Modified: Thu, 16 Jul 2026 00:21:00 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d24f136dd5259615e71f4d0e924b9b290e356d771bc44100bfa31f76c35dde`  
		Last Modified: Thu, 16 Jul 2026 00:21:00 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10165b9ad54b1c4e888f77ead4ea59991f07398e8807d7d930cdee7136f4c224`  
		Last Modified: Thu, 16 Jul 2026 00:21:01 GMT  
		Size: 914.5 KB (914519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f9ec6be0fc346f0fa4dbe9634799a2067354b6a9ba79eedb7def4f2b52b291a`  
		Last Modified: Thu, 16 Jul 2026 00:21:01 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edf209a28045882c94179094b1a7fe61f583f31fbf427d5cfe819d64e522fd42`  
		Last Modified: Thu, 16 Jul 2026 00:21:02 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50af325a9797def9c6650ebc39aebd8c6ffcae96121a14a1218bd95c40002f6`  
		Last Modified: Thu, 16 Jul 2026 00:21:02 GMT  
		Size: 5.0 KB (4965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0.26` - unknown; unknown

```console
$ docker pull percona@sha256:9e4df763cb5efcb05d629107391b75a53c29640f22932709d4a38684782de7d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b17125b3205b52c95af47e43e1348be9eb9ff16daddc82f836dbb448a343e52`

```dockerfile
```

-	Layers:
	-	`sha256:8a1b0f3ce00a944cbfca4b6bc9da2276884a8180a9c0028581502fa282d5fbab`  
		Last Modified: Thu, 16 Jul 2026 00:20:58 GMT  
		Size: 32.7 KB (32672 bytes)  
		MIME: application/vnd.in-toto+json

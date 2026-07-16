## `percona:psmdb-7.0.37`

```console
$ docker pull percona@sha256:bc7526c6d802dedaa9e98a999e9f8a28c5be8ecf37e26336a049c99db21e3b2b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0.37` - linux; amd64

```console
$ docker pull percona@sha256:af77a270b34aa0257552335f8e1ea99b7157faf31e3f242651d51c181b5cc8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.6 MB (300578179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c077cea4ea3b153b41fff5649111c44385d3876b965f33d67a9c8686d7fe208`
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
# Thu, 16 Jul 2026 00:20:21 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 16 Jul 2026 00:20:21 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 16 Jul 2026 00:20:21 GMT
ENV PSMDB_VERSION=7.0.37-20
# Thu, 16 Jul 2026 00:20:21 GMT
ENV OS_VER=el9
# Thu, 16 Jul 2026 00:20:21 GMT
ENV FULL_PERCONA_VERSION=7.0.37-20.el9
# Thu, 16 Jul 2026 00:20:21 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 16 Jul 2026 00:20:21 GMT
ENV PSMDB_REPO=release
# Thu, 16 Jul 2026 00:20:21 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 16 Jul 2026 00:20:21 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 16 Jul 2026 00:20:21 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 16 Jul 2026 00:20:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 16 Jul 2026 00:20:36 GMT
ENV GOSU_VERSION=1.11
# Thu, 16 Jul 2026 00:20:37 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 16 Jul 2026 00:20:37 GMT
VOLUME [/data/db]
# Thu, 16 Jul 2026 00:20:37 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 16 Jul 2026 00:20:38 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 16 Jul 2026 00:20:38 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 16 Jul 2026 00:20:38 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:38 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 16 Jul 2026 00:20:38 GMT
USER 1001
# Thu, 16 Jul 2026 00:20:38 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fe953d207630af46f537398760af5113bc62857a09e8f568f0a83e1fdd0c70`  
		Last Modified: Thu, 16 Jul 2026 00:21:09 GMT  
		Size: 8.8 MB (8818419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acca8354762e7aa630ad396b1b1d84233181ca2da04dbaeb4cb0d31a29b93710`  
		Last Modified: Thu, 16 Jul 2026 00:21:13 GMT  
		Size: 250.1 MB (250118652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0817dad9532ddbc707dbdd65feb52e6aad58053bcf602aefeb32febe2328181d`  
		Last Modified: Thu, 16 Jul 2026 00:21:08 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b02b9d123d14b7b090666f123ab70cf47e549f88fd1eafca3de24d79341bf3dc`  
		Last Modified: Thu, 16 Jul 2026 00:21:08 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96a67f604ddec5363a44d3a41aa49c2ad041a7a13862db806b24594c5a324c8`  
		Last Modified: Thu, 16 Jul 2026 00:21:09 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a55d3f595bf1b4f330325625ad2a0ac2ac203db0484a4d7fc31a3553629e4a6`  
		Last Modified: Thu, 16 Jul 2026 00:21:09 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dacdb500ea4bfd5b6d13cbdcb094405da9c72f918282557eea765ce1ea86675`  
		Last Modified: Thu, 16 Jul 2026 00:21:10 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9caad28a3a2eedb28a891e3cb4ffbe4e5234e324e93740af7bb352823e919f`  
		Last Modified: Thu, 16 Jul 2026 00:21:10 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76fa495d7df3af8c33220f1b413c0b15c0907fb8ebd6f82be31ee23e6f81b3e`  
		Last Modified: Thu, 16 Jul 2026 00:21:11 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0.37` - unknown; unknown

```console
$ docker pull percona@sha256:1df4f853f33843ebe8fe180d837a8fe20df741263f71971813ae79a60dd5ef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384e34fbd83e205cc2c9156f1af2dd8ca0fee69a4bb17faa4631c454707c7785`

```dockerfile
```

-	Layers:
	-	`sha256:8bd2f2610cd314be9d2a74060f61b8a161f5fa32529b28efb7356903c368a7c2`  
		Last Modified: Thu, 16 Jul 2026 00:21:08 GMT  
		Size: 32.4 KB (32369 bytes)  
		MIME: application/vnd.in-toto+json

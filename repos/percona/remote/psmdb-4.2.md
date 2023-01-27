## `percona:psmdb-4.2`

```console
$ docker pull percona@sha256:22f6a6574e9fc92f57707c572d658b8e0a0cfd219f3b10312bfde53ac849dd11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-4.2` - linux; amd64

```console
$ docker pull percona@sha256:48570da428bcbae7c8923c7d4b43aa77cd02500b77369611b9f32beeb989eaf5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.9 MB (177883869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd418dd34c04114eab5806f50e093a3fa0d071576f6ee6ebe5266343ef28a001`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:19:33 GMT
ENV PSMDB_VERSION=4.2.21-21
# Wed, 18 Jan 2023 04:19:33 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:19:33 GMT
ENV FULL_PERCONA_VERSION=4.2.21-21.el8
# Wed, 18 Jan 2023 04:19:33 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 18 Jan 2023 04:19:36 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release enable psmdb-42 release
# Wed, 18 Jan 2023 04:20:13 GMT
RUN set -ex;     dnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-shell-${FULL_PERCONA_VERSION}         jq         procps-ng         oniguruma         tar         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-42/yum/release/8/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db
# Wed, 18 Jan 2023 04:20:14 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 18 Jan 2023 04:20:14 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Wed, 18 Jan 2023 04:20:15 GMT
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Wed, 18 Jan 2023 04:20:15 GMT
ENV GOSU_VERSION=1.11
# Wed, 18 Jan 2023 04:20:18 GMT
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE
# Wed, 18 Jan 2023 04:20:19 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 18 Jan 2023 04:20:20 GMT
VOLUME [/data/db]
# Wed, 18 Jan 2023 04:20:20 GMT
COPY file:f695d42c4add7cde05638253f593b5a3f599ec240da8e578b8c6049c6e1672a9 in /entrypoint.sh 
# Wed, 18 Jan 2023 04:20:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jan 2023 04:20:20 GMT
EXPOSE 27017
# Wed, 18 Jan 2023 04:20:20 GMT
USER 1001
# Wed, 18 Jan 2023 04:20:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71caa6db4129a44db98716cbba7e827ba33307904ccfb2a952a8ec6a34114dfd`  
		Last Modified: Wed, 18 Jan 2023 04:22:53 GMT  
		Size: 3.8 MB (3771829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f367cf53594355f2219e5f22fbe96493cad27ba0a24c4b763b7ff234662ff44f`  
		Last Modified: Wed, 18 Jan 2023 04:23:02 GMT  
		Size: 77.6 MB (77590229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc33952c473fb2ecc3eb05a07fff5521de2de0ecab9aacff2d4818fee685f54`  
		Last Modified: Wed, 18 Jan 2023 04:22:52 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e01f027f4e2b4e7095465410296e3859908b12e7f249d98b6ed5a514812a7b`  
		Last Modified: Wed, 18 Jan 2023 04:22:50 GMT  
		Size: 4.1 KB (4103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3bd715cb6a17468d8ba5a25fb325a9154749185a59232c79dff90080bf1600`  
		Last Modified: Wed, 18 Jan 2023 04:22:50 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11839898688b9fc880ac72afaf6b1d7257b783af133335fa9a8b13a4ca62d9e7`  
		Last Modified: Wed, 18 Jan 2023 04:22:51 GMT  
		Size: 914.5 KB (914541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e3fffbb0b116805d5a5314ec3a2a1d5e4cd6dbc735b2895bcda7d6b8dce265`  
		Last Modified: Wed, 18 Jan 2023 04:22:52 GMT  
		Size: 8.1 MB (8137890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0df3279c5ef72d8aa8332294439b401c004706ea48f2e18e16ac9836747d6a`  
		Last Modified: Wed, 18 Jan 2023 04:22:50 GMT  
		Size: 4.6 KB (4557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:5-trixie`

```console
$ docker pull neo4j@sha256:22ec5cd05a8cbb372fc4bed5e384c30bc75fd92504c72be4462039761b105f61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:c1c0dccc57dd2dfb33d9fcfc95d6e88f46a08e50e6a0dd2ebbc2742718ebfe01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.3 MB (364321233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc610e3f81d8fe37770a5d1f383ab33e9a8af11c83206987e16cb7992ca37307`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:26:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:26:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:26:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=f22934e3f7c1ddae743d91243f38aa492f007471c6a2bdbdc882fe2b3e1e4bdd NEO4J_TARBALL=neo4j-community-5.26.30-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 09 Sep 2026 03:26:26 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.30-unix.tar.gz
# Wed, 09 Sep 2026 03:26:26 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 09 Sep 2026 03:26:48 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.30-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 09 Sep 2026 03:26:48 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:26:48 GMT
WORKDIR /var/lib/neo4j
# Wed, 09 Sep 2026 03:26:48 GMT
VOLUME [/data /logs]
# Wed, 09 Sep 2026 03:26:48 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 09 Sep 2026 03:26:48 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 03:26:48 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0437c55861fdbae2a2edee4974e2f7bef3ce2d42850356e337a9598dd93a4f`  
		Last Modified: Wed, 09 Sep 2026 03:27:13 GMT  
		Size: 158.1 MB (158120336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a60c02d72edef68731bbf945149efd34e35c400b8351ff5070df3b063e0607`  
		Last Modified: Wed, 09 Sep 2026 03:27:07 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639f1a594dda6e8b69dadca5089fb8d1c017d03ed0598fe58add697399b39d4f`  
		Last Modified: Wed, 09 Sep 2026 03:27:13 GMT  
		Size: 176.4 MB (176398147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:c47363939482877e880204edf634cdb26f816d62a6f40675fee2e417f5603338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ea9a301bd7997dbb6360882350719a56b6388ed7754ec068edcbcb07eaf60b`

```dockerfile
```

-	Layers:
	-	`sha256:72c7da17c2ee3b19541eb6014ae6c5013fe287c648e3b7c4593e045e02fef315`  
		Last Modified: Wed, 09 Sep 2026 03:27:08 GMT  
		Size: 4.3 MB (4288349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae1a43f6a013139df984da0e76d06d23ee62b7d71e558bf77e4105bdc7435d93`  
		Last Modified: Wed, 09 Sep 2026 03:27:07 GMT  
		Size: 21.2 KB (21222 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:6ac7881170786b1305601b6d6da2053aabfabf2b06669fc9ae211c32239c4a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.4 MB (362408723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc9beb5f6d0a12caa2d2686fa7ba0d131b48805cd15c2d5a3915a468c9cdaa4`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:38:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:38:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:38:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=f22934e3f7c1ddae743d91243f38aa492f007471c6a2bdbdc882fe2b3e1e4bdd NEO4J_TARBALL=neo4j-community-5.26.30-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 09 Sep 2026 03:38:28 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.30-unix.tar.gz
# Wed, 09 Sep 2026 03:38:28 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 09 Sep 2026 03:38:51 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.30-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 09 Sep 2026 03:38:51 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:38:51 GMT
WORKDIR /var/lib/neo4j
# Wed, 09 Sep 2026 03:38:51 GMT
VOLUME [/data /logs]
# Wed, 09 Sep 2026 03:38:51 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 09 Sep 2026 03:38:51 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 03:38:51 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9bee0b48ac16e9f5a79396a0a089788c88bbbf7d0e6e2884bd6e48afbd7db6`  
		Last Modified: Wed, 09 Sep 2026 03:39:17 GMT  
		Size: 156.4 MB (156401916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8b4747b7b9a79b50c490f3d7dae9a9af722992f99476ced8389dded55c96b0`  
		Last Modified: Wed, 09 Sep 2026 03:39:11 GMT  
		Size: 10.1 KB (10061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674bc1280f91e99e891d96578b29b3e082ee782ae3272feb14bd774096c06161`  
		Last Modified: Wed, 09 Sep 2026 03:39:17 GMT  
		Size: 175.8 MB (175837132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:9d6e6be5d9616c2be76163c45303fb98f263bd0fcb8dfd554d8083cd09d61b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d9e115765bb133c7f484880fee11160464acd8f0bf93090f95e5ec8c4d0611e`

```dockerfile
```

-	Layers:
	-	`sha256:4b41ff80658fed70b2343acf6d13e35d8e956f2820c98cd42bb392f18d66635f`  
		Last Modified: Wed, 09 Sep 2026 03:39:11 GMT  
		Size: 4.3 MB (4282867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b399888e93430267d1a94648a2290ee0168124760d720ec9758b7d7d4db98a2e`  
		Last Modified: Wed, 09 Sep 2026 03:39:10 GMT  
		Size: 21.4 KB (21449 bytes)  
		MIME: application/vnd.in-toto+json

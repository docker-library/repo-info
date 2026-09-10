## `neo4j:enterprise-trixie`

```console
$ docker pull neo4j@sha256:776f96b06422fca5cc982c38f4fb832b2372a9c3b31b96371343732b28eacc2c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:ade8e0aba228222e3a23c530da8779876920b02332d7b3589f51bda8e7ab1347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **554.8 MB (554831081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e965f6fd0dd267e27d547179b293382570415d5af1dbe710cc3a2ca7a8dd78da`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:26:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:26:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:26:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=506b416a8816b4b1d5430fb89ad1d1b28cc62695a39289e2a2db0113ed2b6f72 NEO4J_TARBALL=neo4j-enterprise-2026.07.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 09 Sep 2026 03:26:21 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.07.1-unix.tar.gz
# Wed, 09 Sep 2026 03:26:21 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 09 Sep 2026 03:26:49 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.07.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 09 Sep 2026 03:26:49 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:26:49 GMT
WORKDIR /var/lib/neo4j
# Wed, 09 Sep 2026 03:26:49 GMT
VOLUME [/data /logs]
# Wed, 09 Sep 2026 03:26:49 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 09 Sep 2026 03:26:49 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 03:26:49 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54936f78352e51743b953a7d4aad6836cb4f91c38f016b7b0dc3861701c40828`  
		Last Modified: Wed, 09 Sep 2026 03:27:19 GMT  
		Size: 92.6 MB (92615071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e8a3cfe0ef6d1530c50453045b9fae613e4cd1b126574a09a3addd76717c7a5`  
		Last Modified: Wed, 09 Sep 2026 03:27:15 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb3f9f85d2aaa72e2dae926dcf5c92d2c042ee4ae03ae7ae6f2ae4c844adc22`  
		Last Modified: Wed, 09 Sep 2026 03:27:24 GMT  
		Size: 432.4 MB (432413302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:b2bd3cf86d5092b05799e729d5d18bf172d6f02f1d0e108665c070ca1e937256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4702027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1490eb696d6b9fdf561fb6bc8ed03c65dbac7b14f04e98585c784ef07be1c0fc`

```dockerfile
```

-	Layers:
	-	`sha256:343f21465dc16b5ed889b3b0a5bc6deb887bacdc1a9b6d0bd35c68ef8e197704`  
		Last Modified: Wed, 09 Sep 2026 03:27:15 GMT  
		Size: 4.7 MB (4681910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91828dbe3e258c3d28939bec4f8f738b35e08c7c5c5a4a0e298391f5c862213b`  
		Last Modified: Wed, 09 Sep 2026 03:27:15 GMT  
		Size: 20.1 KB (20117 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:8c515d36bbad7dca1cbe685de9369d52df35bddaeecd410acc91e3280153f421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.6 MB (553554803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ba9c0b9ee2ef96f70ed47a72e8e7a45c21b001471b42cad415d35b047f1f65`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:38:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:38:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:38:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=506b416a8816b4b1d5430fb89ad1d1b28cc62695a39289e2a2db0113ed2b6f72 NEO4J_TARBALL=neo4j-enterprise-2026.07.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 09 Sep 2026 03:38:18 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.07.1-unix.tar.gz
# Wed, 09 Sep 2026 03:38:18 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 09 Sep 2026 03:38:45 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.07.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 09 Sep 2026 03:38:45 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:38:45 GMT
WORKDIR /var/lib/neo4j
# Wed, 09 Sep 2026 03:38:45 GMT
VOLUME [/data /logs]
# Wed, 09 Sep 2026 03:38:45 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 09 Sep 2026 03:38:45 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 03:38:45 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc2269e5f3ffcd42f61ab77181f7fde4bc3e774ae2ee96cb218b446d2659bb7`  
		Last Modified: Wed, 09 Sep 2026 03:39:17 GMT  
		Size: 91.5 MB (91532226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254f7b9988bb2ec834f86df17c67ee162099f32ffd3a05912e6530526d7e2551`  
		Last Modified: Wed, 09 Sep 2026 03:39:13 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c250e508c4510fd775e6bc37e159d33b22ce989b887d30f0371b154253af515a`  
		Last Modified: Wed, 09 Sep 2026 03:39:23 GMT  
		Size: 431.9 MB (431852942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:f6ec45de3db19f0f8bd400c8ae36ae91bd47b78f26dd9769eaf2dd4beb94d8d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4696672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d082fbcc64cfca48e44a898c3b318685a681d776007d8b741f1af6e4d17a816`

```dockerfile
```

-	Layers:
	-	`sha256:ed9eab61b4c22be0bf47dea1d9081d7a3b3815eedf843e1c3fb934e608ff6db0`  
		Last Modified: Wed, 09 Sep 2026 03:39:13 GMT  
		Size: 4.7 MB (4676377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52c8916d326d94a1bc4d07b5a7f73aae71ed8fa9da884e1ff4465e483e88b551`  
		Last Modified: Wed, 09 Sep 2026 03:39:13 GMT  
		Size: 20.3 KB (20295 bytes)  
		MIME: application/vnd.in-toto+json

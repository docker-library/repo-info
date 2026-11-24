## `neo4j:latest`

```console
$ docker pull neo4j@sha256:eedb3acecd599df040cc3eef195f7b2bc723876b12dbef87de470989a3104bf0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:213f37bfcb602d573e7df44d3b92b99a7151a269547bfc73cf66c75afb16d0ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.5 MB (379528102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3dda1c1f843460d2985ac8d8805acdb17b226a43100af71666d6b37af6791c`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 18:42:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 18:42:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 18:42:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fcbccee832175fd8b873ca7d8228dbde4cb5cce43f9053833cc7517dc4dd6f31 NEO4J_TARBALL=neo4j-community-2026.10.2-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 24 Nov 2026 18:42:12 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
# Tue, 24 Nov 2026 18:42:12 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 24 Nov 2026 18:42:38 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 24 Nov 2026 18:42:38 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 18:42:38 GMT
WORKDIR /var/lib/neo4j
# Tue, 24 Nov 2026 18:42:38 GMT
VOLUME [/data /logs]
# Tue, 24 Nov 2026 18:42:38 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 24 Nov 2026 18:42:38 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 18:42:38 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c63a698e656d370c76c42194b2490645f069cfd31a496b139ffb7ec500b293`  
		Last Modified: Tue, 24 Nov 2026 18:43:03 GMT  
		Size: 92.6 MB (92613957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0482f654beaa6979cd1093de4fb55e512462b5d99db57f9ea1966e42c93b815a`  
		Last Modified: Tue, 24 Nov 2026 18:42:59 GMT  
		Size: 10.0 KB (10041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4b72df517ca0eb9293c9bbb4c34a2b6648bd8e9a201cc5e121bbf6be18cc13`  
		Last Modified: Tue, 24 Nov 2026 18:43:06 GMT  
		Size: 257.1 MB (257061890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:latest` - unknown; unknown

```console
$ docker pull neo4j@sha256:ddc1aaed14be124b00290210a79c487d8f4abaa3964345b1dd7f49c2d2b42a84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4402936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8604a1153b44a2fef2d646e79feff6cf0982e9cf689c02c5bb855937070c5c02`

```dockerfile
```

-	Layers:
	-	`sha256:2eef40d0bc8ab1924f6f90acc59824ed6a4c0a3b7dc61b5aea7ee4dab4ce4bf1`  
		Last Modified: Tue, 24 Nov 2026 18:43:00 GMT  
		Size: 4.4 MB (4380429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a94c3d55720fd582ae7035013ed87fdddb4ed405dd7f6ab5057d10127c7fa20`  
		Last Modified: Tue, 24 Nov 2026 18:42:59 GMT  
		Size: 22.5 KB (22507 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:latest` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:1845a89f2dae2c504eb154c3d63dc3aa167d5152c94041dd97c23234f42f479b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377896986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4682ffe98321e138fea83d30be68731c534f4a12fbbe6e47b2e932377cf6623e`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 18:42:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 18:42:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 18:42:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fcbccee832175fd8b873ca7d8228dbde4cb5cce43f9053833cc7517dc4dd6f31 NEO4J_TARBALL=neo4j-community-2026.10.2-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 24 Nov 2026 18:42:44 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
# Tue, 24 Nov 2026 18:42:44 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 24 Nov 2026 18:43:09 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 24 Nov 2026 18:43:09 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 18:43:09 GMT
WORKDIR /var/lib/neo4j
# Tue, 24 Nov 2026 18:43:09 GMT
VOLUME [/data /logs]
# Tue, 24 Nov 2026 18:43:09 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 24 Nov 2026 18:43:09 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 18:43:09 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2291bfe01ab7e09ca2197b306e9e957d421afa98f49611fcb8229bf3788afe1f`  
		Last Modified: Tue, 24 Nov 2026 18:43:36 GMT  
		Size: 91.6 MB (91553965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24795543f9e604a3245dd9aae635bb9473c3ed6c26617bc41a872d06b2fbc909`  
		Last Modified: Tue, 24 Nov 2026 18:43:31 GMT  
		Size: 10.0 KB (10040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5ebf8a36eef08c97cedb230bc6735e858160d1943be55db0b09ea8c2768bf3`  
		Last Modified: Tue, 24 Nov 2026 18:43:40 GMT  
		Size: 256.1 MB (256134915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:latest` - unknown; unknown

```console
$ docker pull neo4j@sha256:5338670f3b7c8553b616109e02343ee3c57cf977e585fcd7e210961b1c46db37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4397776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea15c259791514dd45b1648e251e50c8880635d3ac9b1795394c5e5d2786fb4b`

```dockerfile
```

-	Layers:
	-	`sha256:2c21d7eac8c84aa03649dab8f436e15c6d996779d1194b2fa56c460df1b72256`  
		Last Modified: Tue, 24 Nov 2026 18:43:32 GMT  
		Size: 4.4 MB (4374993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7ef63c35a92b45cd767e403a7faac81978346d0f44a5dd5865671be1988a8bc`  
		Last Modified: Tue, 24 Nov 2026 18:43:31 GMT  
		Size: 22.8 KB (22783 bytes)  
		MIME: application/vnd.in-toto+json

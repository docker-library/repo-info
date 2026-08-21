## `neo4j:2026-community-trixie`

```console
$ docker pull neo4j@sha256:13cc0946a6aadd88cebd526d0127d5ae563f1ea1a4c0d9c3fe122d33a735f433
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-community-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:78443fbeecdabd7721c0ef10fd0d63d2093e1cf03bebf86f57e035f88643d9e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.5 MB (395471863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bba828288cf4d3122920074e1674a250c3bc72abe5ca808241a550bc8a3cc3c`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:20:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:20:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:20:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fbb3a11705cdbc87953242e3667dad37cd39f8d1e1168faa642c01a2fd1d144d NEO4J_TARBALL=neo4j-community-2026.07.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 18 Aug 2026 20:20:13 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
# Tue, 18 Aug 2026 20:20:13 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 18 Aug 2026 20:20:37 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 18 Aug 2026 20:20:37 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:20:37 GMT
WORKDIR /var/lib/neo4j
# Tue, 18 Aug 2026 20:20:37 GMT
VOLUME [/data /logs]
# Tue, 18 Aug 2026 20:20:37 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 18 Aug 2026 20:20:37 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 20:20:37 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82378d25f8e755a63e407d09d9a724c70bd8b6252009cd450a6c5e05c2ffec62`  
		Last Modified: Tue, 18 Aug 2026 20:21:03 GMT  
		Size: 92.6 MB (92574597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487bf3b807e09a48d027d927a504e02f3395b0547ae09cf1a710d6d625431ae0`  
		Last Modified: Tue, 18 Aug 2026 20:20:59 GMT  
		Size: 10.0 KB (10022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6865e5d980bf82acd12faddf8aca9103f84fec6ae49681003b768124694ef69`  
		Last Modified: Tue, 18 Aug 2026 20:21:06 GMT  
		Size: 273.1 MB (273106447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:6b657cfcade3ffa128f736926b6471c06490262ce19c3f83527ab83c4f175193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4388563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914f6af22a779f55b47e0c98c93e045622accd0b451b667b3b37bd2d3dd67d02`

```dockerfile
```

-	Layers:
	-	`sha256:0674a2b3a00a20f0460e4eab62eb279001a3ab921a553491d5ad31973d57f2ae`  
		Last Modified: Tue, 18 Aug 2026 20:21:00 GMT  
		Size: 4.4 MB (4366054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:790f414fed13fc999aa6eda26e1b5d46dcfceb648f625e15bad74a0f8680f9bd`  
		Last Modified: Tue, 18 Aug 2026 20:20:59 GMT  
		Size: 22.5 KB (22509 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-community-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:cf125a33bc7522fb1c3a87558e172a1feec45028085e82ff3818a6e8ebb41a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.9 MB (393866511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be5e5c56c69b1c7e7cc69085724a74c5738dc5a7dfd0d2e53dc743b4d6797c0`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:46:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:46:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:46:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fbb3a11705cdbc87953242e3667dad37cd39f8d1e1168faa642c01a2fd1d144d NEO4J_TARBALL=neo4j-community-2026.07.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 21 Aug 2026 18:46:54 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
# Fri, 21 Aug 2026 18:46:54 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 21 Aug 2026 18:47:27 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 21 Aug 2026 18:47:27 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:47:27 GMT
WORKDIR /var/lib/neo4j
# Fri, 21 Aug 2026 18:47:27 GMT
VOLUME [/data /logs]
# Fri, 21 Aug 2026 18:47:27 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 21 Aug 2026 18:47:27 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:47:27 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b251585bd0542c2c5f24f1beac761377c526ef449e2de784bcfbe59b2d04e6`  
		Last Modified: Fri, 21 Aug 2026 18:47:54 GMT  
		Size: 91.5 MB (91532188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de8354a8d8f550ef2786eb1ba91a37453f4f5d11a432a985eb1b0a169bce622`  
		Last Modified: Fri, 21 Aug 2026 18:47:50 GMT  
		Size: 10.0 KB (10019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81865e0bb42efd34b8b8e5c32542c8e6bcba6570831806e4d8eff5bd57ec885`  
		Last Modified: Fri, 21 Aug 2026 18:47:57 GMT  
		Size: 272.2 MB (272180663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:725ef9ab62f9aa8a5c2afef6b1ca78dcdc0f4743e55543768d2f9f339c08d6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c74ab4e04e512e8a4599b406f6109f91f495e02d5343c915a9cb9e0cc8df00`

```dockerfile
```

-	Layers:
	-	`sha256:fd9f2d472f8b69087b1679de93bb7d2bd6c6cf7eb6ca980f37af485472d11a5e`  
		Last Modified: Fri, 21 Aug 2026 18:47:51 GMT  
		Size: 4.4 MB (4360617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba49f2360c04926f5f79cc70e3c57ed1b0299fe4ab5f0ad0418cd36e5c3fbe48`  
		Last Modified: Fri, 21 Aug 2026 18:47:50 GMT  
		Size: 22.8 KB (22782 bytes)  
		MIME: application/vnd.in-toto+json

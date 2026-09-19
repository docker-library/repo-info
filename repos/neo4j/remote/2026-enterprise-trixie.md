## `neo4j:2026-enterprise-trixie`

```console
$ docker pull neo4j@sha256:e8402c7f4687a27bf4fa854bb7020777aa3cc971c5b202334509ca452f1f6c44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:79bd1f8372c339f78543bbbf102b826e315b3b54f74ffc6b216ee308618e9d5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **588.0 MB (588040002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa5202def4d83ac65a5335ee1f0c07534674715113cfaab3aa683b5d2f3f8c7`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:17:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:17:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:17:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=a5f6e02c6371727ebaabb31326557c178ebcd4bd608a33142efe9ff6ef8c2cd4 NEO4J_TARBALL=neo4j-enterprise-2026.08.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Sat, 19 Sep 2026 01:17:08 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.08.1-unix.tar.gz
# Sat, 19 Sep 2026 01:19:44 GMT
COPY ./local-package/* /startup/ # buildkit
# Sat, 19 Sep 2026 01:20:14 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.08.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Sat, 19 Sep 2026 01:20:14 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:20:14 GMT
WORKDIR /var/lib/neo4j
# Sat, 19 Sep 2026 01:20:14 GMT
VOLUME [/data /logs]
# Sat, 19 Sep 2026 01:20:14 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Sat, 19 Sep 2026 01:20:14 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:20:14 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d517f378754853581549cf7bb80477b54405b4139a7e4b3bb26637b79ac7059c`  
		Last Modified: Sat, 19 Sep 2026 01:18:42 GMT  
		Size: 92.6 MB (92615109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c404e35e193175d4b679d34c62cadfea99b0cb74ab6c9cad069e292d7b304543`  
		Last Modified: Sat, 19 Sep 2026 01:20:41 GMT  
		Size: 10.0 KB (10016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de74356d150ebab092d9a6d130ab62c59268a95f5996b2cda13fd8d119b0fc6`  
		Last Modified: Sat, 19 Sep 2026 01:20:51 GMT  
		Size: 465.6 MB (465584427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:7583946b150cc7b92b65ff5dee4ea9f27ce83399bff77e816dfcfcea9ef540aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4723383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c0f09749925c71dd7edb5e035e6a56557953190a305933ad36ab47d8de7024`

```dockerfile
```

-	Layers:
	-	`sha256:82c9fa7acc6d1c4da17127d2535e486d9a29089c0ac259c0bb613391d0d6b23f`  
		Last Modified: Sat, 19 Sep 2026 01:20:42 GMT  
		Size: 4.7 MB (4704220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8b5902f7007d9aa8db62b760b4376d605d6ab0f4a6209ecdf702649abde45aa`  
		Last Modified: Sat, 19 Sep 2026 01:20:41 GMT  
		Size: 19.2 KB (19163 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:9bb626c82b811b417eda56c36478466d51812f45ab4c2ca3474b4970c0c753f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.4 MB (586391469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e0ce5687f2ed038f18e22dbd50d12ebec80285920227f8865654bef0af45cf`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 00:49:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 00:49:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=a5f6e02c6371727ebaabb31326557c178ebcd4bd608a33142efe9ff6ef8c2cd4 NEO4J_TARBALL=neo4j-enterprise-2026.08.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Sat, 19 Sep 2026 00:49:12 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.08.1-unix.tar.gz
# Sat, 19 Sep 2026 00:49:12 GMT
COPY ./local-package/* /startup/ # buildkit
# Sat, 19 Sep 2026 00:49:54 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.08.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Sat, 19 Sep 2026 00:49:54 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:49:54 GMT
WORKDIR /var/lib/neo4j
# Sat, 19 Sep 2026 00:49:54 GMT
VOLUME [/data /logs]
# Sat, 19 Sep 2026 00:49:54 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Sat, 19 Sep 2026 00:49:54 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:49:54 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c2d1edb1dc4732534d3585ec131f9b3071da9adfdd9c3dad57994d3ebfc57e`  
		Last Modified: Sat, 19 Sep 2026 00:50:28 GMT  
		Size: 91.5 MB (91532236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e501bb7803bfb4675b6fd933ad2134b1685170bd18b14bfb3580b378338184d`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da5ad9776745dd982bd531508c5e5e7a5f11feb5ff4096fbddc7983c0357374`  
		Last Modified: Sat, 19 Sep 2026 00:50:34 GMT  
		Size: 464.7 MB (464659492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:1b3b303381417f76efe451c6d0929d8c484473717b9c951eeceb2f83088393ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4718983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9415ef16b03a5f5cad64f1e12beda111930f2219f782a362dec502217deea5`

```dockerfile
```

-	Layers:
	-	`sha256:36c5f6473b364abaac76e546a317a1b94c88f1126288ed026fdae36190cec9b1`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 4.7 MB (4698688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0f7a1fe452ff88303ef5f10d8f00ef8ee2771c62c230731150c23f7b6e55c08`  
		Last Modified: Sat, 19 Sep 2026 00:50:24 GMT  
		Size: 20.3 KB (20295 bytes)  
		MIME: application/vnd.in-toto+json

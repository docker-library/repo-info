## `neo4j:enterprise-trixie`

```console
$ docker pull neo4j@sha256:e3ca5bd3a6b74d566d034d8cb8c579565a82bc04fec08fffa11eb6ecb0b45cad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:a5f299a20b9dab0f19eb1f02aedf6eccdf1ca8a3468b69d0683d2e7644c245e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.8 MB (551812385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be397b58df2a4fbd82239eaa182d96fbd43374c3be4b8fae1464038510d79781`
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
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=506b416a8816b4b1d5430fb89ad1d1b28cc62695a39289e2a2db0113ed2b6f72 NEO4J_TARBALL=neo4j-enterprise-2026.07.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 18 Aug 2026 20:20:13 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.07.1-unix.tar.gz
# Tue, 18 Aug 2026 20:20:13 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 18 Aug 2026 20:20:39 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.07.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 18 Aug 2026 20:20:39 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:20:39 GMT
WORKDIR /var/lib/neo4j
# Tue, 18 Aug 2026 20:20:39 GMT
VOLUME [/data /logs]
# Tue, 18 Aug 2026 20:20:39 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 18 Aug 2026 20:20:39 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 20:20:39 GMT
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
	-	`sha256:848642fe71fd497dec58e2b070d8e2972e44a9911640f9ec33b6d9dbdb4ece9f`  
		Last Modified: Tue, 18 Aug 2026 20:21:13 GMT  
		Size: 429.4 MB (429446969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:0d23e273225c871f2b3c22b4f1d19489990524441e50ee13f54cd2588e23f8c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4701829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e682845e12e677c9c074bece0845b8d55a2662701f965369da566f5a1c74773`

```dockerfile
```

-	Layers:
	-	`sha256:7f52aeefb3cfa124c45cbe9651198752ce4bbde9f34509307c60b02ff34cae1f`  
		Last Modified: Tue, 18 Aug 2026 20:21:03 GMT  
		Size: 4.7 MB (4681712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6406e2b0ddbf88a7486a4c1b58b417a963ec344c7a3e240d544b91158b3094e4`  
		Last Modified: Tue, 18 Aug 2026 20:21:03 GMT  
		Size: 20.1 KB (20117 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:39a2078f5a02ffd70c5267aaad5b00cee0917c0c2e11b4303feaffc794dd6fca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.2 MB (550217210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad8ba8b25e954a6f74a73f8ffff649ad616ac551ad4f00124885519992f8cfdd`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:20:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:20:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:20:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=506b416a8816b4b1d5430fb89ad1d1b28cc62695a39289e2a2db0113ed2b6f72 NEO4J_TARBALL=neo4j-enterprise-2026.07.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 18 Aug 2026 20:20:24 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.07.1-unix.tar.gz
# Tue, 18 Aug 2026 20:20:24 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 18 Aug 2026 20:20:50 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.07.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 18 Aug 2026 20:20:50 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:20:51 GMT
WORKDIR /var/lib/neo4j
# Tue, 18 Aug 2026 20:20:51 GMT
VOLUME [/data /logs]
# Tue, 18 Aug 2026 20:20:51 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 18 Aug 2026 20:20:51 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 20:20:51 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d027767a7f319aac1fba9c0718be367bf029aa668aa53b3423a6bb39af5ef7be`  
		Last Modified: Tue, 18 Aug 2026 20:21:15 GMT  
		Size: 91.5 MB (91542295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb43afa91be6f6f76f22f8873ad8fa79b9eeb06adcf832005500871abc05fa7`  
		Last Modified: Tue, 18 Aug 2026 20:21:11 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0970c9e3c201018288b6c2319dae5105f05dd8b2c826d3c3b626800cd0504900`  
		Last Modified: Tue, 18 Aug 2026 20:21:27 GMT  
		Size: 428.5 MB (428521254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:26fd3866e4c99635c5e93d631745d95745763e7ed1769e0832c57c1c5a94bb20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4696473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1faace3b620df39fc1de5ede4cfaf95a2a0e6fe29a031705f7f8118d2a484cb3`

```dockerfile
```

-	Layers:
	-	`sha256:6cac7c28d8b268e06f4a3e545b62cf1dcee84af9415df51f6b900479e720eb55`  
		Last Modified: Tue, 18 Aug 2026 20:21:19 GMT  
		Size: 4.7 MB (4676179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c69ed691bdd01f506b0dbfe2aa5104a516a22d4c9c2d1cd1ea25be03b9ab6ca`  
		Last Modified: Tue, 18 Aug 2026 20:21:18 GMT  
		Size: 20.3 KB (20294 bytes)  
		MIME: application/vnd.in-toto+json

## `neo4j:5-community-trixie`

```console
$ docker pull neo4j@sha256:bc27160e06cbd0b33c8ef557384c73449542f0ba706f0f406b58960c202c91ad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:a9758735f4c587eb97c7b5cc09bd1fca744fecc7a2838b201e6ebaeba2669012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.7 MB (355708464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12d21ac3539b0def43a0843e85a4c0ad1d14e7e9f03c6de8d2c130c2c27d88e`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:27:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:27:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:27:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=9d4064cdd87627cae376a741c893848c4faa3c4fb980362b6dae541c203e8072 NEO4J_TARBALL=neo4j-community-5.26.28-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 04 Aug 2026 02:27:21 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
# Tue, 04 Aug 2026 02:27:21 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 04 Aug 2026 02:27:42 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 04 Aug 2026 02:27:42 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:27:42 GMT
WORKDIR /var/lib/neo4j
# Tue, 04 Aug 2026 02:27:42 GMT
VOLUME [/data /logs]
# Tue, 04 Aug 2026 02:27:42 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 04 Aug 2026 02:27:42 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:27:42 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197b831946a64d7b7235642bd2ce69aeba3cd65bc867b50b80f4838e51f2be1e`  
		Last Modified: Tue, 04 Aug 2026 02:28:05 GMT  
		Size: 158.2 MB (158166938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca90679634ca0157873b9cb2b199f23a0ef129d0d0af8594a1a72c593fd73049`  
		Last Modified: Tue, 04 Aug 2026 02:28:00 GMT  
		Size: 10.1 KB (10055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3127ba12c13aa803a89459b2b64e96ee7e7d924c8fc0456ec551c33002bb0478`  
		Last Modified: Tue, 04 Aug 2026 02:28:05 GMT  
		Size: 167.8 MB (167750534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:18d417c48b7e82a23d71f725a3495319a56a1730b6170aaddc57f016c20bd188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4313041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf8e3c8a34100b82e9b7286b19758e1f01768d26b6fa1c06dfd7a528483c828`

```dockerfile
```

-	Layers:
	-	`sha256:b5ced06d861d294c0e4efc5787ed7638c1bfa611b495ea060258d26f7fecd487`  
		Last Modified: Tue, 04 Aug 2026 02:28:00 GMT  
		Size: 4.3 MB (4291818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:484e1df29b61b7ed24fdfd6a251007e903eec4c8f46e961fa07a36a6dff8b64f`  
		Last Modified: Tue, 04 Aug 2026 02:27:59 GMT  
		Size: 21.2 KB (21223 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:c5eac239a4adea8ff79b73e7884ee68dbe2ace38a42ed2862001b4d621562625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.4 MB (353436986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e96a5894f5f707aff4deaf3e1f9ca3801d483755dfbae135a86e047076cba31`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:27:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:27:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:27:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=9d4064cdd87627cae376a741c893848c4faa3c4fb980362b6dae541c203e8072 NEO4J_TARBALL=neo4j-community-5.26.28-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 04 Aug 2026 02:27:47 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
# Tue, 04 Aug 2026 02:27:47 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 04 Aug 2026 02:28:09 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 04 Aug 2026 02:28:09 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:28:09 GMT
WORKDIR /var/lib/neo4j
# Tue, 04 Aug 2026 02:28:09 GMT
VOLUME [/data /logs]
# Tue, 04 Aug 2026 02:28:09 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 04 Aug 2026 02:28:09 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:28:09 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e55db4513ef35363b08b4660d7c64f5d27b4b560c0dd423d467cf48c228d2fbb`  
		Last Modified: Tue, 04 Aug 2026 02:28:33 GMT  
		Size: 156.5 MB (156461276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3817b503a8452dd6832da6d401ae746eb36701c09032896741adb40c93916a8`  
		Last Modified: Tue, 04 Aug 2026 02:28:28 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d0ed6d33a70dcc7663e09d2eeb4f225bb7e863dda8f91f2e77a45a2df433d3`  
		Last Modified: Tue, 04 Aug 2026 02:28:33 GMT  
		Size: 166.8 MB (166821913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:808f36b1a1c147d57d319ed51075695a2189db847222aea586cf94f7e865659f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4307785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcacf4d8abf91b1e0dab2e006791df04c7625591ca53f10d13791bb7140d6dc3`

```dockerfile
```

-	Layers:
	-	`sha256:de4bf04c891e8b35940ae342ea9851c19a9891e2787f26015b3e418fa9ee65fe`  
		Last Modified: Tue, 04 Aug 2026 02:28:28 GMT  
		Size: 4.3 MB (4286336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c00520d2f9670f5d65957a6211c8e84458479dcb85c6bbe7a518f1d4a3594e9d`  
		Last Modified: Tue, 04 Aug 2026 02:28:28 GMT  
		Size: 21.4 KB (21449 bytes)  
		MIME: application/vnd.in-toto+json

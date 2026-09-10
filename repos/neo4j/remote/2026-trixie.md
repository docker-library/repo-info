## `neo4j:2026-trixie`

```console
$ docker pull neo4j@sha256:956faa5d14b6beaa629b80c718bfd389ec12064f97e276ed9a58b0c53b25a323
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:1ee8f6fa220f9a4f194d07caa82e12120ee501c06cb38eb245e530737cbdb15b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.5 MB (398489318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0d10180c2aac6f83218e7e27412f6a74a3799533cfe3af46cfb81a309e3db7`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:26:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:26:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:26:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fbb3a11705cdbc87953242e3667dad37cd39f8d1e1168faa642c01a2fd1d144d NEO4J_TARBALL=neo4j-community-2026.07.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 09 Sep 2026 03:26:09 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
# Wed, 09 Sep 2026 03:26:09 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 09 Sep 2026 03:26:31 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 09 Sep 2026 03:26:31 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:26:31 GMT
WORKDIR /var/lib/neo4j
# Wed, 09 Sep 2026 03:26:31 GMT
VOLUME [/data /logs]
# Wed, 09 Sep 2026 03:26:31 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 09 Sep 2026 03:26:31 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 03:26:31 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e345ba9ca6a5d24432979bdba02e21e96498a24ff5fd8a474ec3d85407ac962c`  
		Last Modified: Wed, 09 Sep 2026 03:26:55 GMT  
		Size: 92.6 MB (92615096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bdb23f642f51b617cbe67f939ae18c141720078cca63f2645bd8610e434dd5e`  
		Last Modified: Wed, 09 Sep 2026 03:26:51 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77485b1cea21012591fbb8c49bb56803891d0e6f4975c963474d1e61f49d9ab5`  
		Last Modified: Wed, 09 Sep 2026 03:26:58 GMT  
		Size: 276.1 MB (276071514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:40cd5eeb01d77ded3c1d0c58c26e860731f1198f649778e0090dea7126eb2189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4388761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c61c922e91ec15a520dbf163c8f1e66bd898df182412c1ab4f6c4c1c0730d84`

```dockerfile
```

-	Layers:
	-	`sha256:1faf5b7532b94c4e833fb484ff25a3f756ed6ac30e743800f01ffc925c597af7`  
		Last Modified: Wed, 09 Sep 2026 03:26:51 GMT  
		Size: 4.4 MB (4366252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9784435ddcd0d2c1a8385cf5ce30ebb8bffca2ff2d59b56380c260f7cd08dbd`  
		Last Modified: Wed, 09 Sep 2026 03:26:51 GMT  
		Size: 22.5 KB (22509 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:ae4a14ebb5b30051d969314c7c25f70d80c5a205184fc0957e3c9d9c6d2accf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.2 MB (397214187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06d8469c1ae73de6c52a9cd5e799eaf45b70d19ffebf1e184e436434bded7033`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:38:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:38:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:38:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fbb3a11705cdbc87953242e3667dad37cd39f8d1e1168faa642c01a2fd1d144d NEO4J_TARBALL=neo4j-community-2026.07.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 09 Sep 2026 03:38:21 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
# Wed, 09 Sep 2026 03:38:21 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 09 Sep 2026 03:38:45 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
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
	-	`sha256:57d8d52c7f72e2fc92e87edf3cae598d1155ea297fad726ea86561099efb8798`  
		Last Modified: Wed, 09 Sep 2026 03:39:10 GMT  
		Size: 91.5 MB (91532216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b983b383f2aa7f05c7ad4019d4f47b44445acbac0d306aa88f54383946cf63e1`  
		Last Modified: Wed, 09 Sep 2026 03:39:07 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebea4aba06d8c880838a976133a7404894f3af0a2eff1c2006b6011a907549f9`  
		Last Modified: Wed, 09 Sep 2026 03:39:13 GMT  
		Size: 275.5 MB (275512339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:5e81e398915d03d07c76e70e5ae89f612fce008d75972b30f4783d3fcdc95c56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd4fd89a4790f92fa3ff111ec55e56332d26e563c2fdf4a03cb80fe693199bc8`

```dockerfile
```

-	Layers:
	-	`sha256:c445f620e4945a40317780099ad9f2967d660ad575d714eaf6f2032dcacd38f6`  
		Last Modified: Wed, 09 Sep 2026 03:39:07 GMT  
		Size: 4.4 MB (4360815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6eae7bd842a60153ef92c9f57d1c7c9c89903fb47af7f1aa51d68713f75fd839`  
		Last Modified: Wed, 09 Sep 2026 03:39:07 GMT  
		Size: 22.8 KB (22783 bytes)  
		MIME: application/vnd.in-toto+json

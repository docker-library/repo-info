## `neo4j:community`

```console
$ docker pull neo4j@sha256:0ddfa71c8f0bfe0d780d74fb66b985de4767bbd274bab70c0806cb3a6deec101
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:community` - linux; amd64

```console
$ docker pull neo4j@sha256:a76eccb058c49dc7c77f99f410d54f93621779ece55b8f570b9ba8a5928b0f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.5 MB (395512604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f99ff9956eef1a3234962416646b8c650ff762d4bf775010ffef748c9cf616`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:54:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:54:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:54:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fbb3a11705cdbc87953242e3667dad37cd39f8d1e1168faa642c01a2fd1d144d NEO4J_TARBALL=neo4j-community-2026.07.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 21 Aug 2026 18:54:30 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
# Fri, 21 Aug 2026 18:54:30 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 21 Aug 2026 18:54:54 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 21 Aug 2026 18:54:54 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:54:55 GMT
WORKDIR /var/lib/neo4j
# Fri, 21 Aug 2026 18:54:55 GMT
VOLUME [/data /logs]
# Fri, 21 Aug 2026 18:54:55 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 21 Aug 2026 18:54:55 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:54:55 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318c57e0b23f63bd18d204b36c01fc9e957da23692b36ca8d03b4efa7bf3af98`  
		Last Modified: Fri, 21 Aug 2026 18:55:20 GMT  
		Size: 92.6 MB (92615095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da028d598a45a3de966f9b76c71d68f970c1dfc59e10a8cfc7c0e6302a5ac80d`  
		Last Modified: Fri, 21 Aug 2026 18:55:17 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918b160a2c24a1af3b8e9917368265365576bd8d2d754ea2794e20e711f0d1a9`  
		Last Modified: Fri, 21 Aug 2026 18:55:23 GMT  
		Size: 273.1 MB (273106691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community` - unknown; unknown

```console
$ docker pull neo4j@sha256:ffafacb0f18097703a79b99ab741c3a960124de6cf0e940f0e30795170268268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4388563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a814a13065af969e3275421b4bc1070f31def2e172cdc9b80b570cc34fe0ea6b`

```dockerfile
```

-	Layers:
	-	`sha256:59d9258460bbc993cb3a3327dd2c1e7cb78750a7ca54154e84ea3728f55149f9`  
		Last Modified: Fri, 21 Aug 2026 18:55:17 GMT  
		Size: 4.4 MB (4366054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eef23ad72be339de9f7c34322ff4549693424fe0d89a327a010d705da19d8b5e`  
		Last Modified: Fri, 21 Aug 2026 18:55:17 GMT  
		Size: 22.5 KB (22509 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:community` - linux; arm64 variant v8

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

### `neo4j:community` - unknown; unknown

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

## `neo4j:5-community-trixie`

```console
$ docker pull neo4j@sha256:2d6e34327b87238d76b61ce5693ea225cee3cf7d9b002893234039586b4e60a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:35b7b7e8882c02ac0169b9f89882f9bee82884f5779c2f6a7c3c06cd1f60f428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.3 MB (361344942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec282bbc99da27be8b792497089821962d4aebd79b43deb08cb1d3e9fd3759a`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Mon, 24 Aug 2026 18:06:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 24 Aug 2026 18:06:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 24 Aug 2026 18:06:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=f22934e3f7c1ddae743d91243f38aa492f007471c6a2bdbdc882fe2b3e1e4bdd NEO4J_TARBALL=neo4j-community-5.26.30-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 24 Aug 2026 18:06:33 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.30-unix.tar.gz
# Mon, 24 Aug 2026 18:06:33 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 24 Aug 2026 18:06:57 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.30-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 24 Aug 2026 18:06:57 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:06:57 GMT
WORKDIR /var/lib/neo4j
# Mon, 24 Aug 2026 18:06:57 GMT
VOLUME [/data /logs]
# Mon, 24 Aug 2026 18:06:57 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 24 Aug 2026 18:06:57 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:06:57 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ad7fbf3b5ef336e77dd6e52134b0c946958b91cc87e3398825b090e031e935`  
		Last Modified: Mon, 24 Aug 2026 18:07:21 GMT  
		Size: 158.1 MB (158120317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2046aa2ff3727594c4099deb230b4873531a2639c582cc3c259830ddaacfff`  
		Last Modified: Mon, 24 Aug 2026 18:07:16 GMT  
		Size: 10.1 KB (10062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0722a5a7eab819999cebe8faac1199ac0ef9b91a31b99cd8269df5681e01c8b2`  
		Last Modified: Mon, 24 Aug 2026 18:07:22 GMT  
		Size: 173.4 MB (173433766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:15de4b330b27a2121433e21dcc5a318749a42b212e10aed2fc56cbc6194b3c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521787c3766551bb67183b702d3446b4e428159e3ceb6df14828ea88229c9b42`

```dockerfile
```

-	Layers:
	-	`sha256:f9dc214543aabae637781de8109a0440d72ab4f420ac3fe902c05caddaae4e8d`  
		Last Modified: Mon, 24 Aug 2026 18:07:16 GMT  
		Size: 4.3 MB (4288151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4ea99c1fe34dc6fb312909e693a141b9fe85b76e023029fd0bc282aed7b1c64`  
		Last Modified: Mon, 24 Aug 2026 18:07:16 GMT  
		Size: 21.2 KB (21223 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:77ad51ca3579a345bd5ea842234480b87319da4c9281b410d3d305b856b4e905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.1 MB (359077112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c397ba43d7fe72a62933720d0526d1651422cdeec56295a02c302f7211d10f72`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:55:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 00:55:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 00:55:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=f22934e3f7c1ddae743d91243f38aa492f007471c6a2bdbdc882fe2b3e1e4bdd NEO4J_TARBALL=neo4j-community-5.26.30-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 25 Aug 2026 00:55:09 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.30-unix.tar.gz
# Tue, 25 Aug 2026 00:55:09 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 25 Aug 2026 00:55:30 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.30-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 25 Aug 2026 00:55:30 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:55:30 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Aug 2026 00:55:30 GMT
VOLUME [/data /logs]
# Tue, 25 Aug 2026 00:55:30 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 25 Aug 2026 00:55:30 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:55:30 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb9fd9dda7de7607d811747e49300f8f6f15ac1f2837a93914f611624a8e3584`  
		Last Modified: Tue, 25 Aug 2026 00:55:55 GMT  
		Size: 156.4 MB (156401921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b233361a5af4fd0b81d5cd554cbfe107fc9973a2f0a222774450df0bcba5dbde`  
		Last Modified: Tue, 25 Aug 2026 00:55:49 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fdb0bb8905f6a387cb13ede6435b4553d146c5c5e190325cf02b9e55205248`  
		Last Modified: Tue, 25 Aug 2026 00:55:56 GMT  
		Size: 172.5 MB (172505517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:a4017af14e7ebfbffcd6b04d905bf0a017d123407e5407627a9d4a4ca0935087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aafe1ebaafae2886382faf65a55065a82e2fd5fc9872100f57deb2f8fd535ae`

```dockerfile
```

-	Layers:
	-	`sha256:8da1261483a37ef7a6c36e49d1c4277b9d76f53ed9b711b365b6e4ae61f6020a`  
		Last Modified: Tue, 25 Aug 2026 00:55:49 GMT  
		Size: 4.3 MB (4282867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e908164a7741a4f5ec616ac87a0d7771b60f91b4292ff34efa17e8603e9f7736`  
		Last Modified: Tue, 25 Aug 2026 00:55:49 GMT  
		Size: 21.4 KB (21449 bytes)  
		MIME: application/vnd.in-toto+json

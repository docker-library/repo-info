## `neo4j:2026-enterprise-trixie`

```console
$ docker pull neo4j@sha256:b7372f9f5f39e8f6f9de892e88203b6c8397ba969098262a89fcabfb80c2f487
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:02af33d1ae50be64a583bda4ed734ea7354a75adb4d87591a30998d73e00cdfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **547.1 MB (547059496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1ad6e84c14c71f4fa3e28656a06590ee9907a047700f829feac0356e1f8004a`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Mon, 13 Jul 2026 17:35:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 13 Jul 2026 17:35:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 13 Jul 2026 17:35:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=659c0b51430f32d9461b3b9cb4e459b1df064f393cb2db0f7fce3858a9092b6e NEO4J_TARBALL=neo4j-enterprise-2026.06.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 13 Jul 2026 17:35:08 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
# Mon, 13 Jul 2026 17:35:08 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 13 Jul 2026 17:35:45 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 13 Jul 2026 17:35:45 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:35:45 GMT
WORKDIR /var/lib/neo4j
# Mon, 13 Jul 2026 17:35:45 GMT
VOLUME [/data /logs]
# Mon, 13 Jul 2026 17:35:45 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 13 Jul 2026 17:35:45 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 13 Jul 2026 17:35:45 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0cc4aa18d456c4e46b1482630eeab670debbcd259471200f5881e4823405f4b`  
		Last Modified: Mon, 13 Jul 2026 17:36:15 GMT  
		Size: 92.6 MB (92574607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d155ffa08bfa89c36b8896326c447f83f3de49110d77adf74d4a8220bdd03ecd`  
		Last Modified: Mon, 13 Jul 2026 17:36:10 GMT  
		Size: 10.0 KB (10019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe7f89fcc8ef138b8722f9f6f9b4a812ef56c894e5f97a545183180e191030c`  
		Last Modified: Mon, 13 Jul 2026 17:36:21 GMT  
		Size: 424.7 MB (424689419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:c9a948625dd47a189a0334a1509987090362b66b1f0f9255efc799a51030216a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4698578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9647a12369c76a5f03e3145f42a6049bce318dafe4987ee0cb48b5ea18dafc`

```dockerfile
```

-	Layers:
	-	`sha256:b8469588fb822a02db6112b12f86cd71a8ebb1663f03e0e3da98b0e27e3f2430`  
		Last Modified: Mon, 13 Jul 2026 17:36:11 GMT  
		Size: 4.7 MB (4678461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce5cce46bae68a6eaefb4f819204782c07bab26bcc63ac8ed10b3ae4e78ca84b`  
		Last Modified: Mon, 13 Jul 2026 17:36:11 GMT  
		Size: 20.1 KB (20117 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:44b8c994043e47d74d7c31ff5be3c3aa55ad264a68e265eb058eab9dd12f3b1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.5 MB (545451221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae5f7d4e9d26904adc3c4012d967c3fc5296358def7ae582d3bd2a96d0bd4168`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Mon, 13 Jul 2026 17:37:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 13 Jul 2026 17:37:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 13 Jul 2026 17:37:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=659c0b51430f32d9461b3b9cb4e459b1df064f393cb2db0f7fce3858a9092b6e NEO4J_TARBALL=neo4j-enterprise-2026.06.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 13 Jul 2026 17:37:03 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
# Mon, 13 Jul 2026 17:37:03 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 13 Jul 2026 17:37:30 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 13 Jul 2026 17:37:30 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:37:30 GMT
WORKDIR /var/lib/neo4j
# Mon, 13 Jul 2026 17:37:30 GMT
VOLUME [/data /logs]
# Mon, 13 Jul 2026 17:37:30 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 13 Jul 2026 17:37:30 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 13 Jul 2026 17:37:30 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:838c3813059650ab1883c1658042c7797bb2bee27709c34585715e7b4823a778`  
		Last Modified: Mon, 13 Jul 2026 17:38:03 GMT  
		Size: 91.5 MB (91542251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1365abebbb6e114a855882ff80e5d39097037a46e0366dd8e8c97e6e07f37774`  
		Last Modified: Mon, 13 Jul 2026 17:37:59 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048ba97684a10f07e356fedb3820a77be55fc2f698d42a6dbb55862b9f32c3bc`  
		Last Modified: Mon, 13 Jul 2026 17:38:09 GMT  
		Size: 423.8 MB (423750366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:4bc42188f92d5648d1bd170670076408618973eeac786fe6e80bd2e41ca5ad5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4693223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82a1df76ef703b290b6f35a05190b6d934069636fcc5e3bd33d018b23bfaa6c9`

```dockerfile
```

-	Layers:
	-	`sha256:515ef51b7bf7208765cfbf0e09421a6b68b5bec891f818a230460742cddc4908`  
		Last Modified: Mon, 13 Jul 2026 17:37:59 GMT  
		Size: 4.7 MB (4672928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:721bee239d55c48f6d81334d39292942a58a2a2f2224f0e2ea6d798af78a2bb3`  
		Last Modified: Mon, 13 Jul 2026 17:37:59 GMT  
		Size: 20.3 KB (20295 bytes)  
		MIME: application/vnd.in-toto+json

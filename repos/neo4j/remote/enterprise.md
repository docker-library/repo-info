## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:51348a9307f93a6226c3e9e71a30d423e1eeb37c67ddabcf4f391061388f2c36
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:11782dc24a4156700e04e3cefe84b5a766eef994b733d560e7841c30c66ee51b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.0 MB (597951988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930c89817527c9452fdccab37ec04c80aa06c4a9aef308ac5b178d144e58358a`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:27:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:27:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:27:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=59b7cfdc7749cc06ddef816b5d0037f4b09649f2cec54ad78f9d2cff47245a44 NEO4J_TARBALL=neo4j-enterprise-2026.09.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Sat, 17 Oct 2026 01:27:31 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
# Sat, 17 Oct 2026 01:27:31 GMT
COPY ./local-package/* /startup/ # buildkit
# Sat, 17 Oct 2026 01:28:01 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Sat, 17 Oct 2026 01:28:01 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:28:01 GMT
WORKDIR /var/lib/neo4j
# Sat, 17 Oct 2026 01:28:01 GMT
VOLUME [/data /logs]
# Sat, 17 Oct 2026 01:28:01 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Sat, 17 Oct 2026 01:28:01 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:28:01 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8480cccbb8dd3f75b76cad1ce46e3748a3f7bdbf695077b0c6769c5bffd1a62f`  
		Last Modified: Sat, 17 Oct 2026 01:28:34 GMT  
		Size: 92.6 MB (92617969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b62276ca25c68a69d8bf8389ab5eb1f2105b65016221f1d481afdbf931509f3e`  
		Last Modified: Sat, 17 Oct 2026 01:28:31 GMT  
		Size: 10.0 KB (10023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60265d95e64bb28aa51d34f6fae1b7d3d73f7f01450d7c4e61a5094909491fc5`  
		Last Modified: Sat, 17 Oct 2026 01:28:41 GMT  
		Size: 475.5 MB (475480614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:a2691812498ca23ba479653d8a16bf587faeb08dd8a83d8d245fb8b303d69698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4733726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81a719b6696b83c1192b4d17909001df72163f8ced4a5df62d99614dbb544a0b`

```dockerfile
```

-	Layers:
	-	`sha256:c76257b913e15bffb81acff2bbfc71ea189212491d3d90d9e0a224afa10de1d5`  
		Last Modified: Sat, 17 Oct 2026 01:28:31 GMT  
		Size: 4.7 MB (4713609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7032404f9154977ff6ba8b10c7205c23395d68e596855ebd9fb46513621965`  
		Last Modified: Sat, 17 Oct 2026 01:28:31 GMT  
		Size: 20.1 KB (20117 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:enterprise` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:9859753f99062150cae0999e9f8948915db16e70aa252bdf8bfdfb389ed8bf7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.3 MB (596295885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4434d7660c7e3c9fe41c47895f54b050093c677823c1f9599c8e1a5eeba739`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:28:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:28:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:28:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=59b7cfdc7749cc06ddef816b5d0037f4b09649f2cec54ad78f9d2cff47245a44 NEO4J_TARBALL=neo4j-enterprise-2026.09.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Sat, 17 Oct 2026 01:28:10 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
# Sat, 17 Oct 2026 01:28:10 GMT
COPY ./local-package/* /startup/ # buildkit
# Sat, 17 Oct 2026 01:28:38 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Sat, 17 Oct 2026 01:28:38 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:28:38 GMT
WORKDIR /var/lib/neo4j
# Sat, 17 Oct 2026 01:28:38 GMT
VOLUME [/data /logs]
# Sat, 17 Oct 2026 01:28:38 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Sat, 17 Oct 2026 01:28:38 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:28:38 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ade215c06cd9ddd87cfdab3cac4bbc5015a09f6aaf9423a1283b69ef80a2592`  
		Last Modified: Sat, 17 Oct 2026 01:29:00 GMT  
		Size: 91.5 MB (91528876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0a2f5cc38b470054037c6534a6b6bb73fa7b189f7deed2ba221763a56e02ec`  
		Last Modified: Sat, 17 Oct 2026 01:29:10 GMT  
		Size: 10.0 KB (10022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e9791a1f9abb9fc6020240d11fde3f7d796d212f3bb3496394cde94809d188`  
		Last Modified: Sat, 17 Oct 2026 01:29:19 GMT  
		Size: 474.6 MB (474556673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:d3e9c842d3b18b767fc63de970869b6a3b1a93475c4bbeaf673a7e7b43cc05ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4728372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b9a25540cd5bcb2635b84edef091f451223d4071cd2966ab65b52461811e1f`

```dockerfile
```

-	Layers:
	-	`sha256:bf60f5b3b6ba5afcb6068cee8e61882ccb862e468b5d31bd3a1f03bcf4e71547`  
		Last Modified: Sat, 17 Oct 2026 01:29:11 GMT  
		Size: 4.7 MB (4708077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea94e0be82ca9c036337d7596508c22c25cfafe55edc317bbe0731d47e4f5413`  
		Last Modified: Sat, 17 Oct 2026 01:29:10 GMT  
		Size: 20.3 KB (20295 bytes)  
		MIME: application/vnd.in-toto+json

## `neo4j:trixie`

```console
$ docker pull neo4j@sha256:d8f4c156caa3af76499134947deb11d13042e471d9733060449f2a01eb7a248e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:f32211d7468c6f6292ee036f3eaff52aa6d73ec6123d9c42df0e91015be0339c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.5 MB (402482983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a468ba17569f451bf52832bf0c32df15b37d435339e5c5031883062b3245cac7`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:46:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 00:46:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 00:46:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=6e4bb155a4bd02a8a7a7e83a56aca70df1cd5d90ff4dd94b540f20f49f000084 NEO4J_TARBALL=neo4j-community-2026.08.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Sat, 19 Sep 2026 00:46:27 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.08.1-unix.tar.gz
# Sat, 19 Sep 2026 00:46:27 GMT
COPY ./local-package/* /startup/ # buildkit
# Sat, 19 Sep 2026 00:46:51 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.08.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Sat, 19 Sep 2026 00:46:51 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:46:51 GMT
WORKDIR /var/lib/neo4j
# Sat, 19 Sep 2026 00:46:51 GMT
VOLUME [/data /logs]
# Sat, 19 Sep 2026 00:46:51 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Sat, 19 Sep 2026 00:46:51 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:46:51 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04151fb3c36511746c7b8b05df3b0e3bf364fd05e6aa8e3357ce146341ee695f`  
		Last Modified: Sat, 19 Sep 2026 00:47:18 GMT  
		Size: 92.6 MB (92615128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619acd0ba9e3206ca471dbd02efca2ce04b46c8f2e253a16651d55a6af3f6464`  
		Last Modified: Sat, 19 Sep 2026 00:47:14 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ce55c6df2d3cd05ee0d9c0a05e638cc56909664a8d8935bd540ae5b2f4dfb5`  
		Last Modified: Sat, 19 Sep 2026 00:47:21 GMT  
		Size: 280.0 MB (280027384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:04599913823b552178a341354fa56c4e151d4502af773f98c62536a907d6166e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4392112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1df1e32c10663b993831cfac35150e2e39a02633c428645cf1e9ab8c79c610`

```dockerfile
```

-	Layers:
	-	`sha256:fee19004130417c96b37d34b25961089b91043964dc4312fd0db762a8752c4cf`  
		Last Modified: Sat, 19 Sep 2026 00:47:14 GMT  
		Size: 4.4 MB (4369603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2402f7f7044833d7b75de8fbe97f138852e82b0584d86234d8d0d2aae99384e8`  
		Last Modified: Sat, 19 Sep 2026 00:47:13 GMT  
		Size: 22.5 KB (22509 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:639538d545aef8625e6647b0f67777ea3cfa04d4c3a5fa1f11948260cbfb4b8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.8 MB (400840092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc05c02adc7fdeaeaeb3f1e974c1632e107d1020924c4bf5af77af112a88f81`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 00:49:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 00:49:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=6e4bb155a4bd02a8a7a7e83a56aca70df1cd5d90ff4dd94b540f20f49f000084 NEO4J_TARBALL=neo4j-community-2026.08.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Sat, 19 Sep 2026 00:49:02 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.08.1-unix.tar.gz
# Sat, 19 Sep 2026 00:49:02 GMT
COPY ./local-package/* /startup/ # buildkit
# Sat, 19 Sep 2026 00:49:28 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.08.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Sat, 19 Sep 2026 00:49:28 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:49:28 GMT
WORKDIR /var/lib/neo4j
# Sat, 19 Sep 2026 00:49:28 GMT
VOLUME [/data /logs]
# Sat, 19 Sep 2026 00:49:28 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Sat, 19 Sep 2026 00:49:28 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:49:28 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a439d39380d78ad833c51704de639a1f4f098e00b71551a9aa097372e7f4e841`  
		Last Modified: Sat, 19 Sep 2026 00:49:54 GMT  
		Size: 91.5 MB (91532220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5121343679559c1342af0e287e1ce6d8a66153b28ab90844ee298b55185b63f`  
		Last Modified: Sat, 19 Sep 2026 00:49:50 GMT  
		Size: 10.0 KB (10019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305dd6bdd996871f4130938a5e1a9f4fd182890af10c05578c7bab69c3ab0f54`  
		Last Modified: Sat, 19 Sep 2026 00:49:58 GMT  
		Size: 279.1 MB (279108130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:edaaf52ea582b11aa9829a973bef1823f23699ed89d8b2ca7252245f6d137b6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4386950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e034ecf171da4c41ba016d9a7c50a77adcdee9f60063d32be3aa85cdbec970fd`

```dockerfile
```

-	Layers:
	-	`sha256:4bfb617de7201bb06b70d504acca96673c0c28363e0c2fbb799f8ef2f55039d9`  
		Last Modified: Sat, 19 Sep 2026 00:49:50 GMT  
		Size: 4.4 MB (4364167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7088b0720bf40962123350094a82149a06e6ac0695ee5a9054f82c00f936e78`  
		Last Modified: Sat, 19 Sep 2026 00:49:50 GMT  
		Size: 22.8 KB (22783 bytes)  
		MIME: application/vnd.in-toto+json

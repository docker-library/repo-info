## `neo4j:community-trixie`

```console
$ docker pull neo4j@sha256:dca31d0d938dd8bb199c8846abedd897c3a07ddb629eca46a8009ac9e87aece2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:community-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:fc8fd2e088975c12ac6b71eb194123c216d37ae29ed1c19dcac51794eb6851e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.5 MB (395472150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07fc2098e28904d20595336621918d0e1d38a1179eab6aebd8e9d1d6851df952`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Mon, 10 Aug 2026 19:03:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 10 Aug 2026 19:03:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 10 Aug 2026 19:03:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fbb3a11705cdbc87953242e3667dad37cd39f8d1e1168faa642c01a2fd1d144d NEO4J_TARBALL=neo4j-community-2026.07.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 10 Aug 2026 19:03:46 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
# Mon, 10 Aug 2026 19:03:47 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 10 Aug 2026 19:04:09 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 10 Aug 2026 19:04:09 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 19:04:09 GMT
WORKDIR /var/lib/neo4j
# Mon, 10 Aug 2026 19:04:09 GMT
VOLUME [/data /logs]
# Mon, 10 Aug 2026 19:04:09 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 10 Aug 2026 19:04:09 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 10 Aug 2026 19:04:09 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:583134af3b23abb50f3ab63bf72cb0376854e66b7247ea0029e4dc1b9e040ef1`  
		Last Modified: Mon, 10 Aug 2026 19:04:33 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75339caef0fd3e61571b1d096f9c4e39e0641a9f69a215567789775040dc93a2`  
		Last Modified: Mon, 10 Aug 2026 19:04:29 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c006285195f20aee3d12ed4e38ba74cf48bb9bbc047cf7e8d31a08b247bf25`  
		Last Modified: Mon, 10 Aug 2026 19:04:36 GMT  
		Size: 273.1 MB (273106769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:75affa3a0a4564d05ef555f68ae898b28cafd1a4893dc257b4fcac7406395efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4388562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d251b124c2cb587b1def21ce90305960e89d51ab3468671ea1e7a8e6090e6c8`

```dockerfile
```

-	Layers:
	-	`sha256:37a219889a3d28e08d882cdce39cd00a03757a702d72b16519a3bedc5ffe4266`  
		Last Modified: Mon, 10 Aug 2026 19:04:29 GMT  
		Size: 4.4 MB (4366054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c8dbbee50675df602ef0d9412438a9a2e7002ecf51d9a5eec0f26a52203fba`  
		Last Modified: Mon, 10 Aug 2026 19:04:29 GMT  
		Size: 22.5 KB (22508 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:community-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:d89490c0ba0e7ab4f9e76c018b4f3c8b28abd656867f7d0a2eba5e2a37dc0778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.9 MB (393876499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4924e8a4682504d4b84f201a9c8f430b427ebad8f52b727a9a2436880fb06719`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Mon, 10 Aug 2026 19:03:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 10 Aug 2026 19:03:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 10 Aug 2026 19:03:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fbb3a11705cdbc87953242e3667dad37cd39f8d1e1168faa642c01a2fd1d144d NEO4J_TARBALL=neo4j-community-2026.07.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 10 Aug 2026 19:03:37 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
# Mon, 10 Aug 2026 19:03:37 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 10 Aug 2026 19:04:00 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 10 Aug 2026 19:04:00 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 19:04:01 GMT
WORKDIR /var/lib/neo4j
# Mon, 10 Aug 2026 19:04:01 GMT
VOLUME [/data /logs]
# Mon, 10 Aug 2026 19:04:01 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 10 Aug 2026 19:04:01 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 10 Aug 2026 19:04:01 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2575bbcea4392f641ee4d2c69fdbfe5f150219c201d4128810ae65288bc2fe90`  
		Last Modified: Mon, 10 Aug 2026 19:04:27 GMT  
		Size: 91.5 MB (91542246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a5fc192f2c6ee208e52b00d227c411ad285b39498c985edd7f73893a7f6831`  
		Last Modified: Mon, 10 Aug 2026 19:04:23 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4605b4a5d38fb1cc89deed1d318ad8668143e2f48de353437cabc996964be77e`  
		Last Modified: Mon, 10 Aug 2026 19:04:31 GMT  
		Size: 272.2 MB (272180591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:309654871a69837fdd827c72b78b1876a5b9ccacdfc33442d6c043c359357a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9164383614874efc9b6d3ee63cca9c920bdab0155cf00abcd2cf72255422bacf`

```dockerfile
```

-	Layers:
	-	`sha256:90c20c3bde7ca57959c0754feaee81a7046a4679b6933409ecf1c85123f96614`  
		Last Modified: Mon, 10 Aug 2026 19:04:23 GMT  
		Size: 4.4 MB (4360617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29a03ea371782ae8e54b09637789ee51e1d1feb44875b72d397a426d14d14500`  
		Last Modified: Mon, 10 Aug 2026 19:04:23 GMT  
		Size: 22.8 KB (22783 bytes)  
		MIME: application/vnd.in-toto+json

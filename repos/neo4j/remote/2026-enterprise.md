## `neo4j:2026-enterprise`

```console
$ docker pull neo4j@sha256:dd59c5166263690cfddbd199d58b78680a41f3a6df15f6b3c7e1042c6e582156
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:d07bd8798211fe79b2a380ebe570e9ef930e2d4783f57e772885f715d2267e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **547.1 MB (547054695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a12a7cf899e1df64600406a648ecd5969d905417c9b3788606a16b221f72094`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:27:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:27:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:27:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=659c0b51430f32d9461b3b9cb4e459b1df064f393cb2db0f7fce3858a9092b6e NEO4J_TARBALL=neo4j-enterprise-2026.06.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 04 Aug 2026 02:27:20 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
# Tue, 04 Aug 2026 02:27:20 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 04 Aug 2026 02:27:57 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 04 Aug 2026 02:27:57 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:27:57 GMT
WORKDIR /var/lib/neo4j
# Tue, 04 Aug 2026 02:27:57 GMT
VOLUME [/data /logs]
# Tue, 04 Aug 2026 02:27:57 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 04 Aug 2026 02:27:57 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:27:57 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a6ae00516dc7590e689182373385576d79e74c77a02ec040aef325e1558e4d`  
		Last Modified: Tue, 04 Aug 2026 02:28:27 GMT  
		Size: 92.6 MB (92574596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741e336d3519802c699aeef37ef978c8278c4811be1a0c3006d869264e2e22ef`  
		Last Modified: Tue, 04 Aug 2026 02:28:24 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294a62d18c043697f23d17443b7a934f78eff766982ea2e191edee9e773e68a6`  
		Last Modified: Tue, 04 Aug 2026 02:28:33 GMT  
		Size: 424.7 MB (424689144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:575f14327af4bc742548311b93bb0bb00aefaefa412f77a268f832ef4b7abf76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4698618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fa85ca7c69211771410a9bcded9fbc17d699c2cbdb72678bace91cd0ad947b`

```dockerfile
```

-	Layers:
	-	`sha256:1966516821ca7e6ba59538be7b8c06403f5758cf448bf738fb64e6fd632f862d`  
		Last Modified: Tue, 04 Aug 2026 02:28:24 GMT  
		Size: 4.7 MB (4678501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5235c9c568cff73de9943c2418c302cd32f9d89d1a197fc85accace9e2b3044`  
		Last Modified: Tue, 04 Aug 2026 02:28:24 GMT  
		Size: 20.1 KB (20117 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-enterprise` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:d9da8975d05d76709371cf2dd4c98584b3c6c14709700b46de5a57df078d863c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.4 MB (545446270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c077b3d674ae400bb1a2d9693c5a479f67243210c57d108ad2fd0f7273dbcf`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:48:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 00:48:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 00:48:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=659c0b51430f32d9461b3b9cb4e459b1df064f393cb2db0f7fce3858a9092b6e NEO4J_TARBALL=neo4j-enterprise-2026.06.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 05 Aug 2026 00:48:58 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
# Wed, 05 Aug 2026 00:48:58 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 05 Aug 2026 00:49:25 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 05 Aug 2026 00:49:25 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:49:25 GMT
WORKDIR /var/lib/neo4j
# Wed, 05 Aug 2026 00:49:25 GMT
VOLUME [/data /logs]
# Wed, 05 Aug 2026 00:49:25 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 05 Aug 2026 00:49:25 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:49:25 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46da515be8c0edd851a9bdf71c83607e643fb4c95a2a1b510626fc8ab670cc52`  
		Last Modified: Wed, 05 Aug 2026 00:49:57 GMT  
		Size: 91.5 MB (91542236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e565eda28f67cfac928a53a241d04ac2b22c3fa3646dd0b0137b5e61b70e5f4b`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c644e0b3538e8841b59ea0420542bd4bedd5302b54fe11d225e25541124932c2`  
		Last Modified: Wed, 05 Aug 2026 00:50:02 GMT  
		Size: 423.8 MB (423750372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:3bbbd94f7cccfbef5cd83ee846c4366c75851342ffedbce119064bb1eded63f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4693263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa05fe12014596b8b81c86cda066e1050a06fffffebcb8b3cad708a67c35016`

```dockerfile
```

-	Layers:
	-	`sha256:8522ac463e699b73870e77f889e066f0d91e1d2f26da43ecf17ad61f6da037fb`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 4.7 MB (4672968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af52d545bbd27f56f9c9c08e318b2d6d9ec071582abd9c9328c43bf6b47abb43`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 20.3 KB (20295 bytes)  
		MIME: application/vnd.in-toto+json

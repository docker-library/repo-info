## `neo4j:5-enterprise`

```console
$ docker pull neo4j@sha256:820ec7ee6f128a584bd46a1d2c0220d4364d6a5bafa9f383caca642ada3471b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:4c8742baba3e70d1c066e2259a1357c99a76f2bf136e9f883c3e8d65033f3917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **706.0 MB (705989511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519cc9fbae0605e8f2dd9a705adcbd76c52ae01df7e909bcb1f7c21bb9ac273a`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 16:07:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 16:07:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 16:07:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=6831ec1629f924f83c15e0a94abbfbee05648fefe48bfa816a7808a92a4c562b NEO4J_TARBALL=neo4j-enterprise-5.26.29-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 05 Aug 2026 16:07:41 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.29-unix.tar.gz
# Wed, 05 Aug 2026 16:07:41 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 05 Aug 2026 16:09:03 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.29-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 05 Aug 2026 16:09:03 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 16:09:04 GMT
WORKDIR /var/lib/neo4j
# Wed, 05 Aug 2026 16:09:04 GMT
VOLUME [/data /logs]
# Wed, 05 Aug 2026 16:09:04 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 05 Aug 2026 16:09:04 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 16:09:04 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b455972dd235732ca3f79e2b021a19d2a1bc1251599cfea82dcef756b2f6ba`  
		Last Modified: Wed, 05 Aug 2026 16:08:29 GMT  
		Size: 158.2 MB (158166926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35aaf9bcce142eb80b386bad5b1dfe07263a8d55be0426db8c58e7cdd028879`  
		Last Modified: Wed, 05 Aug 2026 16:08:23 GMT  
		Size: 10.1 KB (10064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628751725e20220a296b07fd75e67889a307baac124ef90149ec5dca5fb4d1a0`  
		Last Modified: Wed, 05 Aug 2026 16:09:42 GMT  
		Size: 518.0 MB (518031724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:223cea9197b8520531548328d4cb4728d883b1f39f8942dc723210425d92a1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4668145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e03baa36967f0016780c98ad4559b3f282476b3fb185467775ea0def41ff9630`

```dockerfile
```

-	Layers:
	-	`sha256:6f9a58138c5215a6e546dfe9700a84ee4f940ac26c51f498f93641be4d7cebca`  
		Last Modified: Wed, 05 Aug 2026 16:09:32 GMT  
		Size: 4.6 MB (4648694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abe6060c4dc44f1b63f6161155507f336cd4002fe668065ee5bcd41a2d901423`  
		Last Modified: Wed, 05 Aug 2026 16:09:32 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:c45f1a8b4cf8a0df4a2ee84ce7165d2255c2a4c9b64f1677de8dbcf0e14f6abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **703.7 MB (703714326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78886d5065903f827df62af42b52bb4ac487095058b81d03c944ca650a5cf0bd`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 16:05:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 16:05:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 16:05:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=6831ec1629f924f83c15e0a94abbfbee05648fefe48bfa816a7808a92a4c562b NEO4J_TARBALL=neo4j-enterprise-5.26.29-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 05 Aug 2026 16:05:49 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.29-unix.tar.gz
# Wed, 05 Aug 2026 16:05:49 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 05 Aug 2026 16:06:33 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.29-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 05 Aug 2026 16:06:33 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 16:06:33 GMT
WORKDIR /var/lib/neo4j
# Wed, 05 Aug 2026 16:06:33 GMT
VOLUME [/data /logs]
# Wed, 05 Aug 2026 16:06:33 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 05 Aug 2026 16:06:33 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 16:06:33 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d610859b44c55950b6946a9e1cd36b5f0f8f9950f22301efcbbe75b064d65a5`  
		Last Modified: Wed, 05 Aug 2026 16:07:09 GMT  
		Size: 156.5 MB (156461246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8e8d4913636919cbdca0fc3d8ee375713fbb1269de56479b384f9b96e5ccb2`  
		Last Modified: Wed, 05 Aug 2026 16:07:04 GMT  
		Size: 10.1 KB (10063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc3ca58adcfdce28a6af11609e2809749d2bf89bb22f2ce2226db99a41d1636`  
		Last Modified: Wed, 05 Aug 2026 16:07:15 GMT  
		Size: 517.1 MB (517099376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:c739f3fc94b4a13c1db9e6279853893e08810303a8a1ceef179356d172cc3c17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4662745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66608861be2c693e4ba61fe8dd9c9f46db47cb571e5d1a98bf89a6992bd320b7`

```dockerfile
```

-	Layers:
	-	`sha256:e9d8740e051229ce4a11d5e70805d3705df43e3c945398540388271caa70b2e4`  
		Last Modified: Wed, 05 Aug 2026 16:07:04 GMT  
		Size: 4.6 MB (4643140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e3ce25e842d6950b3ed295de9c8f4a9ec0595a5cf75c08c6d114a3546c13c83`  
		Last Modified: Wed, 05 Aug 2026 16:07:04 GMT  
		Size: 19.6 KB (19605 bytes)  
		MIME: application/vnd.in-toto+json

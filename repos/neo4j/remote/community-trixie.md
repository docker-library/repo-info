## `neo4j:community-trixie`

```console
$ docker pull neo4j@sha256:e101c2e37513159ce5dfe651117fefe69df2543b84da78e38df462e81b88ac3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:community-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:c08e087c16f3c1a22f536c208180032505c3b3e11587cef1fbad0c35f5d20e13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.5 MB (379527239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b62256c4333d47b1bfc37397d12d806a5b2e7a8b7aead23295f47cba9e9784`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:24:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 20:24:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 09 Nov 2026 20:24:30 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Mon, 09 Nov 2026 20:24:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fcbccee832175fd8b873ca7d8228dbde4cb5cce43f9053833cc7517dc4dd6f31 NEO4J_TARBALL=neo4j-community-2026.10.2-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 09 Nov 2026 20:24:30 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
# Mon, 09 Nov 2026 20:24:30 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 09 Nov 2026 20:24:52 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 09 Nov 2026 20:24:52 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:24:52 GMT
WORKDIR /var/lib/neo4j
# Mon, 09 Nov 2026 20:24:52 GMT
VOLUME [/data /logs]
# Mon, 09 Nov 2026 20:24:52 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 09 Nov 2026 20:24:52 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:24:52 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed51959837c3a868cace08a0bcff7229ef2a9902b3fa2b146901262aa382650`  
		Last Modified: Mon, 09 Nov 2026 20:25:14 GMT  
		Size: 92.6 MB (92598869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac7585c8fdf56003476a948c7891265277dad9ae7f8895f0d4c4b70945ac453`  
		Last Modified: Mon, 09 Nov 2026 20:25:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145c1cbb0967f915619a273fa99b96e031dc6a10d634703e412f756a968e97e6`  
		Last Modified: Mon, 09 Nov 2026 20:25:11 GMT  
		Size: 10.0 KB (10039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f9220b65513dcd6266e05554019a82993f3763537d11cbd57a08c33b6a360c`  
		Last Modified: Mon, 09 Nov 2026 20:25:17 GMT  
		Size: 257.1 MB (257062039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:a182c9e12827826511cb83566aa578a202b93ef47c9b943bff06dc4225f2c576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4405691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:184887f7487505921bb56fd6fc9e1827298469ea794a6388d76f3a6b1e1bb594`

```dockerfile
```

-	Layers:
	-	`sha256:bc349f2c4521aa625fbe5d1c19827b35258f63b04897586ef6a2107942ea54b1`  
		Last Modified: Mon, 09 Nov 2026 20:25:11 GMT  
		Size: 4.4 MB (4380393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d62687815a31bae7dde1d46b520c24e84d87422175d57538ed1443270b9b8c2a`  
		Last Modified: Mon, 09 Nov 2026 20:25:11 GMT  
		Size: 25.3 KB (25298 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:community-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:54770c4700d373405d7d7427963b8b4edeaf0bc1f34c375f56a7b434b695d619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377882606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eed7b154a946cab4177339c0e5cfb56df86e3dd1271d57ded04e248cf0063e5`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:40:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:40:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:40:35 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 12 Nov 2026 00:40:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fcbccee832175fd8b873ca7d8228dbde4cb5cce43f9053833cc7517dc4dd6f31 NEO4J_TARBALL=neo4j-community-2026.10.2-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 12 Nov 2026 00:40:35 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
# Thu, 12 Nov 2026 00:40:35 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 12 Nov 2026 00:41:02 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 12 Nov 2026 00:41:02 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:41:02 GMT
WORKDIR /var/lib/neo4j
# Thu, 12 Nov 2026 00:41:02 GMT
VOLUME [/data /logs]
# Thu, 12 Nov 2026 00:41:02 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 12 Nov 2026 00:41:02 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:41:02 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779504f761ab825cbf13e0a22d4d6a4a5aa0f17dd1195aabd639ddae595a70c0`  
		Last Modified: Thu, 12 Nov 2026 00:41:29 GMT  
		Size: 91.5 MB (91525624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2de023f035f1693735ef8ef0a5e363b8e9d0124e460af2b2e2e25aa212e6d61`  
		Last Modified: Thu, 12 Nov 2026 00:41:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bff2f28aee08a109296ad23c7ad2d863f7666d95c8c8cd1e15ccb52aa7a487e`  
		Last Modified: Thu, 12 Nov 2026 00:41:25 GMT  
		Size: 10.0 KB (10042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73c6937ea659ca0c80726d5fd0599e472daf4018ad2173af06507e411e3d646`  
		Last Modified: Thu, 12 Nov 2026 00:41:32 GMT  
		Size: 256.1 MB (256132742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:6d0d7b7919952fd1251fe0b473a3cd9078493e784ff38877ad114a74c4c5971e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4400544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad8b256c9ea963412c5dc0e7d32cc1bfdb5abe18bb01891639627687dd9ad440`

```dockerfile
```

-	Layers:
	-	`sha256:79927cb30bd286769951627e04e9c1234905260f86f965318d7211a4fac5ed67`  
		Last Modified: Thu, 12 Nov 2026 00:41:25 GMT  
		Size: 4.4 MB (4374957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca5b50da8410217bd5b288b08bd16e43ae918ce740a45cb088393966f6ce0ca9`  
		Last Modified: Thu, 12 Nov 2026 00:41:25 GMT  
		Size: 25.6 KB (25587 bytes)  
		MIME: application/vnd.in-toto+json

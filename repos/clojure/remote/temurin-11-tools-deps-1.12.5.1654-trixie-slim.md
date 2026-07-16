## `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim`

```console
$ docker pull clojure@sha256:0f77e1d11df6061a0a3b4da307621e2cb67871d6fd44d64e03054cfb4e992fe6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:30ca644a9cf9b47099026289d522b5c0c0dc52d8de490b4c7d20e18f5c58f76f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244639811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67cbb06bf76e5054627ee3d4ace6e321649a842c8a10df004a2a722a1ae6caa`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:31:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:34 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:31:34 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:31:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:31:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc74ca68606af44b7951753a2d27472b683789c98e7be1b7d03b6bd2c86713bd`  
		Last Modified: Thu, 16 Jul 2026 01:32:10 GMT  
		Size: 145.9 MB (145886149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8c5fce66a3cdaf238d326d4e03c55a825538369aaa433f0505756167f2c9ed`  
		Last Modified: Thu, 16 Jul 2026 01:32:09 GMT  
		Size: 69.0 MB (68972111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f809f929f2f71dde445dc4d5842187838ac8e37b1284697e8aa80fe3b415b0`  
		Last Modified: Thu, 16 Jul 2026 01:32:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:62d553ddf9765eba0f490a0caf311a399bf5c9ac4f9b989942b0f6dcc29b2d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5291245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5a2759634916557432f44ebbd11f742ef33a760c7f659fa5de925d41574bf7`

```dockerfile
```

-	Layers:
	-	`sha256:98d2b682b2d950d737c6fe3c5c0aff9bb94275a386d4b2369ca728bf3a91e192`  
		Last Modified: Thu, 16 Jul 2026 01:32:06 GMT  
		Size: 5.3 MB (5276848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e28fb16f958cf5b559ac81ecb118bc45c7bc5e1b6b55f08063c45c466069661`  
		Last Modified: Thu, 16 Jul 2026 01:32:05 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:260ce9f251cdb1283abcca1d2f3a9c0fc6a67daf1daafba61e36f6d9fe548c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241504395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0641b2f8c679a186c24bd26655365f688315640afd7a450a9f982b6556b7e44`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:23:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:23:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:23:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:23:50 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:23:50 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:24:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:24:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:24:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89330e05b04f7b1010b8763617b13246fdb5f6975a011f89eb43425b8f9ad132`  
		Last Modified: Thu, 16 Jul 2026 01:24:28 GMT  
		Size: 142.6 MB (142582185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a2b0ea92a17628d80407d486717669fa1081eb8da6dc74301a51c3459fedab`  
		Last Modified: Thu, 16 Jul 2026 01:24:27 GMT  
		Size: 68.8 MB (68777859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d03bfece632adfd77d63333d45396a9bcc7c9a678c9c8053baab3da6b36314`  
		Last Modified: Thu, 16 Jul 2026 01:24:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f2c1b170e6f3115b9bfe0bf5c94aa249396e201b4f911666e3852ebbb1c4ade4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70a3b97d2348544ec3f589eee9fb88a54fccdef887abf37a2a7448e79b701b5a`

```dockerfile
```

-	Layers:
	-	`sha256:0430e82810f50dafd1f5344e040d192cf8b3f3ed85e56dd17d5bad54f6410d00`  
		Last Modified: Thu, 16 Jul 2026 01:24:25 GMT  
		Size: 5.3 MB (5283227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f22f325c7567196088c104aca0dbb222d9516c5600793efece59c0c1df0d3dea`  
		Last Modified: Thu, 16 Jul 2026 01:24:24 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a9683832be991020cc6b32fba8bcb6517c724f77e3e3aed8d8037153f2c8bb63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241084680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141304243307ad9a2ea8d786630c80c2649b20f7716f125ec00aa6fedf5da2b9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:30:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:30:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:30:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:30:46 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 02:30:46 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:36:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 02:36:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 02:36:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda8dcee80cacabbfe25ee9d301ec3b6b3ad5e3f005457a77b06ce75248ffb60`  
		Last Modified: Thu, 16 Jul 2026 02:34:20 GMT  
		Size: 133.1 MB (133109949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86827f1a20905c789b1f5fa1d563838c48239e601e5c03e742ad49554bc1caa3`  
		Last Modified: Thu, 16 Jul 2026 02:37:02 GMT  
		Size: 74.4 MB (74372609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df6d51b205c755c12083a907c683d1bd5a67c34faf1e3556ee92252d2cacde7`  
		Last Modified: Thu, 16 Jul 2026 02:37:00 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:80992d028209d7a66e0cb26e48ff9bf4fd3dc32317e929e8e98fc609b25ca9a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90dac8ef9601cf211b5d479055066145dfc95725d1bf5500a50af4b36299930c`

```dockerfile
```

-	Layers:
	-	`sha256:b2cc0a9c4c25703125c3ddd125ea959ee837574dbc40ea1c6c6a6904bde16b75`  
		Last Modified: Thu, 16 Jul 2026 02:37:00 GMT  
		Size: 5.3 MB (5280604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4e68fc86f9cd9bfd74f1ae88f146859df3313975a55f872f733e9740dd1534e`  
		Last Modified: Thu, 16 Jul 2026 02:37:00 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:234f52d20c08d4a358fdda56bf8fce54bd79072070041cdfe2dab5206a60fcad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226441799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70856de36c9c6e7167dee50a47deb4c6e3eef0bbe74429cd01de46cb55d0e162`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:43:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:43:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:43:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:43:32 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:43:32 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:45:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:45:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:45:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1980e5c4acf8730a0184045da9a5a9232b90f1ac25a49b0a8a2b4bb8e4760d29`  
		Last Modified: Thu, 16 Jul 2026 01:45:21 GMT  
		Size: 126.7 MB (126651679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d020d8bcdcefa32ccfd4b240e98c7ac39d0297870279416a6afd95c9f512a2c9`  
		Last Modified: Thu, 16 Jul 2026 01:46:12 GMT  
		Size: 69.9 MB (69942842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ce4212592760705019f089a824f41be0cb9e1620df26350b6206ac307e3672`  
		Last Modified: Thu, 16 Jul 2026 01:46:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:426f900d768a5c74438b199ea707cf189b8dbbbe45ceeeec1a24815f272dc37f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58035d9653be7727fbb70a5501d7e823763a23b696009040636afb76d7007bab`

```dockerfile
```

-	Layers:
	-	`sha256:470becbaca75a02a0b8dd37dd7373e36dc52158299d72684491f20c6d96aa221`  
		Last Modified: Thu, 16 Jul 2026 01:46:10 GMT  
		Size: 5.3 MB (5272776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fff3e37a03bec14bc730a8c35c6cef6e1e6025b04fd37d20f5b78acfb7b022f8`  
		Last Modified: Thu, 16 Jul 2026 01:46:10 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

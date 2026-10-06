## `clojure:temurin-26-trixie`

```console
$ docker pull clojure@sha256:b40485b2ec3599867bffb80144fc887dc34ab7e259cacc02fbdf7be977e0d4dc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:0b2e847249cccc204eb35e73c855b2480490883ebb9430ff939870699f0a045c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226525508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c053e5a628da0329f0188cbaec2bd5157165ebef544dba37ea5fd66fe23ea5fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:14:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:14:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:14:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:14:43 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:15:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:15:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:15:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:15:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:15:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb47c5c1ed17df9070cac057d147e71d1e68a679d52ba58740d0739ee775bdb`  
		Last Modified: Tue, 06 Oct 2026 02:15:24 GMT  
		Size: 94.6 MB (94563473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102880d648ae7f4bd96bd1d417332bf8afc56dd9fa7d861aff7cc1889078b2c6`  
		Last Modified: Tue, 06 Oct 2026 02:15:23 GMT  
		Size: 82.6 MB (82567793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92aa299497af615be788a0f334341565779db1429d2867c9cb6deeb0397c4542`  
		Last Modified: Tue, 06 Oct 2026 02:15:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8b45da6f4f31773379df6a67198dbacfe23656df52d6e7c8eb08881bf50e2e`  
		Last Modified: Tue, 06 Oct 2026 02:15:20 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4f24524b1ad6833221e7169082bfed685f5c18136e65d8b50af0b34d7581623f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7459614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eab9b79c1e70f8d103f34fadca04082164bacea8eecb777562dee6f5ad6f943`

```dockerfile
```

-	Layers:
	-	`sha256:38ede97eced15b486187c26b2cba54cd589a628bf6ecf4f27cd9e9bab30aadcf`  
		Last Modified: Tue, 06 Oct 2026 02:15:20 GMT  
		Size: 7.4 MB (7443713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e28a7cc31e15d46034eaecc6970bc1d14356465f6ea0d4611c951b5b3f429fa`  
		Last Modified: Tue, 06 Oct 2026 02:15:20 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5b9f19fd88877e0b43a5dc917f52b6456bbe056ebf99ccefd4abd3fbdc57dc2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225695970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e3733f7a6a8676ce27bffa6358b4f26e8922b75d5355dd6106a73b602fe62b5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:20:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:20:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:20:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:20:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:20:23 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:20:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:20:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:20:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:20:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:20:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e8acffb0d7f3baf88d69c27a2557575809cf648b7d8083fcf16b8995964e85`  
		Last Modified: Tue, 06 Oct 2026 02:21:03 GMT  
		Size: 93.5 MB (93543602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006bbcd42e639573211b8cbf07e6962ceb4f703dbfd77f93c141925544eb58fd`  
		Last Modified: Tue, 06 Oct 2026 02:21:02 GMT  
		Size: 82.4 MB (82390223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c941eac5f2f6dd3e278074e7cfbbbfde3933e257d847ae9a60a112d77a1945`  
		Last Modified: Tue, 06 Oct 2026 02:20:59 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2180358a541ffc8cc6a0e4ef4ce17d8411f4f589d9b452ccca03f52de5370d3`  
		Last Modified: Tue, 06 Oct 2026 02:20:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:403b6e705a9695b61f763229195273fb4f98fe856e97d3a560cebf14e5ee6f4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def2ea3ccfadf96d811683141c88ba0a0c6c135ee7f31b31b5f0ad2797f0e72e`

```dockerfile
```

-	Layers:
	-	`sha256:d9d1e18ca53cdc259ca008d3d47998a456c3381e068f1151eb084288e4e8d626`  
		Last Modified: Tue, 06 Oct 2026 02:21:00 GMT  
		Size: 7.5 MB (7450103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9095d1845f0d55a325bcdff00c9c986022cab526f500f7e5417df2f829e2bec1`  
		Last Modified: Tue, 06 Oct 2026 02:20:59 GMT  
		Size: 16.0 KB (16018 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:89e209cd9a50a31cbfb4046057316bd3257e5799dc3433c7adb74738f7e2ce6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234548454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97be73ae3e427b0ce33e144315a74043cebf9dce7d84dc0fb39a557a090b8f7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:45:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:45:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:45:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:45:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:45:47 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:55:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:55:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:55:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:55:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:55:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88cdcd646a285810a3b5f823b032cf404fabed96d1486d706047a978af6d8ff`  
		Last Modified: Tue, 06 Oct 2026 10:50:28 GMT  
		Size: 93.4 MB (93350853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f631325ff23d1748c8a2903b7f0581565694be95df3d971c9b37517d19c66d6`  
		Last Modified: Tue, 06 Oct 2026 10:56:05 GMT  
		Size: 88.0 MB (87989436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e1394fddfb8d466998d7d5d8c00cf524d058457508701099685c56533f89c1`  
		Last Modified: Tue, 06 Oct 2026 10:56:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:212618c8892a2364338f5f6d2db48fdaf116101427cd1250db3c3bda96e1539b`  
		Last Modified: Tue, 06 Oct 2026 10:56:03 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a0b8fb04df811d9d4e0069e8eee335a1349fa11da8bf58454be6b9c344af47b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7448017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ac0f653c72b706c307c63eb02bcfd44040e1ad7cddb04a7ee480ace73e2661`

```dockerfile
```

-	Layers:
	-	`sha256:89436a8abdf2138300c03b2553dbdf63a90413a70cdf6cfdc050009cc65ae9c3`  
		Last Modified: Tue, 06 Oct 2026 10:56:03 GMT  
		Size: 7.4 MB (7432068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79d862f498cf3ffdc9e3252c6b1f8e0afa944afd1cc7298f6093dbe8c1c6d3e7`  
		Last Modified: Tue, 06 Oct 2026 10:56:02 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json

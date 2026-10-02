## `clojure:temurin-21-bookworm-slim`

```console
$ docker pull clojure@sha256:949489c2679d9eb13d73809c1b57f92c5f5e9f655a8ee68a0d0e999bc6461cdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:63e42746e8ec1e790786c1e6dd8c7462458954d0541e15b75d1d9dd76257f739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253048805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b715de00a771748ffe345ccdba26cbed5ff9741c72a92ee1288a0d03b5e33f02`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:47:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:47:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:47:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:47:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:47:18 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:47:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:47:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:47:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:47:31 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:47:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f356d5c7198e004a70359c136a49848d7dedad087c27e84890078a4593b88f`  
		Last Modified: Fri, 02 Oct 2026 02:47:53 GMT  
		Size: 158.1 MB (158117501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec31457a64b02ce0ce45262d59d42349ba24dd28d4a529a217ba23e0ffa146f8`  
		Last Modified: Fri, 02 Oct 2026 02:47:51 GMT  
		Size: 66.7 MB (66691818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc22b9d0a7f3aed0d8eae6d18e62080be458e26512b520ec5033f91085a5c00`  
		Last Modified: Fri, 02 Oct 2026 02:47:48 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ccf489de39462a89ec967f5858d16a5a6b448f6f61eb2c366f6e4d2b39b578d`  
		Last Modified: Fri, 02 Oct 2026 02:47:48 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2832263cead178980be4afc1dba55317fe3dad942830d6e482aca3eaa62b93e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b306bb39715c63ca3df852e277795690aaec17619c06cbd29dd084ad0c0ee3`

```dockerfile
```

-	Layers:
	-	`sha256:0da7b2cb6ccac9b315577c3c0c2a1bd8b30bc60c8e69a38ab37d2acd8fdf64d0`  
		Last Modified: Fri, 02 Oct 2026 02:47:48 GMT  
		Size: 5.1 MB (5121160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a21b6d646f2fcc69a91dd4b787795b80da6921673886bca268e3fbd41ba1224c`  
		Last Modified: Fri, 02 Oct 2026 02:47:48 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2dd643d764bd10c4cd7147a9faa072bb7b55a0f3c01abc6ba9dd2a4b11fe5fb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251204466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8033234c1c3623b25d77f08496379d2f6fefc0a36c6e7abcee3e028b59fcdf3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:47:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:47:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:47:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:47:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:47:05 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:47:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:47:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:47:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:47:20 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:47:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d31ed78d7934200760b349400ec3e057095a8dae269d57c57220e78f7d7d39`  
		Last Modified: Fri, 02 Oct 2026 02:47:43 GMT  
		Size: 156.4 MB (156400687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4518cc8128b7b5cfffb04ccc29b8ea4605821bcef9057e521a55e7db3be0513`  
		Last Modified: Fri, 02 Oct 2026 02:47:42 GMT  
		Size: 66.7 MB (66679057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308acf9c2374ccd1d28c9ba4bc5f5756753cd36499fd2bfcd0743ae353717eda`  
		Last Modified: Fri, 02 Oct 2026 02:47:39 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c3648243c8409041dfa777291a067e6799de5f32681c35b2713304ab0b7fe3`  
		Last Modified: Fri, 02 Oct 2026 02:47:39 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d13ae5b7e5e4a33afdf272ce01bd99d54abea5de13788db93ded25aefe6ac278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5143029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a7e93a418724c2dd5ac9e6ebdd271fa0588aeaca6aa35856c040a6f75e476e`

```dockerfile
```

-	Layers:
	-	`sha256:fdc2c464d0134707638c46a027c9dd6be1a214dfa553c0b4306f9a80832128cf`  
		Last Modified: Fri, 02 Oct 2026 02:47:39 GMT  
		Size: 5.1 MB (5126921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b35cb852397d79e471513b7e525342268c36fad18720893287ba9a22bd837d2e`  
		Last Modified: Fri, 02 Oct 2026 02:47:39 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3399baa910f1fd1a43d28affca739f0f3a2d67b0bf32f65a72cd0078c6c7d302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262865206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eba6ea3f02ad94f676c12e1d24b8035327c66bb63b8966b8e57fe371ed31812b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 04:54:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:54:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:54:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:54:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:54:09 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:11:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:11:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:11:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:11:16 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:11:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8675132cc1928675d26590aa9e0b63693254469cb35208eefcc74b4ea68a6b3e`  
		Last Modified: Sat, 26 Sep 2026 04:57:04 GMT  
		Size: 158.3 MB (158282664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4956c5ba53b5b62fbecb84f772633650236e9702d806193faf709c9b828832a`  
		Last Modified: Sat, 26 Sep 2026 05:11:51 GMT  
		Size: 72.5 MB (72497936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bdf7f6af0503ec58ff5a61c0b420464d087384e00f29250e0bae12c00d4689`  
		Last Modified: Sat, 26 Sep 2026 05:11:48 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a5fdd403fbf01ee173e089516180c477060635849ed3ea13de2b041dbd2284`  
		Last Modified: Sat, 26 Sep 2026 05:11:48 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9c9ec1d627f498e9fdc3dcde1356915369fee116e65d885f799767f4925328d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a6fe4f7128b7fa83bc20ca422480bd59522ef2069e72fd54f3a86eeb9789cba`

```dockerfile
```

-	Layers:
	-	`sha256:397fd3d799990f9d2a215a6eed45e365a5953f7c5f8fe5a9d6d50aa20e9e5736`  
		Last Modified: Sat, 26 Sep 2026 05:11:48 GMT  
		Size: 5.1 MB (5126318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43c3667c890c8b4d6597ee84b922ee16622e43eb397cecc0628ae748dbf0a25f`  
		Last Modified: Sat, 26 Sep 2026 05:11:48 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

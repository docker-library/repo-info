## `clojure:temurin-26-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:d1cfa1035c4a82e6684995f67631ecee811402056d470afd83071ed11889cddb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:13b937e3ffc0b31bebe4d996123536b3b7dff4408ff5ab56140d0d3628383da4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221086913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3d94d94d5dac8e95dbd35e6dec8c4f929348af47ecc34a9519565f5671fa65`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:21:25 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:21:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:21:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:21:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:21:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:21:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f379239e9b4ac5825707580f64033d6e2e5d7e7f622f78bd8d9a2b85bfeaadc8`  
		Last Modified: Wed, 21 Oct 2026 01:22:03 GMT  
		Size: 94.6 MB (94563521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f777bc2e8fdc1c860025430e725a195756950aadaf98e584dba522ea928ff5a0`  
		Last Modified: Wed, 21 Oct 2026 01:22:02 GMT  
		Size: 78.0 MB (78000264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51892906f1459146039fc43a3c8c76b0e7c64dcdb07a3b6297556e9fccd259a3`  
		Last Modified: Wed, 21 Oct 2026 01:21:59 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2bc10d595c3ae5f134bc84b6b899a127f42a851f851337cff6ccc2007dedce`  
		Last Modified: Wed, 21 Oct 2026 01:21:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:dfaa0881c65187bb1f2eaea8d711f089abdf9bf7fff7fed899e046bbac4a5268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7361531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c79862fe068db675c409cbc249fa434fe002131e22b571bc980e97b498ffccf`

```dockerfile
```

-	Layers:
	-	`sha256:8b9af55f67440db248285ae09e707e0d6f5c996506837a96e9b77b82a2ec5049`  
		Last Modified: Wed, 21 Oct 2026 01:22:00 GMT  
		Size: 7.3 MB (7344922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e62b40e9e9285315055f46b8f3b398f830b6ae32fb3f45272dfc33aca30d8e48`  
		Last Modified: Wed, 21 Oct 2026 01:21:59 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:85088ed53be0301a20d565238174b4e2785b15553b57b83d876c76451e964c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.9 MB (219931889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7251e5e18fddfa63017b59ec5f34979aa33c0fe519ac65563cf359840c322297`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:27:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:27:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:27:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:27:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:27:30 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:27:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:27:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:27:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:27:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:27:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:943925c619558e40930ca34cee42a18d2f46d9b6cee089da9cab9ede065af66c`  
		Last Modified: Wed, 21 Oct 2026 01:28:07 GMT  
		Size: 93.5 MB (93543601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b224d01064d69edc40c9c64f35f8a3b8e0ba17fce8912bae960d38f4a867cbab`  
		Last Modified: Wed, 21 Oct 2026 01:28:06 GMT  
		Size: 78.0 MB (77984133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983a69d6de03a95937b67d2035f73d37d93b110eb0c62eb38b13511beb65920b`  
		Last Modified: Wed, 21 Oct 2026 01:28:03 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc51ea6b1c8648afc664a4329cd3cb9702d08eca7528284551f03dcdde5f3110`  
		Last Modified: Wed, 21 Oct 2026 01:28:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7b19b01b730a19950c9ea8325fcdd0bb2c25ad0d71217688f5ccec56c9d0ba9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7367457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4c9e98bf0bba98d8fd050a58e23573393db1cbd09cbcedfacafd279f9139df`

```dockerfile
```

-	Layers:
	-	`sha256:595615ff2908de7ee5ede45267b132743499874ef81952a2f529f9a76c085efe`  
		Last Modified: Wed, 21 Oct 2026 01:28:04 GMT  
		Size: 7.4 MB (7350706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43b53040ace720230e43c07500c6660a46dd9953099e4aa8ab4b84873dd99bbe`  
		Last Modified: Wed, 21 Oct 2026 01:28:03 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:7e5c6df2576147250b02f04a942bf1eebcef5ab542cc5434e69cd1d7091203f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229553732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55c883075a0f885f4079dd59ef67ebd4521be9bbb1e8c48172e67e456926f60`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:01:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:01:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:01:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:01:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:01:21 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:11:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:11:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:11:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:11:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:11:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45cf4557b0dd8e520302a63b87bfc1c5ff2dd29442ad047383a634b6ae3b42e3`  
		Last Modified: Wed, 21 Oct 2026 11:05:54 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fe2dc501400f8449c763b517cf6d4cc8f73293c20d8d542e3313f7bd48343`  
		Last Modified: Wed, 21 Oct 2026 11:12:34 GMT  
		Size: 83.8 MB (83837089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77e042b6c4d2248036953c6d0bb343b6035c5904b21a67f7d246399abb552ce`  
		Last Modified: Wed, 21 Oct 2026 11:12:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76767285fdb457bfe97e0ca19555d2a400c7c161b9ee610492264b655f8b7e63`  
		Last Modified: Wed, 21 Oct 2026 11:12:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7aab25f57e62cdc79be1353e15c96a7a30babb00e90a96785b81c9e5cc5cead3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7350753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a0c35ff9707ab71bf5d059566b38785e548d5defbdf8804bcdfdc6d733442f`

```dockerfile
```

-	Layers:
	-	`sha256:554e4fdd92dea50044d03293d25e117a5fc9a681a3b594899462554b0ee71f17`  
		Last Modified: Wed, 21 Oct 2026 11:12:32 GMT  
		Size: 7.3 MB (7334084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:695bd07c93f4dc58716814d61de8a3b72358f8e29fdcd87e961b7c4576830ad7`  
		Last Modified: Wed, 21 Oct 2026 11:12:32 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json

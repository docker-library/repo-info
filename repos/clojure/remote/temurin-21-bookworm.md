## `clojure:temurin-21-bookworm`

```console
$ docker pull clojure@sha256:927bb9793038770c378c19a5be7c58a2b7682505b2f11ff4dcbfca2e6d286836
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:25e89475abade00801b1327044a5c37b392595e050440e7790e8458e7549924a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284792577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aab341d0e133110960d802170a98114b928b522161ed631b331c1932de8e6a7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:48:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:48:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:48:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:48:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:48:29 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:48:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:48:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:48:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:48:43 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:48:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa758f5ebcab8bd92dd6549ecb3c41a5efe8d3776fba39fdb1d5b81d9b13beda`  
		Last Modified: Wed, 09 Sep 2026 03:49:08 GMT  
		Size: 158.1 MB (158120336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ec21b9721e7cb7f2beacb3c036aa90144609b110735bb2e27509b5c4d88e00`  
		Last Modified: Wed, 09 Sep 2026 03:49:06 GMT  
		Size: 78.2 MB (78173837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35ed674ca28e5b40426ac0db8d63bbb7f1c36ac3bf490e8730dc943058833ba`  
		Last Modified: Wed, 09 Sep 2026 03:49:03 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e823e0b5119570904b13ddb633bfa877a0380ee986c94da3b92e15b60f5b8880`  
		Last Modified: Wed, 09 Sep 2026 03:49:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2490a8a3e8b7d1cc0730edd2748e869901b1183184d685e79bd9c691485e0e84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7399747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b0c22c005971874b756ea88dcbc297b5388f33a80a3957e901455fd5dbbf0c`

```dockerfile
```

-	Layers:
	-	`sha256:e7a75e31462b975964e5fc0a2037bc8438eed9f2d2a3deb0f711ff06499a05ed`  
		Last Modified: Wed, 09 Sep 2026 03:49:04 GMT  
		Size: 7.4 MB (7383132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94108beeb6151d9706af626a44958b77b25c5b16b948eb7902708d7828d15909`  
		Last Modified: Wed, 09 Sep 2026 03:49:03 GMT  
		Size: 16.6 KB (16615 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1fec0a42a8d16c14538e039f219091a34a4e6803f230fdc71421abac091a1b86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282961216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c553f519262084da12632affac73fc9793fd3edf0973ee5a71c39758035d88`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:59:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:59:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:59:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:59:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:59:58 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:00:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 04:00:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 04:00:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:00:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:00:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65d8744f5a8cab7d548c64b2f0567383dc2fa6da0c325a13b32cc0ff1feab53`  
		Last Modified: Wed, 09 Sep 2026 04:00:41 GMT  
		Size: 156.4 MB (156401930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2383b1e5cf3a6d7fe530b2160838c5e00e98b10f28ec6d9d5615c085368116`  
		Last Modified: Wed, 09 Sep 2026 04:00:39 GMT  
		Size: 78.2 MB (78174595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b360d2e3bd65bb4ff05708b54f3d685e76abf63f8ceee9cea1caa1de553986f`  
		Last Modified: Wed, 09 Sep 2026 04:00:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bba26cfd5a69dc704384fcdccf586d40fa42762884aab950a91b3490f69b438`  
		Last Modified: Wed, 09 Sep 2026 04:00:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:261b745dc4a65cb4834b13b690a434fa2a9280a4955f2c10bf535bc1b9b564d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22b9d21d983f80cd995fe7a9b9bf0a8d0e2cc88fec844a3829c9e39299271448`

```dockerfile
```

-	Layers:
	-	`sha256:3075149ab93bad3f4ed3346fb17af068cb3ffd7e87df821fe29947960060f7cd`  
		Last Modified: Wed, 09 Sep 2026 04:00:36 GMT  
		Size: 7.4 MB (7388919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:daf67d67ff306e68ffdecd349febc84821d8811f486016ca6082dba2aeeae8e0`  
		Last Modified: Wed, 09 Sep 2026 04:00:36 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:575291856337f4d1defdafdf36dfadaa6231c803c8098d3540bb92bd6c8221d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294602172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ac865ba6c906d1f2cda740e6d121cf1d525cb0c41e119692e228ccd6921560`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:20:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:20:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:20:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:20:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:20:30 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:21:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:21:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:21:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:21:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:21:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f14408da35d1f050a1b6d9bf3b1a019bc9d47db0dbdeb7a4fa6d6c3e4a0c970`  
		Last Modified: Fri, 04 Sep 2026 00:22:07 GMT  
		Size: 158.3 MB (158274895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358d5f980f82ae9f282fe63b05e44bb3911ae80de7068776c4adc41a44c8cd8e`  
		Last Modified: Fri, 04 Sep 2026 00:22:06 GMT  
		Size: 84.0 MB (83984475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ff6153082618afc42c30a107406185736f2a7ca0f190ff95bb3541f5c5767c`  
		Last Modified: Fri, 04 Sep 2026 00:22:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e550ff7b88b0a585ca5d1b86d9b5cf7cecb422228e583e700c06e292dbfd91e`  
		Last Modified: Fri, 04 Sep 2026 00:22:02 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bfd09be7037c11e0a438a89986607c4632ceebe6d9b908fef9a744e5f2758872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c1016efd1e8c7ba3d6cfbd156552a523e5a20e4f2beac1232ff3d4d7b6e017`

```dockerfile
```

-	Layers:
	-	`sha256:b92c4e1e668c094b1e521677fa8a6eb2b0da7d9c381e6fe94d8a6b2d90e4bedd`  
		Last Modified: Wed, 09 Sep 2026 11:11:02 GMT  
		Size: 7.4 MB (7389135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ae242cb6a8e6e68d2397a03077a56b77c47024269bd693fa643635108d31aae`  
		Last Modified: Wed, 09 Sep 2026 11:11:02 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json

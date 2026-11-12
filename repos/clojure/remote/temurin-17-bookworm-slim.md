## `clojure:temurin-17-bookworm-slim`

```console
$ docker pull clojure@sha256:cd9499acbf8a30004a6f09d154b5342088d8432d3858d9353c663d7c78b2907e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5f8e3330c4487b13cae36bc9a8c6d5011541b8c6872b8869b41d08349fbae6a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240844023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f60b410e27f73fac2b705670b332c7bb2793e62d22eb9d9151ddb776ece63f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:48:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:48:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:48:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:48:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:48:21 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:48:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:48:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:48:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:48:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:48:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c048e2cc6d8044a4a82d0551ead47de148cc148a16b1a84016c8281c746b73`  
		Last Modified: Thu, 12 Nov 2026 00:48:58 GMT  
		Size: 146.1 MB (146086151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed19a861fa72ef44cfe09a2bf1f023e42788f90374396b56108d64fab43ea4a2`  
		Last Modified: Thu, 12 Nov 2026 00:48:57 GMT  
		Size: 66.5 MB (66508345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f23b066677dbf406ce11d1f559f80d882a61d7ce6346a622684618fcd9f2263`  
		Last Modified: Thu, 12 Nov 2026 00:48:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18505ec915c3ff67dbbd37cc05e2daf416d923920e28707ec80fae20d368666c`  
		Last Modified: Thu, 12 Nov 2026 00:48:54 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:901062de072bca6fb60e12aace8bb73af6f36753502ab86c360c948ea9f5e197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc6cc26e3bf8718e66d7ed2accdcb48c6aeba6885b8d421dd12c51f23bfd742`

```dockerfile
```

-	Layers:
	-	`sha256:c35fc2bc3e76c6dcebabcf744d7d94b9f4e4a4e904f40c41ea6d166bc605b144`  
		Last Modified: Thu, 12 Nov 2026 00:48:54 GMT  
		Size: 5.1 MB (5118105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e906291aea8d2ad06191702653161336579f18e4c93477b8104ef3a774ae7b89`  
		Last Modified: Thu, 12 Nov 2026 00:48:54 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:686145e43caa02c0d7b74e8ce423649df70dc9439686c17dc4f60b41e2353159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.6 MB (239603311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b8afa25b162c3380fc9730121cf79d2cfa199154753ec4f6912751688cc0723`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:03:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:03:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:03:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:03:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:03:40 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:03:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:03:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:03:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:03:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:03:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0595f54f653137b8e41c5cac32b79fa1cae1f298b40d4e8bae826fcb3cb2c60`  
		Last Modified: Thu, 12 Nov 2026 01:04:17 GMT  
		Size: 145.0 MB (144957210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b65651629db3f78436df22b7045cadf9a18c191365353d97b659618bd962201`  
		Last Modified: Thu, 12 Nov 2026 01:04:16 GMT  
		Size: 66.5 MB (66500201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b9ce23830785f9075d4d8d1943046eddf0365b0962321312741ceea47a7c38`  
		Last Modified: Thu, 12 Nov 2026 01:04:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4394abdfcf3ea8f090d5202c993ae64a6f3aa18bb31dea8b3251b6e28396f8ae`  
		Last Modified: Thu, 12 Nov 2026 01:04:13 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:398ec2ea95c80c9007ca32a4a79af7b1b1c6184a76e8d9a8afe3a872ff8e742c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcfb2da27f47db0fa0b195a0a644c9b4f5822d9eca496c7565bedc1baa30f82a`

```dockerfile
```

-	Layers:
	-	`sha256:b60ff5a4f1a64c2d2a8a485a4aee988c47823c5e6428c91e5e56d6b9c573b5f8`  
		Last Modified: Thu, 12 Nov 2026 01:04:13 GMT  
		Size: 5.1 MB (5123866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6abd72774d915f1089f3aa74b153f49361121bb82e24fb092aca683434f28da3`  
		Last Modified: Thu, 12 Nov 2026 01:04:13 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:df1ff2752f60d79f67e6cd1c22dda02f058520871b54e0a6e7c336bffe567a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249289379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07df2fceb37a8189a44625bb8338141c84b3e3707d5a5f3f63bddebb09492b4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:36:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:36:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:36:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:36:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:36:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:44:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:44:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:32:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:32:16 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:32:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49bb31fa4370be1b5da85fd3daceac235b0934e95508bb9b0a4a7473576892f`  
		Last Modified: Thu, 05 Nov 2026 15:41:20 GMT  
		Size: 144.9 MB (144860469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bddacf7e54ad43585261968f1610254d20e98a4f7a0ce1b3146023cc989100`  
		Last Modified: Thu, 05 Nov 2026 15:45:08 GMT  
		Size: 72.3 MB (72333806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bdf337a9c14f779ac174aa732c3945a1ab417e940995bfadf3ca46bdd5f346`  
		Last Modified: Thu, 05 Nov 2026 15:45:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf9020e0bc2ad826781e2f3e8983f20513d7c08722559923928d81de1999e59b`  
		Last Modified: Tue, 10 Nov 2026 02:32:46 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f8b0b503b3ab989e36f3743547bca8ae6f458cc2e0f180726794a368ef6b8201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65af4f36107877ebb1c6f2a2d50a341cd8b6a8ee294605f7a987fd29457a107d`

```dockerfile
```

-	Layers:
	-	`sha256:c63a2074a01d156adbc228ed74f699e992a8905e53f3b24b158792e4bf17829b`  
		Last Modified: Tue, 10 Nov 2026 02:32:47 GMT  
		Size: 5.1 MB (5122017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97152ac4c0f256fdf900a40b2089b9975141a5e4c416f15a77b290482824cf42`  
		Last Modified: Tue, 10 Nov 2026 02:32:46 GMT  
		Size: 15.1 KB (15083 bytes)  
		MIME: application/vnd.in-toto+json

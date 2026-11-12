## `clojure:temurin-17-bookworm-slim`

```console
$ docker pull clojure@sha256:eb6e60ce666da4f2efac1b45d133649f721a529cabd8b34e95cdcd15b48d716a
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
$ docker pull clojure@sha256:f9a11777fba30e36e73e5c82f45500470874326948ac06c12ff8b2a7e1c2e91e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249288626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713895871851e5956bb272bca813f33a59123a5419f8a4efcbb78cdd60bdbd23`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 08:02:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 08:02:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 08:02:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 08:02:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 08:02:14 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 08:20:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 08:20:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 08:20:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 08:20:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 08:20:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8154dc284622fb4f6b2910a339d4e429599729583b608bae1fdc5b72270941fc`  
		Last Modified: Thu, 12 Nov 2026 08:07:17 GMT  
		Size: 144.9 MB (144859676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ec71ef6a9e83e58c695bef14d3a96c12d6e471fcb7601600515a63f0699295`  
		Last Modified: Thu, 12 Nov 2026 08:21:13 GMT  
		Size: 72.3 MB (72333844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4e07d41a9fab6449c31bdd42e8b4b988e4a25c83b94516d523077bf95ba70b`  
		Last Modified: Thu, 12 Nov 2026 08:21:11 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3927ec9f08ae2112dc09823ca9418e287d9aafe92c9c32530d1168c1aae5b4`  
		Last Modified: Thu, 12 Nov 2026 08:21:11 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:09c57a2f985d2d183d124e2451d3b453df31332590908539ebc9a37f62998718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f84717d5f31a8c44832c67de0c88b81a296288c1c197ac8095d722463c141a8`

```dockerfile
```

-	Layers:
	-	`sha256:d8603c99b3b183c49006ccd36e79a116df69b5141b2726de230c63a38fd26019`  
		Last Modified: Thu, 12 Nov 2026 08:21:11 GMT  
		Size: 5.1 MB (5122017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2063ed2155875937cead0770f15fc17c363f3a8244b5b2d72f3ecb130c38fa5`  
		Last Modified: Thu, 12 Nov 2026 08:21:10 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

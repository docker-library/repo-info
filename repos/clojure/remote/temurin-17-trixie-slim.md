## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:e1476df65af5495491a86509e722f8cb5e27948d6e77c1102800e1604dff54a5
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

### `clojure:temurin-17-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3f8e1c195db2c3df17bf559a9c5f9d6a801b7a25271cbd8b270aaf6d2d25af53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244643958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:065aac746c06f23db3ce402d4f1836425d263a4500db595298dd879c73aa2885`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:51:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:51:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:51:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:51:58 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:51:58 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:52:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:52:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:52:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:52:13 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:52:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271b87ea6b03f6df9f67feb0efc2762af2af743645159fb43c4f557b5036789d`  
		Last Modified: Thu, 02 Jul 2026 05:52:36 GMT  
		Size: 145.9 MB (145906332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf07f494820cd1b5b4aae0abe8963683fc0a0ddc75310015163e8d33889feb3`  
		Last Modified: Thu, 02 Jul 2026 05:52:34 GMT  
		Size: 69.0 MB (68951162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4684a6130660c10bd48baa58404f183665ca610d9ce9c8eaa63d96446631120`  
		Last Modified: Thu, 02 Jul 2026 05:52:31 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11d4e4ef8c65731af558b5495dd39dffdd76ebc0912f6283970b0d099a85ec4`  
		Last Modified: Thu, 02 Jul 2026 05:52:31 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:59923b8403a772fc0a9b1c2a325dfb1118edfc720130b27d8a57b377a72cdc04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d80f2fd4d110b3aa327c206dc4a4fbbbcf8c0bfc4500e349fb50d3dc5ec619`

```dockerfile
```

-	Layers:
	-	`sha256:f598c8a2fba70a5abe141178c99c070eb25e049c47743ce5931302f1990295c0`  
		Last Modified: Thu, 02 Jul 2026 05:52:31 GMT  
		Size: 5.3 MB (5257278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3afa7d65d9c127a817893bc169e2e3d7b371ecad6fab1b17493e5a282da2774e`  
		Last Modified: Thu, 02 Jul 2026 05:52:31 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d63c76ce5a97678823391c6228fcc1e214c719e5a7d781255803bbb63168d663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243651617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d343339b52d1b9c5dad582a238333e9100f6ed05f8c9d9636e701689d15ef78`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:52:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:14 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:52:14 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:52:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:52:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:52:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:52:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:52:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4c93ae9b6051f237203cbe937ca154cbdada8faab65af873bf614b74a318d0`  
		Last Modified: Thu, 02 Jul 2026 05:52:55 GMT  
		Size: 144.7 MB (144724296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0757712115c52d32c449e9c99a7ef0db95762c3cc4884971415623100ef199c3`  
		Last Modified: Thu, 02 Jul 2026 05:52:55 GMT  
		Size: 68.8 MB (68777729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b6e5aea4e02d998b841edeff36ff114b69a93801b431cafca4c50f2a7fbada`  
		Last Modified: Thu, 02 Jul 2026 05:52:50 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e27fd2c59ddc9c19faa266019d7b2f711baa1f0a5c6e7b804e5c98b6cf08f0`  
		Last Modified: Thu, 02 Jul 2026 05:52:50 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4ffa8a22f8091393bb40769ba7680eb80ab8c8fb4f7086c8347be1a7bb30f496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1c4603efbfe51f32596894bc2dda45f39bdeb6b1c6f36f75f5037583470d89`

```dockerfile
```

-	Layers:
	-	`sha256:bb7cedb1df0494c41b39e12844678dd7b1fba4aa9b5f00f16a0da7b128c4c357`  
		Last Modified: Thu, 02 Jul 2026 05:52:51 GMT  
		Size: 5.3 MB (5263039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c128a3400ec64ef5b866c5d7c2c94663a272461c1de02ae965f72295a3860b5b`  
		Last Modified: Thu, 02 Jul 2026 05:52:50 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:592cfe1bcbb9ebf097c010e9557f8b1d6766d61b923f2f12ad7bc60e315aad5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253744035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5b813def928c39c2d0e54411237b212cdd1af3a02f0e2f2091a71c28b10bc8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:12:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:12:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:12:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:12:32 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:12:33 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:19:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:19:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:19:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:19:36 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:19:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a98bb09fe2905e280f55a5a18ce330dadbdd8e631d0f11faa306ca11aa04656`  
		Last Modified: Thu, 02 Jul 2026 07:15:54 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8014abba2fe13f47b0cb1c9bb0b88bdf29d90c585ab63677ae419a1e27c99c`  
		Last Modified: Thu, 02 Jul 2026 07:20:11 GMT  
		Size: 74.4 MB (74370420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9057ca2262a64efd85e77a515d5318a63351557346d7cbb3e6a0091783e05a6d`  
		Last Modified: Thu, 02 Jul 2026 07:20:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07bdb249dba820f050ad8e773bb06dd71bc996fee12d57fe59cf5715cef13447`  
		Last Modified: Thu, 02 Jul 2026 07:20:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c2d8b98ace25e38549667707e27063db10f6458b45f8dab72560cb1d5950eaa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5277663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb24598a258d35394ef7ea3afac46d060eca91628c690ee85c48269556ad15c`

```dockerfile
```

-	Layers:
	-	`sha256:8817b1d6ee585639f35e4ee9a013ad1096602b26cb2911baad8e0086a095277d`  
		Last Modified: Thu, 02 Jul 2026 07:20:08 GMT  
		Size: 5.3 MB (5261649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1f75245cf0c57c059803f7a80538f2536d7f57d920b1c284e7c78d6b90fae94`  
		Last Modified: Thu, 02 Jul 2026 07:20:08 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:9b7ca80051fc4ee248b2e10378b025e717701c672b7e70fecf0bfdae7b36a2d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235695820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14312d0620e906fac7de46c45a596334ccaf13680c3117cf75174de081bfa9e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:50:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:16 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:50:16 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:52:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:52:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:52:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:52:16 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:52:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304e11a343a7137b7f56e1646f63fd377b0e35fd4a8aa11af65471a512171c1d`  
		Last Modified: Thu, 02 Jul 2026 05:51:43 GMT  
		Size: 135.9 MB (135910453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f0c62e7c752052c7f82a119ece3b106eb70214e44acc968689a77c38ff2997`  
		Last Modified: Thu, 02 Jul 2026 05:52:38 GMT  
		Size: 69.9 MB (69932946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf2144a21e4d5aafd92dfd430eb63b0382739872838fb5093a16ab116333c9c`  
		Last Modified: Thu, 02 Jul 2026 05:52:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368d252eaf9064295877b1938545edc00f3dfef0231adb38a39f9ed94e3fa209`  
		Last Modified: Thu, 02 Jul 2026 05:52:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c61ac333d71937c81f20a96314045dd63e7850f98b18407b025a25b53d3c6ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5269168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e83bff26e4f3b9ea3f793ed2f10cb170320e3700af6c188256f176b32f73c4`

```dockerfile
```

-	Layers:
	-	`sha256:f994f14c1f783ce2d924b6e41e6755aa105adc657f2d868658513b9f9ddcfa9a`  
		Last Modified: Thu, 02 Jul 2026 05:52:36 GMT  
		Size: 5.3 MB (5253202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:feaa4eecdaea2616237c005cb05ddd5e38986ea32020212ed1febdf37012c9c6`  
		Last Modified: Thu, 02 Jul 2026 05:52:36 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

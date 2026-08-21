## `clojure:temurin-17-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:883286424147cb977841f8482ab8c79933495eef337f264cf9995289d1c28334
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

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:28e16b7badd127796977214e23507318b172b0f2fb718bd98a7951f77dcc70bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277674965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f7876b9acdabe647860f2720fd2db85192e8de6a093be6a019b617416ce22e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:14:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:14:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:14:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:14:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:14:04 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:16:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:16:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:16:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:16:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:16:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfe23ca63260c31c11f4e759ec2f3606cb42f535a1311e64ee5394ebed7f5cb`  
		Last Modified: Fri, 21 Aug 2026 19:15:40 GMT  
		Size: 145.8 MB (145822643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d07f786ea4eebe9b69e17775fb30a420bb9467eb1b8e5f8897f0410b7a134`  
		Last Modified: Fri, 21 Aug 2026 19:16:28 GMT  
		Size: 82.5 MB (82538967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d613a3f71936ba8bc49d0a011ffe5632eb0f857572a08dfd6a6d9975828274`  
		Last Modified: Fri, 21 Aug 2026 19:16:26 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144cb8e14b4f17e4d15f90b5cca0d649f2e6ccd00d3a7991d7c7d6764b32d87`  
		Last Modified: Fri, 21 Aug 2026 19:16:26 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b3a986664b97f6a790e5a0d2bcc1c9a38be2d0ed8d4d872a8d383675a1e4015c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7483844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67be952db592d800f2898fbe492ecff9d985a48e96eb587943e27a539cde5cf1`

```dockerfile
```

-	Layers:
	-	`sha256:21aa5c2b8c3199c6aef8c9087bff910132513d8a1bfb1205cb8a50357bbf040c`  
		Last Modified: Fri, 21 Aug 2026 19:16:26 GMT  
		Size: 7.5 MB (7468891 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45aa5275f95d3074beedaf7e133e210a43c2f3b60d480bcfba0efa2a99718001`  
		Last Modified: Fri, 21 Aug 2026 19:16:25 GMT  
		Size: 15.0 KB (14953 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:77b07f760dd36a2c62e68eb335ebae3e0966def892437c1ac56721906ea2c608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276681357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024e397a261dba239e84657716ebee05bc88c6531cd0b870b6993c9aa956366d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:04:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:04:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:04:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:04:59 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:04:59 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:05:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:05:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:05:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:05:17 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:05:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9618518ab023c195351908bca0bd9d3551078fc70a6cabe9633017485caf4a22`  
		Last Modified: Fri, 21 Aug 2026 19:05:41 GMT  
		Size: 144.6 MB (144647513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da28f8e8599e34ebb739ac532b483c58dcfc30c6ff2bf5d0dc9704d00f17a44f`  
		Last Modified: Fri, 21 Aug 2026 19:05:41 GMT  
		Size: 82.4 MB (82358959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9ae853f80e04e4f75d3f6afb7c300d5d23023af4d57d2204285223b6c59ddf`  
		Last Modified: Fri, 21 Aug 2026 19:05:38 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e242f47e7880d4aa71d87074d488a1029e315a9883bb195693a495111b9bf1c`  
		Last Modified: Fri, 21 Aug 2026 19:05:38 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:85691644235d7446cc1ad049af86d4db8a705f70f870de8f71507947cdcb4011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984db9ffc5e1cb6e1b41567b1fa9f6bd0f874c7d84afa995e059e8b31acd62f9`

```dockerfile
```

-	Layers:
	-	`sha256:1f321d7cf9d5091aaf80154b1bb92b7825c3f5e017f0d078bab3dda9b283a580`  
		Last Modified: Fri, 21 Aug 2026 19:05:38 GMT  
		Size: 7.5 MB (7475284 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51f3dc0effc633a3e5f75a30b70a4fedba8089fead15a9db2584402f4a324658`  
		Last Modified: Fri, 21 Aug 2026 19:05:38 GMT  
		Size: 16.0 KB (16025 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:0a71a179a51372e63119cecc177bb422aa2c440cebee462480df8a5b6d6acf03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286851398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b70ccbf1ac9786426edb6935044ad483e664b74f9d552aea562d1b6ff5863a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:08:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:08:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:08:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:08:51 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:08:51 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:16:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:16:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:16:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:16:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:16:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aaf7ee4a7ce8db72b4b4150cf96c296b1885780495fc941d3703783f6350c30`  
		Last Modified: Thu, 20 Aug 2026 01:12:14 GMT  
		Size: 145.8 MB (145766232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ddda7adfb5b4d36f995edec5c0969f17cb493e3c4e881fe4abc0cb5c7ea5021`  
		Last Modified: Thu, 20 Aug 2026 01:16:47 GMT  
		Size: 88.0 MB (87950520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca251fee42b9154c82f3e4644aacf17415c9311f7d6fc651c82c0e844340c4f2`  
		Last Modified: Thu, 20 Aug 2026 01:16:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a636baf14651caef53174c4e0c83940d598aec3d00b01d95c7a37fae104dff2d`  
		Last Modified: Thu, 20 Aug 2026 01:16:44 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a2294f6fdab8601f300a08e8a9dc71fa8bd2d3fec63b7297c3c7bc62247ba03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4571e6e4448000e4044fa7bc06632f82de4039d1b0a84b0d547ca091af46550`

```dockerfile
```

-	Layers:
	-	`sha256:eecd5b823cab261383966fb7a07d83fa4b905a3f7c204f0b79ac8f4810715029`  
		Last Modified: Thu, 20 Aug 2026 01:16:44 GMT  
		Size: 7.5 MB (7473314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55285814da60292b883d14c18a6def607f828f750b7b360dc439dcbb5f3aded0`  
		Last Modified: Thu, 20 Aug 2026 01:16:44 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:359d6650e14dd1059d6ce4874e74337370bcc6d121a006b1f907eb5671b64810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268773064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2f52bb197a05dd10546d535229d60728db117b0eb6292357f7a90c47f0b77c4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:54:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:54:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:54:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:54:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 18:54:32 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 18:56:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 18:56:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 18:56:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 18:56:46 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 18:56:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad992b0fb50a6311cb71108c3f0f09b03227b12d43ca8f339ed7031420f42c0d`  
		Last Modified: Fri, 21 Aug 2026 18:56:08 GMT  
		Size: 135.9 MB (135871068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928a76bcf058dac31390d3c5f07d37bcaea5aa40b3766a0d7bc193ed4a9131d7`  
		Last Modified: Fri, 21 Aug 2026 18:57:15 GMT  
		Size: 83.5 MB (83519532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a93385da191882c1076b4567e48d2170a32b5521ddb2d5d26984b5fac85ae73`  
		Last Modified: Fri, 21 Aug 2026 18:57:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4436aa1f02e4c97ae530d76e17bee18c8f4ea4146d591f114678bbd33b767b79`  
		Last Modified: Fri, 21 Aug 2026 18:57:12 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8c12d1cf452517f339abaab8312050da5642bea32cc3e2e64813bdf530a655e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7480721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22388348892968f21f493086d3f60d41c23f0cab61196ad471843ef2892e141`

```dockerfile
```

-	Layers:
	-	`sha256:6d8ec119dd7473a211a37bac1e1732100f4cd4ed1674ef721c7ad871e7c0a433`  
		Last Modified: Fri, 21 Aug 2026 18:57:13 GMT  
		Size: 7.5 MB (7464813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8a2527b5bdd952665c043abb85e9784c606e0fa39f9fb8346a9bbca4c502e76`  
		Last Modified: Fri, 21 Aug 2026 18:57:12 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

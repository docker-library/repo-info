## `clojure:temurin-21-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:e548eb164194487a4125afc080955c3520ecf43ea09d4398c0fde0bd265801f1
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

### `clojure:temurin-21-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:9d227d3bc6f0e84ec87ef48cfac6dc900ce037dc2764c26ad6862f9cdb0194ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284782034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e23b3b5a7b27ad961d34922688bef1d92bb4122bd4eff7bb74376ca0030037`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:18:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:18:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:18:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:18:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:18:24 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:18:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:18:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:18:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:18:40 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:18:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3acf9d5d3279a19259026b88163433cd45a4517aeb99cadfc1f75b82bb68740`  
		Last Modified: Fri, 21 Aug 2026 19:19:06 GMT  
		Size: 158.1 MB (158120290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabcb48adf7367613aac1b5895f323c347b40586972d80c2c1462344505abbf2`  
		Last Modified: Fri, 21 Aug 2026 19:19:04 GMT  
		Size: 78.2 MB (78163614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c74216c6e981c6cce456c347793f35a4a7fbf2b104239a1eaab6c90cb26eab9`  
		Last Modified: Fri, 21 Aug 2026 19:19:01 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ce9c86b73d4d4eb81ca3fab0ee9d3e38e35790dd587885c3e21a9b3f1dad0f`  
		Last Modified: Fri, 21 Aug 2026 19:19:01 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:564257b8b0512f1f349f7aa9f80d7b5a64e7c61cc615536457f8c0f9210b5970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4234070eaef923c7511a8369fa731bd15ef048edcdd0033c70c1b24c7dd2a9c5`

```dockerfile
```

-	Layers:
	-	`sha256:eb4e2991e1c1b33a717ae71d7129b2795aa470fbe668429a6d76d758333bc05d`  
		Last Modified: Fri, 21 Aug 2026 19:19:01 GMT  
		Size: 7.4 MB (7383907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f6a56abd2f2ef7635b8fdf57956a0ee54a7e9d91085e2cc7ef22c919c2fcef`  
		Last Modified: Fri, 21 Aug 2026 19:19:01 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:193f0db464341f7dee53c31febaf2f7fae2cc94e7ee95a8b0296f60ae4ef07d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282932408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33b29ebda30cc5a684260e8522e0531cf1aff58bfed3365f9c3eff867dad1139`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:33:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:56 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:33:56 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:34:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:34:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:34:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:34:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:34:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbdaec0f99c3fb8bc1842d2b137d00c813616292e4355b3c55a3d661c42427c`  
		Last Modified: Tue, 25 Aug 2026 01:34:35 GMT  
		Size: 156.4 MB (156401942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd86359fd5fc0bcdabb306ee256215ea8d4f53e0421f4282b627a98e7041fe5`  
		Last Modified: Tue, 25 Aug 2026 01:34:34 GMT  
		Size: 78.1 MB (78145774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718836c542ff98038d11cfdc0e55dcdb2bb4025a4f9ab7f2ab4f4ebeea323d89`  
		Last Modified: Tue, 25 Aug 2026 01:34:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e74e47a961eba70fd4fd34c6b72aac4ab74b40ca1d5cd2f95da5ff117493a6`  
		Last Modified: Tue, 25 Aug 2026 01:34:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0269c9ed06a0a9aa4b634d9d71e89994341eef26f1c7436bc16422b72f63eb57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7406452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8045e15e5cc2dfba296e72f9314a145539265452ecb13452d60d2e96d9eccd`

```dockerfile
```

-	Layers:
	-	`sha256:093efeccc1a490cb056e14cd8c0f94dbf594a60855eacd8db7be4049dfc70788`  
		Last Modified: Tue, 25 Aug 2026 01:34:31 GMT  
		Size: 7.4 MB (7389694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe394b29a6e74df2c4ade3b0df28a6af1d22fe57df6cdc40208be02f3d6e790d`  
		Last Modified: Tue, 25 Aug 2026 01:34:31 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:9d3ebf13ee6582534f3be686a247575847273336c84008f59cc55adea10a8c57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294596193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8e15ed98cc11dfbea12417f8b5cbd30513e8b53159a5a17a6dbdd7c4e10f979`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 22:41:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 22:41:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 22:41:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 22:41:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 22:41:15 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 22:53:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 22:53:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 22:53:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 22:53:09 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 22:53:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e492fe7ae8b7f183d5d2e309f489390a677b84926a0973cc83b839cc05a5de1`  
		Last Modified: Fri, 21 Aug 2026 22:44:57 GMT  
		Size: 158.3 MB (158274946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a875cf90ab0f55a50c7159fc5c08d0e1587333b4317f05e77e4fae9b90079d`  
		Last Modified: Fri, 21 Aug 2026 22:53:44 GMT  
		Size: 84.0 MB (83978727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692757a22b393d5e924711c74d70c6e3f44bee7b26ca12348b3b972829070a6f`  
		Last Modified: Fri, 21 Aug 2026 22:53:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff976cb5f8d2b18779a58a41c23168d15e4a8a57091c63d760db47c910d6b626`  
		Last Modified: Fri, 21 Aug 2026 22:53:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:163091527aae5baa34fd7e215cf5107730071411cc00c4a4c54fe36c80dfeb7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a77fbede6948e0f6e4f4b7f0c8ed48908f1f8242cc14c5e3fde17074bb57418`

```dockerfile
```

-	Layers:
	-	`sha256:12af8584bdf2857273bed73881f869899e56e648303667ba16b79943f4f1c14a`  
		Last Modified: Fri, 21 Aug 2026 22:53:43 GMT  
		Size: 7.4 MB (7389135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ce08bbcfe28afd768f936b2941242619b5a01e141b0df440947029d3a8cafcd`  
		Last Modified: Fri, 21 Aug 2026 22:53:42 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:eaf8cd300afa9722ec8c089aff9fd3dc6313a7222c78ee0995484ea578f64b81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271482823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abc8a5dec8dca7507daac796fdf3d2b98e15730e66e34662382bf173a2b79f1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:59:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:59:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:59:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:59:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:59:24 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:59:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:59:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6653bbf3d722cd1a5fdd1f3b2adace166c0fdcbf4ac21164354f40c1d533ca8`  
		Last Modified: Tue, 04 Aug 2026 03:00:12 GMT  
		Size: 147.4 MB (147388360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819b30553957d892f192a993971d5ff7a8724bd6d1df561b84d4d7b09436e599`  
		Last Modified: Tue, 04 Aug 2026 03:00:11 GMT  
		Size: 76.9 MB (76936141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988279db3429747ad139e59575fcafcd1227f6c1949e1320eade1ccfd6caec87`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7a30479c2266a53cb27254d284a348210f74bd6e0744259721361509088386`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fef9981179baa7be0108d5fb724c903afc6b5d85bb4a0401dd28ef751fe68126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb612f93027b12bc78ebcbe42ce2d024db7398d860552717e4f0de6391849c0`

```dockerfile
```

-	Layers:
	-	`sha256:607d77ab40133902ad6abd3206f064535e8ab0b70a349bdf1641462d8b1417ed`  
		Last Modified: Tue, 04 Aug 2026 03:00:09 GMT  
		Size: 7.4 MB (7370025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ef75f269f6ca392107fe485241009c4c1eb7cd862adada83a8d1a7392d4e76f`  
		Last Modified: Tue, 04 Aug 2026 03:00:09 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

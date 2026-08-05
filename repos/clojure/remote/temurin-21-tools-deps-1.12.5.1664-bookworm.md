## `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm`

```console
$ docker pull clojure@sha256:d08d523486049ae293012a57a267d290d0400378e097ea84eddb5e8337510a7a
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

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:9a73dc36c24cb60fc8098469e5a6bd54253b8c615c21bcc075136c925874c497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284808334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f634913940d3a919f900b32d922a326a56e372cc90a38837538c36aa22c2b728`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:22:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:22:29 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:22:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:22:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:22:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:22:42 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:22:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc37fe628de7cbc99a6205b07f4bda89b0f0771b699a2073478f7152fe3284c`  
		Last Modified: Wed, 05 Aug 2026 01:23:10 GMT  
		Size: 158.2 MB (158166940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c07e9e07aa69000464c88fdb5000a9141302d019bd3d38b0a51a88ee66b550`  
		Last Modified: Wed, 05 Aug 2026 01:23:08 GMT  
		Size: 78.1 MB (78143265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb962bfe5d5dd195b6186fe9b95dd619204a77b789547aaf9d708e549f09767f`  
		Last Modified: Wed, 05 Aug 2026 01:23:05 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a128527e7211cef167554d0f43278cc5e3c8b4555722c9c64da050a32b6645`  
		Last Modified: Wed, 05 Aug 2026 01:23:05 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ab3be6296ea89a0c5cbdba9e32a2c4b2cad137cde16f75b332eeabd400810c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d509d10c69729440917d9918f444ee4bd757c26a83e901ab3a76968ae021c2`

```dockerfile
```

-	Layers:
	-	`sha256:25b666f3327383cc63a10c80b9883a533b2248bc108ebc49f9e7654ad66e02e0`  
		Last Modified: Wed, 05 Aug 2026 01:23:05 GMT  
		Size: 7.4 MB (7378706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6387c05bf8fdc5f9fbd0c5b7597dbf82eebf659774e66f15a2a5d3d51cd8bcf`  
		Last Modified: Wed, 05 Aug 2026 01:23:05 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:84fcf84cee048cd6fb36893d9c131b260bbcb3993e0f203edba114d2300224c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282974010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d590da30e8b186b9addad13df58e8a7687de28c3a3ebcabc7d63173cb20bad6f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:31:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:31:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:31:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:31:55 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:31:55 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:32:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:32:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:32:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:32:10 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:32:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5d13b60458f25c97ca8069c3b5aa3d8c192f59b2df47718f4b45e38abb36ae`  
		Last Modified: Wed, 05 Aug 2026 01:32:35 GMT  
		Size: 156.5 MB (156461269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48674bc3f5fbdd683e467a55503bb15a038dec012842827d84bcb62da97bf3fe`  
		Last Modified: Wed, 05 Aug 2026 01:32:33 GMT  
		Size: 78.1 MB (78128319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb3a27f771104cdf7d259216ed9db508bb88f0dfa78965968cd0d5af2ad5041`  
		Last Modified: Wed, 05 Aug 2026 01:32:30 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc108c5a0b5942543811077e92d5721aa84cb8aab9d832fcf2a4047215fa6cb9`  
		Last Modified: Wed, 05 Aug 2026 01:32:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:28d2abd02687e594e8c0ec3d4539cd1f1fd272c1c04594a4411643b426a2c56a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c358a3328906f66db079a92e40a970498ead727a6c629327aef66141c893706`

```dockerfile
```

-	Layers:
	-	`sha256:b51e79935007768c634c969d877c94b3044d2a99102d4bd7cd8f269582caed7c`  
		Last Modified: Wed, 05 Aug 2026 01:32:31 GMT  
		Size: 7.4 MB (7384493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:052dc1c0a6a560162726314e104565ea47893217ce0e3848fb1d64e3c20df7ca`  
		Last Modified: Wed, 05 Aug 2026 01:32:30 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:ea3fe8be3a2add4148789b92c3e4a8ed4ef6d35e3d3a7eb323b988326e42f964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294659011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11254007ee85e51d81d2c8f3aa06051d1ab542cb8fc28b952614b4a249e3f8a4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:35:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:35:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:35:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:35:06 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:35:06 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:39:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:39:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:39:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:39:19 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:39:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8017e75b5e8340befe0bb0d34e582d4150e1cdcf9a54c494e4acb067676b5e76`  
		Last Modified: Wed, 05 Aug 2026 03:38:25 GMT  
		Size: 158.3 MB (158343200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e5b4f811ad658090d51506beafcbc4531bd9921057bf45857c7ddd69b567ec`  
		Last Modified: Wed, 05 Aug 2026 03:39:57 GMT  
		Size: 84.0 MB (83973295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681b99f8d63acfe2db4f5021c1102796b8e6c1459a5c0589412ba31cd25f23a1`  
		Last Modified: Wed, 05 Aug 2026 03:39:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3319023938443978fe806fd740f9969cf04122cd38370f2dea05528b86cfe413`  
		Last Modified: Wed, 05 Aug 2026 03:39:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6454d8a3259e063db486d28c701a1844da1d0288e7190b527d0ca418bbc41f85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf1741166293958a9670051d0b306f829daa0a0467556a277bb84e8505aefba`

```dockerfile
```

-	Layers:
	-	`sha256:cf285b10715cc96e2c3214cdf930c1c6ac079c4b8b370d4ba372d2fa8a67562c`  
		Last Modified: Wed, 05 Aug 2026 03:39:55 GMT  
		Size: 7.4 MB (7383934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3873243fcec90fc3212316ed56c5bdc0c2377d617469c3ec7d38e6fb3fa00d41`  
		Last Modified: Wed, 05 Aug 2026 03:39:54 GMT  
		Size: 16.7 KB (16675 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - linux; s390x

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

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

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

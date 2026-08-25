## `clojure:temurin-25-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:ab8229660e9862aeddd81b99989d45094653d7b3b67bafaa871370bef312c671
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

### `clojure:temurin-25-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:bf7846ffc1f51c1232f1bdf33612260351295f6a5f17f9aa1d1da6435bea133a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219276635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590664063c6eadbf4950e9298262abff07e4bad65ddf134fae47dd67ef8524e0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:31:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:31:07 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:31:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:31:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:31:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:31:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc78858088d33b2ff1537eeec83495a08c6d45e4212a2eb26314db16b930afbd`  
		Last Modified: Tue, 25 Aug 2026 01:31:43 GMT  
		Size: 92.6 MB (92615118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b5ae1524b5b4122b9e8649555e29ccade80a324dddd7b8034e91f70e591bfa`  
		Last Modified: Tue, 25 Aug 2026 01:31:43 GMT  
		Size: 78.2 MB (78163115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:540d13fe90c8145056769419f64ae0c3edf896f2e6329881e7b25064ad10d3a7`  
		Last Modified: Tue, 25 Aug 2026 01:31:39 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c48ada2c5c1f050b1e34764ea452565c85cdcfcd255c9f310d0639604d4c3b`  
		Last Modified: Tue, 25 Aug 2026 01:31:39 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ce750668fb32c11c5571bb0cf3d4556b50037b3591a788594a87e9f9eaf31503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49c3faa94c082d6d51df9737eaa144933d436532b47d814dd42c2e2612af6a3b`

```dockerfile
```

-	Layers:
	-	`sha256:39b7b5e74482afcd69221f0f916e7ca4b441bb9253f5cff64098cd1a153045da`  
		Last Modified: Tue, 25 Aug 2026 01:31:40 GMT  
		Size: 7.4 MB (7350767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa233c2634be9b9b2d2faa2be06ee698c5186756307aa0d12615b97f96f05676`  
		Last Modified: Tue, 25 Aug 2026 01:31:39 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bb60580b197b38de627d483f1bbc90d75dbde70830201c2d1dfd9d023c5c2164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218063046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44f228ec433fdf45da7c19720c7e7bc3b832e204e921d4da77835ac98be637d8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:35:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:35:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:35:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:35:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:35:29 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:35:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:35:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:35:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:35:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:35:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c79c2fdeb828cbd0beaf239cc3919ea0e3c68e8fc187cb0b894e5be4d0d49a`  
		Last Modified: Tue, 25 Aug 2026 01:36:07 GMT  
		Size: 91.5 MB (91532219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50040afc4432e916ef0b6f5e15fac2c5b21cd656acfbbdb064b5d88ce42dd310`  
		Last Modified: Tue, 25 Aug 2026 01:36:07 GMT  
		Size: 78.1 MB (78146136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7bb959a4c638dc0f04899fcbfad64ed302f6b28d1c9ef33cc3c4348ccf46e6b`  
		Last Modified: Tue, 25 Aug 2026 01:36:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57973428171f75f3b75c40aec6b62c3260ae21f68cee926c7e1f54e851a7be13`  
		Last Modified: Tue, 25 Aug 2026 01:36:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b67210b0aaedb60ae5796179ddf65732c6590590d28786776678c0b90ceaa59f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7374714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5bfef808eed45d6fdaaddc58b0ea3a0c321926ad3b4fe895fd5e1891b2b5c2`

```dockerfile
```

-	Layers:
	-	`sha256:521f90f5a542ca01e634c1e0f3ff584a134dd409a44a1b66251e1ad1b20d2b9a`  
		Last Modified: Tue, 25 Aug 2026 01:36:04 GMT  
		Size: 7.4 MB (7356599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c2df4477228c57724942bc94b1ee64d821dfd88f9d16e262fa6360da74cd76b`  
		Last Modified: Tue, 25 Aug 2026 01:36:04 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:4bc342190ce45a40a88bb11f662b9e6cd9ed20759ba8528a3b42f95b2a904e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227577036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83750dbd531f91bbbc489ffe78c229824cd3a97b1ace3075c94a4882ae1e711`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 08:00:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:00:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:00:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:00:14 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:00:14 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:47:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 08:47:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 08:47:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:47:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:47:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b894d0906125fd3bcf84478d415df35dbf1fc3f2188a4c32d6aa52dc8e80f546`  
		Last Modified: Tue, 25 Aug 2026 08:04:48 GMT  
		Size: 91.3 MB (91255831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0b187e5ffc2f8c04f1005c3191164a95cab353c7fbd131d37bd1c1f81ebb52`  
		Last Modified: Tue, 25 Aug 2026 08:48:34 GMT  
		Size: 84.0 MB (83978400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f025dd5b2489a8bd2ff64f2026c54e6c366df52e16e5e8b68d159c40ab48bc49`  
		Last Modified: Tue, 25 Aug 2026 08:48:32 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe2cd9b4b7338439624669ade6be0edee4806e9e26c4e8f0bb69edfa64fd5a3`  
		Last Modified: Tue, 25 Aug 2026 08:48:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4e6286eafd0b5f7e452ccee2753fdecc6a358350258d7e7df3fc233388594045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7357340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b49289835c2093362f99d504437f3c55db4477c096d98312256688b83a6fb60b`

```dockerfile
```

-	Layers:
	-	`sha256:951c4f70b2f440deab233b9f4abde6692ca880a8d52e6a5f85660a759547cd58`  
		Last Modified: Tue, 25 Aug 2026 08:48:32 GMT  
		Size: 7.3 MB (7339331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fd232403214baea5fcb887fa1c89c2162f502b12221cd2127bf59689e3bf81c`  
		Last Modified: Tue, 25 Aug 2026 08:48:32 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:f9d3b535243d0ee16847031847c19e4899582e4c3c6e711b0ac878bd36592051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212514659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa7e792368441da2e8d542e2bc6d53aa0cfc3e7cfb6ec47bef2921f6fc0ca2c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:03:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:03:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e56f29808cdae0b0ae79a057631e06d5ee2175c9d7e6333974220725c749743`  
		Last Modified: Tue, 04 Aug 2026 03:03:10 GMT  
		Size: 88.4 MB (88420384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b25c221f4c7edbb89e565552871fb14ab7a518d9c601424eecd608881860a286`  
		Last Modified: Tue, 04 Aug 2026 03:04:12 GMT  
		Size: 76.9 MB (76935952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46b0c2a2840370faf5461d2d14f1fddc703ebda85f0ce2f5d8c1abef8162824`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ddc039332eb4fec26467a37ca7fe0761a8a5e049a6d94787a9c29b4c8a7504`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fb84fc442117f78175d6ad3c1329ba42df5b93d0c990cdc4c56cf9310471af77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7338417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181381876d20d723d44d1433eaa2e4012173d78b27da7c951e0fb3c1fcd2dd62`

```dockerfile
```

-	Layers:
	-	`sha256:91122bd04fed31a28dccbe6ac1d4689279205ad41b50864298fac5701878d151`  
		Last Modified: Tue, 04 Aug 2026 03:04:11 GMT  
		Size: 7.3 MB (7321445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ce8f334aac2e6eb3c2f35c9606bd554112380c92122972229c20ac34fa4344f`  
		Last Modified: Tue, 04 Aug 2026 03:04:10 GMT  
		Size: 17.0 KB (16972 bytes)  
		MIME: application/vnd.in-toto+json

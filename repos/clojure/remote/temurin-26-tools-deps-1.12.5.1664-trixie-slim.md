## `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:1c7e41165db0873b71b1c8093589c9678e0d2d7527aabc818be3e38c61d2a125
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

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2ef6bdc68cffe8c6b12c93e66a1f490df2b4f37f9d6e9389be17bf3a40d973cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.3 MB (193271226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eab9370986ef73fd16c880f5279a1c945b083003415ea20b3aab2247c1952c3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:51:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:51:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:51:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:51:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:51:15 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:51:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:51:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:51:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:51:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4dff52e295175c34c62e72c610d6610964dfd0a30fa27b57eb9775686458d8`  
		Last Modified: Tue, 18 Aug 2026 20:51:51 GMT  
		Size: 94.5 MB (94524339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf35b3fdadd7dcc9af0f2d6c0d5d59e096d8bcacdf71455d464f2d1e3338ebfd`  
		Last Modified: Tue, 18 Aug 2026 20:51:51 GMT  
		Size: 69.0 MB (68965086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bbfddf31fc4fff968875312d9a651f3002e76912fd10278827c4d282139fec`  
		Last Modified: Tue, 18 Aug 2026 20:51:48 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1fc51d15e8a025d959dd1df95e15635f37789902965b18674f576133c8e8ee8`  
		Last Modified: Tue, 18 Aug 2026 20:51:48 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:93986697115d12e4d6ab47dc90261335353df83b97aeb6f886337ddd41bbe716
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5238213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c54e2592ee1ca45594b61fb8a4453a1e89071db4d78a18df374360a44876d618`

```dockerfile
```

-	Layers:
	-	`sha256:2e1a6baa20388ad543267e01235bd53edb67126f7ab824cae71c0152f99c64f3`  
		Last Modified: Tue, 18 Aug 2026 20:51:48 GMT  
		Size: 5.2 MB (5222255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f7b9caaa144604d50a61fcfcf6d183def347c05a762952ad2d0b5d55b7e8511`  
		Last Modified: Tue, 18 Aug 2026 20:51:48 GMT  
		Size: 16.0 KB (15958 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:861486b53ffdbcfcf1c8cb7edb865e87f3f662db8fdb7ff3f6bff588f90f2670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192434726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ebc4deb5e01193cd622ac9c67ff56b89f3b9c6a4692d87a64c924a696c73184`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:51:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:51:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:51:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:51:18 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:51:18 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:51:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:51:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:51:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:51:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d855ae203b6c48672275db12f2619fc567cc021b46fb7342c6f9cb98c321f04`  
		Last Modified: Tue, 18 Aug 2026 20:51:58 GMT  
		Size: 93.5 MB (93504363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31ddf577b18e775e639b833a824332d85be287b321e5ba74c7bff4d930c23cf`  
		Last Modified: Tue, 18 Aug 2026 20:51:58 GMT  
		Size: 68.8 MB (68785713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c72bdfed1bb965fa9b5d34d9d5e7e588d5fe028f92ccc6c32347ef209c5c7d`  
		Last Modified: Tue, 18 Aug 2026 20:51:55 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:072f3e6d5dc554638056c849f5f7dc99b5376fd437eb837b04ecca82a56369e1`  
		Last Modified: Tue, 18 Aug 2026 20:51:55 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:66f212eba850aeab917804b12900718ffb6d745878dca8637f54213241f9b215
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b514c99dcef2f9f76b529b90a9f345bb2a8fc1a05136a44ef7024d20d447ee`

```dockerfile
```

-	Layers:
	-	`sha256:aa9f936cb33dadef227eafbd8774898ed519011a51b4ebced35c8cd2dd1d248a`  
		Last Modified: Tue, 18 Aug 2026 20:51:55 GMT  
		Size: 5.2 MB (5228013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72c8be7aeac18a383e53d8fdfcfc17199a2e1c6204e966bc6b02170be674aefd`  
		Last Modified: Tue, 18 Aug 2026 20:51:54 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:423ec41138c0951b47ed0c780d688b54655bcaa32764b5a8f5c1603b358c98d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201880441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c647bfb3346bb4125d5bcb2ac30df1cb99e3839f439e6e14c805c4ae4cbe2de`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:48:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:48:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:48:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:48:05 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:48:05 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:53:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:53:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:53:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:53:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:53:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ed3a37c0c2d8cca43ab75bf1f40d348ed3f74e5755e33b1bf2e20505fc97c`  
		Last Modified: Thu, 20 Aug 2026 01:51:29 GMT  
		Size: 93.9 MB (93902044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1f2460ebce41f715899d80fb95b0f22463b8a0b3a9080d1df0ebe157a57ee34`  
		Last Modified: Thu, 20 Aug 2026 01:54:22 GMT  
		Size: 74.4 MB (74376015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e658487a5b964ac16d1c8dbed60d4828420467b7b445962d3206ee6e7045e69e`  
		Last Modified: Thu, 20 Aug 2026 01:54:19 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1fc5408876156251191fd6ea26b6971fc7163b08cb6f37b7321102c1919570`  
		Last Modified: Thu, 20 Aug 2026 01:54:19 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d4bfb9e2048ae7a901b61968e93b5cc2aa40e7f364eee15558545dd15bb1ef04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2499048388dec375f1aa1abffd1d1fde1974fd6a65532100ba5504516135544`

```dockerfile
```

-	Layers:
	-	`sha256:b8497ffb5338efc5a0c0cc189ec5ef1713c1558c5518ec23f34f05a3b3d55517`  
		Last Modified: Thu, 20 Aug 2026 01:54:19 GMT  
		Size: 5.2 MB (5210562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70bca1dd706be8877610ceb1ffa660a571a263f1cb7150b4c777a2cff150d4b5`  
		Last Modified: Thu, 20 Aug 2026 01:54:19 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:ca692fa2c50954f06bcdc6e19e5aef4e66917b8195a94a2988f0442dab6ab4cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190330294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:582a768402ae0af2a218b594098aa5fd15671679fa19879e9132e9650ad18268`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:51:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:51:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:51:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:51:57 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:51:57 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:52:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:52:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:52:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:52:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:52:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbebdf1ee4edad28782d9e56bd3c2bc6dca484602f77f08c721dd097eee79627`  
		Last Modified: Wed, 05 Aug 2026 01:52:43 GMT  
		Size: 90.5 MB (90536953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de6778830d2911e7ce215bd6b56b5ef5797fe622817f67a04a8436e99bad263`  
		Last Modified: Wed, 05 Aug 2026 01:52:43 GMT  
		Size: 69.9 MB (69945728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b41fb3b1c48cb5c8416d361268c01a65fb99f5f171228eba5d3190c6b885aab`  
		Last Modified: Wed, 05 Aug 2026 01:52:41 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e3ede0d4e149079676003d4e45f4833f95498ad62673c380f4baf98ed95105`  
		Last Modified: Wed, 05 Aug 2026 01:52:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3ab7824f787a52466fff454f81caf1bb3054b91e8e673fe141d3eb8874b994e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfead3ea1aee7314a8117ddb628a6de775f2d6efe55a8f8f1a76858115ff14f4`

```dockerfile
```

-	Layers:
	-	`sha256:02f23694be1de8e780deb706382f96c194cc08c301d07e2f640da5dbfc7b655c`  
		Last Modified: Tue, 18 Aug 2026 20:41:27 GMT  
		Size: 5.2 MB (5203365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c03ae7a311960798ecb47dc1548128f49e2617c4552aff7fa3ce2e776ae0445`  
		Last Modified: Tue, 18 Aug 2026 20:41:27 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

## `clojure:tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:873bb99940b8ea6c0d3d1128549aa9d02a4f3be641a2332735bf4ee5107039f1
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

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:eb63b3284ee03d9eb920036fcfc6799de05a05be7e178f7e87162b6252f56fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224467336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1229cbbc228587780a3427d7c194d3bf861cad68f0480d6404bf7c83c331b2e7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:21:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:21:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:21:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:21:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:21:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:21:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:21:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:21:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:21:35 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:21:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe87137695f516a140d3f31a97429069b0ad2dcf93d20d6b33013a5f9d678d7`  
		Last Modified: Fri, 21 Aug 2026 19:21:56 GMT  
		Size: 92.6 MB (92615096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94f06a2e3c196bb3647964d4d3ae531f939df285ec5095e931757fc54bc61c5`  
		Last Modified: Fri, 21 Aug 2026 19:21:56 GMT  
		Size: 82.5 MB (82538886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b46be1d8be7265d1a05bb0876563ef61a668bb973ba9b091fcf93d252b3be5`  
		Last Modified: Fri, 21 Aug 2026 19:21:53 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd7a3a1d3b2f3fdf55569c19f804c670398910033fcb50b5088c3dc947f6cc5`  
		Last Modified: Fri, 21 Aug 2026 19:21:53 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a66ecd805a1bc7cfbcb1ca31806e9bb93f017994645c5e4570c6ee67b42e5529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7453524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a5f96dc17d9f77b53418f975e491a4b24ef62ef7cfcbd1e9e6e3086ff19716`

```dockerfile
```

-	Layers:
	-	`sha256:d4ffae8007f45a63a967e786061631a570d7cbc5e2e7033249ca139189e2708b`  
		Last Modified: Fri, 21 Aug 2026 19:21:53 GMT  
		Size: 7.4 MB (7436955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b27584a7a4621a74718ba38362aa9546338bd9d087390416ee34f0963f9ac143`  
		Last Modified: Fri, 21 Aug 2026 19:21:52 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bebc6fa2880d9bca1e1f4bbb4b9dd469c01d2dbe167bea9730437275aafa9e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223565791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2904cd2abeee5a6b359ee5cb9b90fdbe20d3e327d1dc54aab5adade5b362902`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:09:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:09:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:09:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:09:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:09:15 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:09:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:09:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:09:35 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:09:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03e057ebef32b2b4e11fbe6440ac759c920e0d30d379c61a1281326fdb4f48c`  
		Last Modified: Fri, 21 Aug 2026 19:09:59 GMT  
		Size: 91.5 MB (91532188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea5f37fb50fb6bf2fb9e23a723104f341da4bad4de2679ca85e5db160055445`  
		Last Modified: Fri, 21 Aug 2026 19:09:59 GMT  
		Size: 82.4 MB (82358720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9859373fb347cbbd31e8c34a29bac412f90f5981f3af0f64b4dfe63c3c512030`  
		Last Modified: Fri, 21 Aug 2026 19:09:56 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89210fef4a982a79e59ce89bcb7c0b5b6be0b6d0b08b57129aa0adf9d78745f9`  
		Last Modified: Fri, 21 Aug 2026 19:09:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f001be918bb0547598f09550c27a8305c5e16406e9915581d2834746705b455d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d9d262923c5569085cad967427bfa585a274495f4cb082798110304f3114bf`

```dockerfile
```

-	Layers:
	-	`sha256:129266ed2758d02e00bf492e3f62cc41f19e94d1909ee7dc1f0643bb5b73526d`  
		Last Modified: Fri, 21 Aug 2026 19:09:56 GMT  
		Size: 7.4 MB (7443369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48e12d3e5d89ee896627f674d92f1729c1b2d878cf2754d30b21bfff1193fc6d`  
		Last Modified: Fri, 21 Aug 2026 19:09:56 GMT  
		Size: 16.7 KB (16709 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:12daa5643ae263cd0a1600d669b73d5ef54318a597d9656c251b45bb2205f3bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232999217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb08ec3d967ec48574e74a9c5a4aa429ce49efdb80a3f05ad6d5f7793edd4270`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:33:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:33:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:33:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:33:36 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:33:37 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:40:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:40:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:40:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:40:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:40:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efa0cee089e58c8faae54912fc9dcd6aa4f9d1b11a1b44c0b947c37df7dd367`  
		Last Modified: Thu, 20 Aug 2026 01:37:43 GMT  
		Size: 91.9 MB (91914013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3446bcc15b07c8b5473d10eaf57053b01af4559acb9f4f00edd42f7d9a8855b`  
		Last Modified: Thu, 20 Aug 2026 01:40:46 GMT  
		Size: 88.0 MB (87950556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74631f8fdbc03ea4d97beec956753284230847d1e91e4c7990f6e0cdce73aa60`  
		Last Modified: Thu, 20 Aug 2026 01:40:43 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f2eed91fcaa688a6c7f2ab4af4e1ed70af590729846868fbcafe29bfb2d7b8`  
		Last Modified: Thu, 20 Aug 2026 01:40:43 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:731ea30ac46a67613065bbade161ef7c9dcd58ce406af6229b3527087638aec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7441329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd0872ac199156636fb042adc59e897a79d80394edcc00fe771be20b258e31e`

```dockerfile
```

-	Layers:
	-	`sha256:713d6e09fd7568fcc12b5bda3d59c7fba582d23722d6ccd9380f2f0153bce8e7`  
		Last Modified: Thu, 20 Aug 2026 01:40:44 GMT  
		Size: 7.4 MB (7424700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55c27578655b3d78d7a9448b9c41165c1b6661df4e90ee095e09a85b88c5ce9c`  
		Last Modified: Thu, 20 Aug 2026 01:40:43 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:a6b5da9bdf47b08ec77b44e1a37e33fa8faa87089b6fa5cde719c81eb9e4ffae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221324047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed776abe721926498f6059ae987109f07feea80370bfb72e40d6deca58839249`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:10:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:10:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:10:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:10:59 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:10:59 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:12:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:12:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:12:42 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:12:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3816fd31f8a88a78848671f5506401a67f0ecb76c84161b11ae3ce4c63f8fc92`  
		Last Modified: Fri, 21 Aug 2026 19:12:37 GMT  
		Size: 88.4 MB (88421932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9839f5c2bd08ef1ab1f9d1d653f49131b8b321faf27c4da83fa14cf6bfd6b6`  
		Last Modified: Fri, 21 Aug 2026 19:13:07 GMT  
		Size: 83.5 MB (83519650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b12e90a05148760da944608967168744f0d78c71238c833081c35215494540a`  
		Last Modified: Fri, 21 Aug 2026 19:13:05 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1505d1fd347cb0a1f282e859cdf032c51832cb35e356f9d193d5cbc61827776e`  
		Last Modified: Fri, 21 Aug 2026 19:13:05 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:63031f57291e78371b4a4c9fc893ced829d846c07702fc39b8ac0aa772319a8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7434008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7109e52eb1fab31848455f3832d38f597eb44a286318ac9ff233a9b0fb82fddf`

```dockerfile
```

-	Layers:
	-	`sha256:362fdafd8032a986586ec4b70c52723e8385cd49889705f209d116164a25ea58`  
		Last Modified: Fri, 21 Aug 2026 19:13:05 GMT  
		Size: 7.4 MB (7417439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5264fb5e1f276c303451701b660f385d46bf692fee8068795f385acba58cd2c9`  
		Last Modified: Fri, 21 Aug 2026 19:13:05 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

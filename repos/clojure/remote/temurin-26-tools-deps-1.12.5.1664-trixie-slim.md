## `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:a01b3fc136f87eda8b00d86d1e0af98617be126d2c01500fd784059fc75d6a8d
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
$ docker pull clojure@sha256:a3b2915f9c9eb028c7f0539bacc8f6061c318860dfce22d12965c9b3c4c4ee0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.3 MB (193271239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69aa17dbb25e79dab065a17731cff9c3a226bc719d2a51c3d1af1999eaa2b4c1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:26:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:26:48 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:27:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:27:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:27:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:27:04 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:27:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f07df7d25f59a83d6f92297a9d7cfce89a294f55053ff93eba4b9e170526dca`  
		Last Modified: Wed, 05 Aug 2026 01:27:25 GMT  
		Size: 94.5 MB (94524345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365f23be36318b2c2a94c0aff0f5513c3b14366d7fe701de3d52861c199c9537`  
		Last Modified: Wed, 05 Aug 2026 01:27:25 GMT  
		Size: 69.0 MB (68965093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff36d404e7bbcc72ad127cbb641cdf9729418cbd49d1bb782525a5bd20c8631`  
		Last Modified: Wed, 05 Aug 2026 01:27:22 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bf195312f593525d19b252aa9f94d7a87cf409282773460c19e5d160f38bcf6`  
		Last Modified: Wed, 05 Aug 2026 01:27:22 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dd3d02dd812db7353be13b2c073d809e4d040c96ad5ac35341b2cb0f278053eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5238214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f276951f5b462c3295f6023dbfef99c1a0f9d73ff1c0f7291a945bef5af64b`

```dockerfile
```

-	Layers:
	-	`sha256:211bf0929c1e102909d539708c0a1df894d6724da768a257cdf6b4555dd172ac`  
		Last Modified: Wed, 05 Aug 2026 01:27:22 GMT  
		Size: 5.2 MB (5222255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8785ac43f4e87527192edf2fffa7063d30389090f1bc1156ae1dca3eb66a3860`  
		Last Modified: Wed, 05 Aug 2026 01:27:22 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:906ad4cc1ba0e40694642491457ecd7960182dae4e502a84a745a57f0a2a6549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192435196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab8691cc83778fe5cd17b29d13f7bfc58c9bd3771c20e88fee6f7ccbeafa900`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:33:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:33:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:33:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:33:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:33:07 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:33:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:33:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:33:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:33:24 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:33:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff874ac15bf6d1d8be7ad3ed86d2a324519a47603263907a26916ea0427d5697`  
		Last Modified: Wed, 05 Aug 2026 01:33:45 GMT  
		Size: 93.5 MB (93504364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401a4c4711b1addb984810cba47e4e87c7f11b39dda4b12fd92318990cc7c0a9`  
		Last Modified: Wed, 05 Aug 2026 01:33:45 GMT  
		Size: 68.8 MB (68786185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9eadfd8d501b55e4d52ae744dcd1447e249b83c6ab82f99567b750a0852dc2`  
		Last Modified: Wed, 05 Aug 2026 01:33:42 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e281fec0943976d111ed259f4293f5e5c4473ee2b99f5b35303b6423bd1397`  
		Last Modified: Wed, 05 Aug 2026 01:33:42 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6aefc8c06155251276fb63f750928a722242810a624f0e32440743422686429b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada28b38c7db827bcd3af48e7302cf930b60a19d66ae6a23f1461003f38c3c34`

```dockerfile
```

-	Layers:
	-	`sha256:cd1e51f83449dab39633afb954bd891a112792c4ca4df99e1f314e8e54ff4cb9`  
		Last Modified: Wed, 05 Aug 2026 01:33:43 GMT  
		Size: 5.2 MB (5228013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16d64da66fdee60805d0072d47e933eb78d5d5ff88b1c7c46c154ec93d11b197`  
		Last Modified: Wed, 05 Aug 2026 01:33:42 GMT  
		Size: 16.1 KB (16074 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f30df8122c5faf235564eedcd6f33d8fe6d007b05f1c827d8b18565f225ef4d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201880603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e5b72f9bae1d8b1664990a1601a53f67d99f0e0664244e8db9376794284cb52`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:58:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:58:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:58:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:58:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:58:25 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 08:02:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 08:02:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 08:02:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 08:02:32 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 08:02:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb4acaedaaa7309a50cefdf6d418c1ed45dd4e7ce35533e2b816c03865bc463`  
		Last Modified: Wed, 05 Aug 2026 08:01:40 GMT  
		Size: 93.9 MB (93902051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802012636c8cdf01e6e227a75baefe83d7394e96f7c6d0df9e0963ed6fb43b3b`  
		Last Modified: Wed, 05 Aug 2026 08:03:09 GMT  
		Size: 74.4 MB (74376170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c744451c8ce2ea0d6743bbdb1b1f36495fbd417bda48f380972133937e33b9a`  
		Last Modified: Wed, 05 Aug 2026 08:03:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a164c4344c27e77a79860e9ed938bc7a4cbf66270d381bb36dc7564f5fcfff48`  
		Last Modified: Wed, 05 Aug 2026 08:03:07 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e2c21e8a134bdf21393595f79e4223cb789790d1893ea914c4f485e99ede9655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05c7caf2ee78d70e1c7adad438fe715e787fd0fd687e19106464b39147917368`

```dockerfile
```

-	Layers:
	-	`sha256:e0e4295a7c9f3c054d99a5aa80c8e49f23ec1142213e13d9aafa8b3da7e56a49`  
		Last Modified: Wed, 05 Aug 2026 08:03:07 GMT  
		Size: 5.2 MB (5210562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db10520102d61e3bbee9c06270b66d9cc5c268ba9d1798c363e6e263845b74d9`  
		Last Modified: Wed, 05 Aug 2026 08:03:07 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:24196d88836bca36d12d976ba78c553a398d179cd9a5e5bde084e86aa761e103
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
$ docker pull clojure@sha256:db916abab02de18048f7d547d9a1e24ddf731f755f2eca03c84f302cb66b99f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca0a642263a519811154c13cb8503054da87499fc98e3dc3b50a4f27d77ae08`

```dockerfile
```

-	Layers:
	-	`sha256:a35156148f088eb75c859c7773ecec42611e72e37ca104ba89d345286d4e5798`  
		Last Modified: Wed, 05 Aug 2026 01:52:41 GMT  
		Size: 5.2 MB (5203365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cba49de1567912876e6e358f2ef644bd7a52d40d26e57a7f9bcd8dbb8c93ae5b`  
		Last Modified: Wed, 05 Aug 2026 01:52:41 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

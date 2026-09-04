## `clojure:temurin-17-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:a65ae6ce3536f212186efadffe1f06397f11b2ea0c9944a55b643f949d4fad50
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f61f56bf36cd5f1ae7012514b4d15151258145c25be5b8ca3addad548699ffc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240741152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4180bf7801db04c2bf42166a5f37d3c8e2a36e5380b2448d03ba86bcf1bb34`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:02:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:02:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:02:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:02:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:21 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:02:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:02:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5472ef42a389ea392d1395cc3e63018788607b95eb7480b8a6d0acbdc69d6360`  
		Last Modified: Fri, 04 Sep 2026 00:02:55 GMT  
		Size: 145.8 MB (145822632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0adaa0535c52e515a0444d19a8ddce68ce5b5cc005803d9db82529c5d37d60`  
		Last Modified: Fri, 04 Sep 2026 00:02:57 GMT  
		Size: 66.7 MB (66684825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b5a5aeb3dd74f3bb8ddcd71356cbbc457770e82bebd811d01bde72c3fd50e00`  
		Last Modified: Fri, 04 Sep 2026 00:02:54 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a255732188dfd9969f0e365c491b401073c4f965c77054d2dfa7c94d734c6e7`  
		Last Modified: Fri, 04 Sep 2026 00:02:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5015f3de5bbb57ee77d407cb46cb23cfa1582479fa5f50ccb76d03a7077d8e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4df7638e1077686fe3459b56edd78228d1733e10777b56dce150def146da6e5`

```dockerfile
```

-	Layers:
	-	`sha256:c55e65ba358b46eda46e128fa25791336175ba5a800b5be150a73fb64c44d4f4`  
		Last Modified: Fri, 04 Sep 2026 00:02:54 GMT  
		Size: 5.1 MB (5119236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79a299ce0116452890537d8c59c3da59ce993c05232233e05040539b70e6705f`  
		Last Modified: Fri, 04 Sep 2026 00:02:54 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c7538a3dbb5d423037072b6ebc666b3bc6902b614d24c5260c46800936c5e599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239449583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79861711b4170458e681a8ecaf77af0eecccb6fa7323feff3eb5ffa4535f933f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:06:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:06:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:06:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:06:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:06:16 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:06:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:06:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:06:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:06:29 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:06:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa0f7c96801b94afb7f77892dc3c65017af4678b750385adbd21d8ef2eb2993`  
		Last Modified: Fri, 04 Sep 2026 00:06:52 GMT  
		Size: 144.6 MB (144647520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf99e0fca9cfac2e74c7b56f3d0c99ef26664df431d7a543afd02a771f1c5940`  
		Last Modified: Fri, 04 Sep 2026 00:06:50 GMT  
		Size: 66.7 MB (66683733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22195e8b02da45026455dea178564a9067fccadce75643ac480857553a83d67`  
		Last Modified: Fri, 04 Sep 2026 00:06:47 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65277239f303cf878d563c3dd19bbd1102c01d881ccb552a4505eec59874860`  
		Last Modified: Fri, 04 Sep 2026 00:06:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a0aa50108a17f8ad820fbc5e5c16831135d359d828d1928c0f6881acf9f44816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ec8e3096c2423f51535020dd237951836e18e8d5bc52b83e7f269ccc5fcc695`

```dockerfile
```

-	Layers:
	-	`sha256:756eabe47d82c694f87603bda8aaa650f7def98f3f41e93ce2040f28e03ecb0c`  
		Last Modified: Fri, 04 Sep 2026 00:06:48 GMT  
		Size: 5.1 MB (5124997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8086ba40eb81056ee60d57434b97349a4f8209bc9df6506c7c17846d54c21cc`  
		Last Modified: Fri, 04 Sep 2026 00:06:47 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2e7519ebc02c8d6a69b3f9ed013f6a65052abda4285d265be154c7bed6dd918a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250251505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057f8006bf5be250a12669c754b041b1bca9050728722d1a5c8f4ccb1316249e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:15:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:15:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:15:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:15:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:15:33 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:16:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:16:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:16:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:16:08 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:16:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893bbce533d633aa20f9de1ca3080dabe092378877e0ac6b043795028f9f2d14`  
		Last Modified: Fri, 04 Sep 2026 00:16:49 GMT  
		Size: 145.7 MB (145674279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a01e659af89ca28d4c23bc569bdcf4dd2bb5dd0cc607348b60b238571227f51`  
		Last Modified: Fri, 04 Sep 2026 00:16:47 GMT  
		Size: 72.5 MB (72499709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a242c90d0a58fd1020a14033d0ea32743589a3de4b3c54ad1e00c1efb9fdd443`  
		Last Modified: Fri, 04 Sep 2026 00:16:44 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18775aaacbeaa1bf51fdb5567b9b7721b8913e4b6acad813a49e1381a7264e3e`  
		Last Modified: Fri, 04 Sep 2026 00:16:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4f4e590a2c76d66b14b0c5931a057f85b9e97d0d7341be0d0709ef41f5c66215
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e08485c67cd23f2e1a8aa6a870ca355fa1c2bbb06c6a83adef2c420f98746a`

```dockerfile
```

-	Layers:
	-	`sha256:726c423f75b40f04ecec0f4d3022543e6033f51bef553b088e3c9b41f73cb385`  
		Last Modified: Fri, 04 Sep 2026 00:16:44 GMT  
		Size: 5.1 MB (5124394 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:363355edc462dcef332726cc7178b8bedd4fbb1134e0286f295181fa6594e829`  
		Last Modified: Fri, 04 Sep 2026 00:16:44 GMT  
		Size: 16.0 KB (16037 bytes)  
		MIME: application/vnd.in-toto+json

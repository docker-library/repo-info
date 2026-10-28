## `clojure:temurin-8-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:e4a92604486cfd5eab6282dfff8e4ce92e9d79f628e6c4ee1334fa4e84cbc4e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ae200c30db757d18636ef41d6259fa800a7b908bd7261107bf2f88c0610d4b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (154037428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab92892937a52573bf045487b206759482574428607ab72a9fc4add9b09b8414`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:09:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:09:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:09:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:09:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:09:56 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:10:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:10:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:10:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a550ba091e78202dc664f943bbc2ee93a3870b0156711ec4290a27afa55e3c`  
		Last Modified: Wed, 28 Oct 2026 02:10:30 GMT  
		Size: 55.2 MB (55192251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6170e04f5f3c78e70faa68ea8ae49b05fa7f57e8aac72363fa300d2c7f75319`  
		Last Modified: Wed, 28 Oct 2026 02:10:30 GMT  
		Size: 69.0 MB (68989297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9648b2426ce0cb12b5d00e2fd710b6e3234f1e24692d8f6e6aa892dfdcf6325c`  
		Last Modified: Wed, 28 Oct 2026 02:10:27 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eb60d4ef946c2db012f58223a3a6551b05246ca2a5b613e3cc63519ca4a42a44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5396801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bfa0a6f46ffe4af79ce15d2c6a9d06c217a78cc2d18f302902a5361b195eab4`

```dockerfile
```

-	Layers:
	-	`sha256:03f81fdd34c6f0689300cea8e5b64f6ec00df7819c5bae1e66792fb63579ca22`  
		Last Modified: Wed, 28 Oct 2026 02:10:28 GMT  
		Size: 5.4 MB (5382419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4281040b139c83fe9111f8ba5920767bf882fe60fb8732c36691b81cd47dd9df`  
		Last Modified: Wed, 28 Oct 2026 02:10:28 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6d9ffd1acda1bfbad35b385cfe3763717ba64ba8921809af9642b0673abaf7b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153273496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0217a88dad574d6233fcd6374624bb836cf90f55a38abd360348728ee11cc7c`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:16:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:16:36 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:16:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:16:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc93977068dde710f68d0ca8cdceef354a3796817a1930312a32935128873447`  
		Last Modified: Wed, 28 Oct 2026 02:17:13 GMT  
		Size: 54.3 MB (54254273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8875bdcea43c463618bf0da6996b2489c781b0770b94e2ed7099f5980e7bf1f`  
		Last Modified: Wed, 28 Oct 2026 02:17:13 GMT  
		Size: 68.8 MB (68805080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2406f0e3a59e0bbca41e00bcb0ef93be164a046c86fc06cb539862ff3b66b476`  
		Last Modified: Wed, 28 Oct 2026 02:17:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2a647ef43705dab77eaf2cb5410295059503f325cb557929cade2ac13f8f4938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7711b6517f9fd5bff8b54d606f466c609c3b66e564bf96f598be7f07cf988d2c`

```dockerfile
```

-	Layers:
	-	`sha256:f574565b75a84fd8927a18bcfe22ecd1fc2f1b5220857f592ab8a276768d7bc3`  
		Last Modified: Wed, 28 Oct 2026 02:17:09 GMT  
		Size: 5.4 MB (5388880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f7efedd7e93bac9b8e2e117b5b5d85de90251d6780fc435353171f01f24e51e`  
		Last Modified: Wed, 28 Oct 2026 02:17:09 GMT  
		Size: 14.5 KB (14499 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:72ace5768345e949c931bb901c18aafddc8b086445ac5974dd41c614b9a7860d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.8 MB (160752603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a80b45c84babcdb2aba44bd889d72701da6aebae7faaba93fdc4ab7a450a1541`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:32:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:32:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:32:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:32:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:32:47 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:34:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 09:34:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 09:34:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f730b252d5aae89a2715f2539cad7463d605d7c3ac9f326cfaa3b460bc0be20`  
		Last Modified: Wed, 28 Oct 2026 09:35:15 GMT  
		Size: 52.7 MB (52667114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b7e41bbb09df251d685113ca1cef1f267e31bfede296254c4240057a9eb2f5`  
		Last Modified: Wed, 28 Oct 2026 09:35:15 GMT  
		Size: 74.4 MB (74418577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1212bc99449e3e16220c4b542d2d4b8d9029350bf2ca264e942bd533ad8b3a60`  
		Last Modified: Wed, 28 Oct 2026 09:35:12 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:68cb6545fb044b277bfd75afa7edb847d156755764941c21284090523d550e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5401815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2dcefb60e12cf5e88a88280057f2b078879d9a1e1c0d8da0bb337a47b636b7`

```dockerfile
```

-	Layers:
	-	`sha256:d3d965a754cb289ae5b8a8ce9b9b087490e5d5b1f05dd17751c927ee35348b7e`  
		Last Modified: Wed, 28 Oct 2026 09:35:12 GMT  
		Size: 5.4 MB (5387385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b73d9305abb3118bd8456b949b8490ba14a84f83f89bb16fee2ea3997746eb83`  
		Last Modified: Wed, 28 Oct 2026 09:35:12 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json

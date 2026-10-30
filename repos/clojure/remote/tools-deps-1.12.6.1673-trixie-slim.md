## `clojure:tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:608e8d50c08f4d0a02c0c706c1f59ff456e48afac0cf8d540ca92a10cded8cc5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:345fef14f011278a91a92177fa7047b415226798ffaa1dd79de859f0d61659b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191444467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76a4ba57d67f879464ea9b5c9be29b22bcc38648267ff625ab8ee8e4218eb7e0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:54:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:54:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:54:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:54:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:06:01 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:06:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:06:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:06:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:06:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:06:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02ea1ede3b656da220be4ed6b441c71e78e0207fef3cabdbff05d43e46d0a95`  
		Last Modified: Thu, 29 Oct 2026 19:55:02 GMT  
		Size: 92.6 MB (92598844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d56db41d64899e1004e0c343ebde5776cca5569ea6ebff4f6f01e745c51a44`  
		Last Modified: Thu, 29 Oct 2026 20:06:34 GMT  
		Size: 69.0 MB (68989345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5629ab3865e180bad6a707af340824719d6f57841485a8788f8e5c1704e2636e`  
		Last Modified: Thu, 29 Oct 2026 20:06:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ceece4f9b59832e33fe3711c3b146ad158316ee00494cd37a249ccb9395cfbe`  
		Last Modified: Thu, 29 Oct 2026 20:06:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b4f600cb77fb9b3b77fa15b46665ddc718d2e1a1df43ec8e27a33bfbd6a1877f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5246788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3538ac0f0454a32cc71f976d042de6a794639c2e64727609329167762eafabb4`

```dockerfile
```

-	Layers:
	-	`sha256:2f961b8724e1e28bd2a12f5984ff4a39278e70d6e70c9b69e0c530812b842be7`  
		Last Modified: Thu, 29 Oct 2026 20:06:32 GMT  
		Size: 5.2 MB (5230141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce471be3d7dcba747da633246ee0c66a4765246efc05061984134b879bd9819e`  
		Last Modified: Thu, 29 Oct 2026 20:06:31 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a49a1eed9bf4979bd2cfcc582ba3b04a7370ac29cb4941b4b8bdf5449514e649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190545200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2b071de12e3785bb856df855514bca39410335e28e8189161157b70037f5e9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:07:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:07:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:07:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:07:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:07:02 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:07:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:07:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:07:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:07:20 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:07:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90650ab442bd728e686a98bd0b2d8a3da13ff09c9ffbee0368724f576000cf9`  
		Last Modified: Thu, 29 Oct 2026 20:07:43 GMT  
		Size: 91.5 MB (91525570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b570fc74a6f3df463948355403c1116b9d44fbaf32a68b8864c29cb6a18f26`  
		Last Modified: Thu, 29 Oct 2026 20:07:42 GMT  
		Size: 68.8 MB (68805091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9cd93243fc8e2122748c2c7176a29b540a66c932dec9a46c0b607679adc0f9`  
		Last Modified: Thu, 29 Oct 2026 20:07:39 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3a0a78ad7f08c4d460e62be00c0046358bcf71d25a13992cca274caaf06c7d`  
		Last Modified: Thu, 29 Oct 2026 20:07:39 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4af890233e4e6bec1e4e9a22969005df57f7411c970052dc0975a087c33a10f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e60a3b4a4c201c97311025dc094c1f3e0031640726a6476eedea992402b4ede`

```dockerfile
```

-	Layers:
	-	`sha256:ff93c3b623798716676c286441831257be5aeeffdfc4c6e85e488c12a3f86402`  
		Last Modified: Thu, 29 Oct 2026 20:07:39 GMT  
		Size: 5.2 MB (5235923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7651bd81870385a4de59747a1eac1d30c704b2f3924546bfe55de877e5e6a4e0`  
		Last Modified: Thu, 29 Oct 2026 20:07:39 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ed884584bad242fb8808fd688e33216229e00b81b8e35a2052aa47a7e734ad61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.2 MB (198197727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806fd5a84e8cff1ac155d709ca967b2a8df852ab8d301bbb0a3c4944dd0946b0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:34:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:34:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:34:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:34:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:34:23 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:43:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:43:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:43:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:43:30 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:43:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68133e9b05e76d46954f6cf5c0cf62b5a09a4149a5436af7285698288e95fe69`  
		Last Modified: Thu, 29 Oct 2026 20:38:54 GMT  
		Size: 90.1 MB (90111646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f58a6e1f3fe9e26f8b0d65d75dae41630ab9cf56bea4e5decfefcf26950dc38`  
		Last Modified: Thu, 29 Oct 2026 20:44:10 GMT  
		Size: 74.4 MB (74418775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da823a3570d6a7e4494fdb7f2af0dfb5ac0d68ddd6cc9f30bb1b00979085c71`  
		Last Modified: Thu, 29 Oct 2026 20:44:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d298e577b115b7fb0d312857a71d21da2f9812d71e3b562a4a623fca86c7bf`  
		Last Modified: Thu, 29 Oct 2026 20:44:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3faa60cb1650674bfcbae694a0d3dfacf313caea8526b211be9fa8590e9dd6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1c0046a7cd30ced9e53d8f501d7f376ce99b4ce7673484f0faf862701ca22f`

```dockerfile
```

-	Layers:
	-	`sha256:b2123930b8d645e531e4930ef18e22614bb2d07ac35efc7c40c3430877708db8`  
		Last Modified: Thu, 29 Oct 2026 20:44:08 GMT  
		Size: 5.2 MB (5215975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8e754bd680c06fa7c9ed8f385c3bbbed571549d5896ef80ae5ec747fe9e15ed`  
		Last Modified: Thu, 29 Oct 2026 20:44:08 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json

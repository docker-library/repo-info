## `clojure:temurin-27-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:42b2cf51220ace494246e8cb7d0d2ce729947dd021ddff0a526cd040721c35e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:c0d26dda3e0d24487c162d13db98510cc716c65c7bfc187a3c8066eace154118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222429755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1a2b1afc8535ba7def2e7137210d1ae602f7c57c2c9f75a590f2b155fd451fd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:55:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:55:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:55:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:55:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:55:10 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:55:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:55:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:55:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:55:26 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:55:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6715487666cac031b0c01cb4dce444f0a7a8c2206c5b6c7980ac28de380dd3a`  
		Last Modified: Sat, 17 Oct 2026 01:55:47 GMT  
		Size: 93.6 MB (93622445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d6632220f38a54b69c2f19370de0e79a94024dbea3ea866765866d5848ab1f`  
		Last Modified: Sat, 17 Oct 2026 01:55:46 GMT  
		Size: 80.3 MB (80288247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94237c0f991c3d5ef664a4ac719542ecb1a78fd0520adf1707c5639995dc5891`  
		Last Modified: Sat, 17 Oct 2026 01:55:43 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b274ff3b77f224bc03c3c7f57700ef157d152889f28164265da721b43c3e6e`  
		Last Modified: Sat, 17 Oct 2026 01:55:43 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ab04719d4f63e0fa44c4f6be441cafe9682d6383e84482819a438a397fb88a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7361557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c908869bae589d3d840bbb5410229bfe1f6738aacbc02dbc5c1056cfb8db6aa`

```dockerfile
```

-	Layers:
	-	`sha256:ad17cad55959acfe44c67e4cc5f179776d22fa890864c048f7a1d61c0d6eb8db`  
		Last Modified: Sat, 17 Oct 2026 01:55:43 GMT  
		Size: 7.3 MB (7344948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:826225949705cf7891c5b3813b7d165a45c0e830e55fc71df217e51e0af761bf`  
		Last Modified: Sat, 17 Oct 2026 01:55:43 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:60b76d40927af05d3ad1884cdc3770dec7f3fe14b5fd25d08052f82814151e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221278277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00ac3b10660c75d1624965a09e51a5e6e94109ff1e046bf5a7af5041ca33209`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:55:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:55:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:55:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:55:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:55:34 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:55:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:55:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:55:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:55:52 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:55:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481b003630bcbd40d2366c35a64dca139c065e4d5f84105a9cf1f16897e511d0`  
		Last Modified: Sat, 17 Oct 2026 01:56:16 GMT  
		Size: 92.6 MB (92633125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df6ba5cb8b5fcc9c19f0593b176e2cc230af9483ab9e19b484b559680259a32`  
		Last Modified: Sat, 17 Oct 2026 01:56:16 GMT  
		Size: 80.2 MB (80242558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48601bab8e339047289c5a295a68e220b2e2e844af65dba006c7f345e23d4528`  
		Last Modified: Sat, 17 Oct 2026 01:56:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b35a269b015b140b1139429de450467ef065a325630f58b9966253656785fb`  
		Last Modified: Sat, 17 Oct 2026 01:56:12 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fbcbc91432ba73a14bf16aabaf75cbbdac041b1e03398973b086bdabde1a4893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7367483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74230fa8cc97cf52b26e92e2f299163841202b229e134fdeaf2832ad1eac9d19`

```dockerfile
```

-	Layers:
	-	`sha256:7985f49660cfeb735b973831dbbd100e0fd2e7727ff3808c6c124be3145de45c`  
		Last Modified: Sat, 17 Oct 2026 01:56:12 GMT  
		Size: 7.4 MB (7350732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09dcae765feb900dff2ab5e45215cd50a3e89edc9863c6ade34f91a0063778cc`  
		Last Modified: Sat, 17 Oct 2026 01:56:12 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:1e515e1dd8b0b79e5c7a43ce7de69469f81ad39c20fd7164b052cb834f340b6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230910783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45ccb2abfd7dd1079451087f1b4cd149de8149d07256385b7663ad5a35ebec19`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:17:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:17:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:17:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:17:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:17:59 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:31:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:31:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:31:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:31:21 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:31:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c35d2189bfffaa47d970581dc56eca0931336fc01963dc24bcb1872321d3f0`  
		Last Modified: Mon, 12 Oct 2026 18:22:20 GMT  
		Size: 92.3 MB (92255804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f18d9ff8ecf1e7559763ac30dcd8e8fb65afd1baa7f875e51fab0aa5e68ba07`  
		Last Modified: Mon, 12 Oct 2026 18:32:02 GMT  
		Size: 86.3 MB (86291197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6121070ac6f0726a6654d36003bb92feac83720804cd876c444a8cbb58872e`  
		Last Modified: Mon, 12 Oct 2026 18:31:59 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af523e2df53fa0b4d6c1695fac804235c1c842d7f7a50f4e0725e56029f9a0b`  
		Last Modified: Mon, 12 Oct 2026 18:32:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e977dd5013885f4305be1fd15490cef390d402d3b8491672fb76fcde9e941b1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7350779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb815186c806693b29fdf92ccba9ea5f9f70e7f7f1adc2e788fded8baa286904`

```dockerfile
```

-	Layers:
	-	`sha256:34309f5153a0c3783ba731a0ca0658556d38c9276d8c7424478a1d922bbbdcbe`  
		Last Modified: Mon, 12 Oct 2026 18:32:00 GMT  
		Size: 7.3 MB (7334110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eda8d7be5895c474c53d7a7db54b05023b408c268ec9ecfa8131b1ca1f6a02bd`  
		Last Modified: Mon, 12 Oct 2026 18:31:59 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json

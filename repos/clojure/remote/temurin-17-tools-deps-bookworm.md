## `clojure:temurin-17-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:9d5d5710f1dae1d6cbb2b657b180a08e3b3314d2baf58bb6c2e5a222f86ce6e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:45903c9d7b72ad57e15ba1813af9f2b56b6cee3470bb0c0477064d23ae5183b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272491735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9503b6fc198a11b842e72638eef8b87e295f4a26cc5bcd81928a7837040c98c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:02:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:02:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:02:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:02:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:15 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:02:30 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:02:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57a7b62ab3e5da32355e0937da93d1bf697beb51a5f9daf8314594b36d7d769`  
		Last Modified: Fri, 04 Sep 2026 00:02:54 GMT  
		Size: 145.8 MB (145822674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e1a616e49a45f705375c7f183ecdab656234192b6b070e6b18684aa96ceca8`  
		Last Modified: Fri, 04 Sep 2026 00:02:52 GMT  
		Size: 78.2 MB (78170661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e665ccfdd0a66070d92ddf1f1ffb18d2a6a746218ee7e7584a986aa57cde5401`  
		Last Modified: Fri, 04 Sep 2026 00:02:49 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e15bd976a1143e825e8cec63ff714108d5bc5a936a8c1ec3a28a33c4d28cf9`  
		Last Modified: Fri, 04 Sep 2026 00:02:49 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b562a35900b24752a77ce1fbfddd826319861f4ba58549111f568caff48cb662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0450e6f46e1edc45ce3395d5812dd806c47a229f7a7f2af503d1baf14e7fc7a`

```dockerfile
```

-	Layers:
	-	`sha256:bfd1b3efca436f4796e4d13a9c2daa2fe11c0b2ed325557f79d4e94743d19f3f`  
		Last Modified: Fri, 04 Sep 2026 00:02:49 GMT  
		Size: 7.4 MB (7381371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4185f80d89406c13be50f5a6a17e8a66557ef046ed8b4a72aba0029b6fcc3e6`  
		Last Modified: Fri, 04 Sep 2026 00:02:49 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fa4f187ac30490b6bb15ab48736f19f612be57947259559a8908c16558799f67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271202251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:082a44ca7d694a81cb4bd2be2fdd11962a8e5cef5ed916d4aa04b6de38d75285`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:06:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:06:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:06:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:06:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:06:18 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:06:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:06:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:06:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:06:33 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:06:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8dfd7c97cceaa63f244f6af1a07e84d2d8d419f11cd036887bb05056bf0028`  
		Last Modified: Fri, 04 Sep 2026 00:06:56 GMT  
		Size: 144.6 MB (144647501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f975cb551ce9cee5e43ecb75467b15dca1d26ee0c42196aa47e5ce906f5025d`  
		Last Modified: Fri, 04 Sep 2026 00:06:54 GMT  
		Size: 78.2 MB (78170060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69f35f95f38da51298e7e46ceafd35064343a117ef0a57634db3058325dac19`  
		Last Modified: Fri, 04 Sep 2026 00:06:52 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d95b977b377e2b18fbce4aec4549d61d0ee7b98aea11b444ca3ab482f880b4`  
		Last Modified: Fri, 04 Sep 2026 00:06:52 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8a961c2b7569052197aa60b6723382c974dc8963564082289b53f591a014c608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568df9a7866fab6cb98d5037ec136f23b481291e9ef340e84f887aab06049859`

```dockerfile
```

-	Layers:
	-	`sha256:67af0320c69f8c2025eb488b463abc2a1d2cf7d995b95277ba8a06555b72b8df`  
		Last Modified: Fri, 04 Sep 2026 00:06:52 GMT  
		Size: 7.4 MB (7387134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38c62a09299a735de61c9cf19bb5c1c791aa81a222f700fb517745a93caeaf09`  
		Last Modified: Fri, 04 Sep 2026 00:06:51 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:990ec1729909a1820f6901553c0d10624b984510b37fab4ff32f4bc349b3efc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (282001623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bef501bb71082bc81fe9cd22d47e01d3ec28eaf8e64b80b4f3bab9399e7fe93`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:15:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:15:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:15:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:15:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:15:16 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:15:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:15:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:15:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:15:54 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:15:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bfaac831681120d9ba78487a49079bf5c8c71d846a32b8192acee05ff644bc`  
		Last Modified: Fri, 04 Sep 2026 00:16:37 GMT  
		Size: 145.7 MB (145674288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50372b7597e4bda74aa693b05f3d4ecc8e41d77dca0c98fe6a25847e22b5cc8d`  
		Last Modified: Fri, 04 Sep 2026 00:16:36 GMT  
		Size: 84.0 MB (83984527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030e13fea2dbbba565cd90a032a9fbe2b468b627614a31e8ae39072095f0ee68`  
		Last Modified: Fri, 04 Sep 2026 00:16:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64637e38b06d990c86a64ff383428c768ce9cd68eb294df99f040e606b1085c1`  
		Last Modified: Fri, 04 Sep 2026 00:16:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:973e1717b1cf1f0963b2156c5bc2e6b920491dec17f16b5470f8eb7797708bce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7402567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c591e7bf9ea0d5403e86bdf64688914b4bcbb4a3b6d73b5ba5e62e240c1de4e`

```dockerfile
```

-	Layers:
	-	`sha256:0ecde1a939bf364b918f0d6d6ca63090d0bfdb8ae43dfbea3af9fb99fcfaf327`  
		Last Modified: Fri, 04 Sep 2026 00:16:33 GMT  
		Size: 7.4 MB (7386587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8af9b65fa7d6e738e4b5d0ec182b780bdfdab734281efbb3e92d97b48e88de78`  
		Last Modified: Fri, 04 Sep 2026 00:16:32 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json

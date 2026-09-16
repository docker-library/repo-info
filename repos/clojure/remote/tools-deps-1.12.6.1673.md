## `clojure:tools-deps-1.12.6.1673`

```console
$ docker pull clojure@sha256:a2eef29e5df5a49bf40650fab3c6258a18945ae90ea6982a845f96d18e153aa8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.6.1673` - linux; amd64

```console
$ docker pull clojure@sha256:b53cb506a084fbacf8313245799fa4bc77011a8ab6b184399784b78eb57cb71f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219287417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c9493055e85995f0c3b94989dcb7f2543b1315764969b85355f0ada91d2d03`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:37:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:37:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:37:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:37:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:37:06 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:37:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:37:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:37:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:37:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:37:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c81020c4bcc67dc5a786c85840aa89dd898b0708fd79288ec343441f017f80`  
		Last Modified: Wed, 16 Sep 2026 04:37:47 GMT  
		Size: 92.6 MB (92615108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ece4e2cfc35cda86bd1beb64dac2fee2a0cf5a9ab926433f929f77faced36ae`  
		Last Modified: Wed, 16 Sep 2026 04:37:46 GMT  
		Size: 78.2 MB (78173901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d0454d776f41a82139254c97ca9487267f6da1f4665172797fc0e1a918842c`  
		Last Modified: Wed, 16 Sep 2026 04:37:44 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c20b10679eba2bd25245d9cbbd9f9674dc2f9690fa7110c29af62d9ae87aaf`  
		Last Modified: Wed, 16 Sep 2026 04:37:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:adbb3dd47d59f64ac495eefcdbc2f0c19749640daf6cb5d7bc2da3c4ff34c3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7367917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae5bd5d85f6f6b942f1232e75c2b0cde0f5ccf4f338d6495d275e418a8dbf7c`

```dockerfile
```

-	Layers:
	-	`sha256:86bcf01f34d109f41b67b161ca01de924686425dff769aef5793ac9d4aee887c`  
		Last Modified: Wed, 16 Sep 2026 04:37:44 GMT  
		Size: 7.3 MB (7349992 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d516d5af21f0760a79116f90bddad0123a0e74ced4f325b78ea77c6fbfe2df2c`  
		Last Modified: Wed, 16 Sep 2026 04:37:43 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:56475779462a71d712bd3cc33877f2f6cf2802ba7895d3fbd954210431a00a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218091462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7f44875e3a6931656d7c829914c58e70b4337dc255d1183fecb58b65f38f0c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:37:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:37:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:37:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:37:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:37:32 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:37:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:37:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:37:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:37:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:37:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac43901bf92f47e1e87884f99b06c662c94f35eee93465b98ee3571c38c16d7f`  
		Last Modified: Wed, 16 Sep 2026 04:38:09 GMT  
		Size: 91.5 MB (91532222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e81c4b97c57da0e50ee013afb80e85959aaafed83e9fd5e5ec05aec0ab5d12`  
		Last Modified: Wed, 16 Sep 2026 04:38:09 GMT  
		Size: 78.2 MB (78174548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac7c5a40111b9567e4493eb79d804fe199b878dd1099527e683c6252ff1fc8f`  
		Last Modified: Wed, 16 Sep 2026 04:38:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f7248b66390b1aed4151fbeb43d3e40a72ab947f619d7c0b02b389ca30bc4d`  
		Last Modified: Wed, 16 Sep 2026 04:38:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:12c89409aef7bd1caddf6c04744611f771f60f6f34078f48fcdcb7a4346f6875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7373939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d66a88634a24080280cf48af2b555a9c036636abaa913d7be98db0142f352d`

```dockerfile
```

-	Layers:
	-	`sha256:13524cd861f840ba10deeee793ef9a43dfcf0ecc760fcecae038a1cae02416cb`  
		Last Modified: Wed, 16 Sep 2026 04:38:06 GMT  
		Size: 7.4 MB (7355824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dade671a740bba796e07d03a51271de88a0aaa2beefbe19ae362ec2c2179b16`  
		Last Modified: Wed, 16 Sep 2026 04:38:05 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673` - linux; ppc64le

```console
$ docker pull clojure@sha256:3e198781eeeafc6800045bf4f1d16e033bde9b945181e704937b22e756a01083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227583423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:732f55cece29b890dbea593361d30c3c339c5d480bc6f67e084cb387d77bd584`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:58:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 03 Sep 2026 23:58:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 03 Sep 2026 23:58:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:58:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 03 Sep 2026 23:58:55 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:27:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:27:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:27:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:27:30 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:27:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3773e458eb79072928ad9cf963ff5e5431e28ee9d9937b28b7e31b8272cf8e1`  
		Last Modified: Fri, 04 Sep 2026 00:04:38 GMT  
		Size: 91.3 MB (91255825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c742bce4507df143404817b0a921613db4d395802f505b90b406d69b2e1502de`  
		Last Modified: Fri, 04 Sep 2026 00:28:09 GMT  
		Size: 84.0 MB (83984795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb71c5ef1fa9106135e1d9670c8069ef6a2eff46170520974311a80a3a39343`  
		Last Modified: Fri, 04 Sep 2026 00:28:07 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12bb0942b218e1e0e998a09d4a691081e231f6ba131232447ba382c4df172c07`  
		Last Modified: Fri, 04 Sep 2026 00:28:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:60bef21d600750c752164325004c4d1ab0836e76fc63d27c0ff734d875ae8838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7357340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c426b04c577436d0484e9b08ea1c38f979ba68b7cebcb4b5229b593cab97fe7e`

```dockerfile
```

-	Layers:
	-	`sha256:24f39128f75a5f68d6861f949fc7834d48afccc1cfb859a4e6c18a82ac6711c1`  
		Last Modified: Wed, 16 Sep 2026 10:57:41 GMT  
		Size: 7.3 MB (7339331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:210a84f4c16abfdc1c530d670d450e986617c153fdc764158904ab3515188595`  
		Last Modified: Wed, 16 Sep 2026 10:57:40 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json

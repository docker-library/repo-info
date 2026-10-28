## `clojure:temurin-27-tools-deps-trixie`

```console
$ docker pull clojure@sha256:b712367079bb7ba8dc02536b17f16e386f4c55ef775fd1fb5b34cc1603eb2dc0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4405a21d1823bf3bcf80d578589407f813ac26370e0aa47f6e4574ba17e7d383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225601113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdf5bb73c60fe94001834527fc466a455e27a4b6865438cf18c8ee1bbb46e04`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:16:57 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:17:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:17:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:17:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:17:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:17:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b677b30daef80acdd12d3596cb15e15bbd6d967ba3f4246e0a27c2cf63c2c8b9`  
		Last Modified: Wed, 28 Oct 2026 02:17:35 GMT  
		Size: 93.6 MB (93622485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed25e1c95cb83ef2a74dfcfb3e25b3a11f7b7a6876342bb22216f3dfe5cc4ca`  
		Last Modified: Wed, 28 Oct 2026 02:17:35 GMT  
		Size: 82.6 MB (82569691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5d12069246def98c4df7b5de7604c4ca88abf1d8ae1041ec35ecc39e1ff9a8`  
		Last Modified: Wed, 28 Oct 2026 02:17:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9219f54094d5519f5a999967769b5079de48ff570c14d9b0a0af0175bd664190`  
		Last Modified: Wed, 28 Oct 2026 02:17:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6d1d27c2b2f8af43897f248e041b5da16cab96bcc59fa27bb7ffb6d5be4989ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e61bbc1eb58c687664e3998e41e4cd0daf38a4e0952c19406fd18406085f0f`

```dockerfile
```

-	Layers:
	-	`sha256:f67cfcf4ecfe07831df4038ea92f0b9d8177594328e1b516e16488160bbc5c59`  
		Last Modified: Wed, 28 Oct 2026 02:17:32 GMT  
		Size: 7.4 MB (7440391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7678aef523344fe9b340b122266b0a646be6f00826fa01e37723b28ea516f0ae`  
		Last Modified: Wed, 28 Oct 2026 02:17:32 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:506860bcd2ff66a88afc71ce927012d8d2f76efa5265c34cd21cd2cb87e0b362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224802877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6403c6da471d9bf40e78742d5ea4722814d5e985c7f590789b03b9e26083c72f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:24:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:24:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:24:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:24:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:24:18 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:24:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:24:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:24:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:24:37 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:24:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce77081b2533e4e9078c5f26775fb3fe478fbf07058839c9067ae4b45ffc0ab`  
		Last Modified: Wed, 28 Oct 2026 02:25:00 GMT  
		Size: 92.6 MB (92633133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96529bc52bdecd4995677739f6dff10f5c86f3518d618707ddd0686bceece27b`  
		Last Modified: Wed, 28 Oct 2026 02:25:00 GMT  
		Size: 82.4 MB (82392521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747090b5bfc827f2783b07c18b5230e2c84da25d1a28a5f33fa9ae6440607d86`  
		Last Modified: Wed, 28 Oct 2026 02:24:56 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbbb41b3b7240c1c2264a124c5ca5ebb672f15c8917cd26d6fa6505039af66cc`  
		Last Modified: Wed, 28 Oct 2026 02:24:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:79c73b13cb0d5f1299b3b1f644134471139db1cb0f40961ea44d4e59e203f512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7462798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e8f57a87bda7ace16de7059a4cbb6645b4f39d9a948132ec85fd670f8d6ba9`

```dockerfile
```

-	Layers:
	-	`sha256:bb40f16eb35430e9aa63975a6d65717ec9bb5f970406e4656dd113ace14738a6`  
		Last Modified: Wed, 28 Oct 2026 02:24:57 GMT  
		Size: 7.4 MB (7446781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e7db2f78589a7059690ec75aa62829654d25ee089d6bf72221292e342f1f938`  
		Last Modified: Wed, 28 Oct 2026 02:24:56 GMT  
		Size: 16.0 KB (16017 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:360f1543f69ffba2d013e55d1d30f13a48aa2ef1c00eec045bde1628288c3cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233461947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a650655533e448919f8df19dff4f67668eaa7cc3d75cc5c072561653ae2152f0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:19:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:19:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:19:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:19:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:19:58 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:27:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:27:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:27:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:27:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:27:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111adca601e00eaa2050db51193e634c29c863bee4fabc375f63ab9c17d0bc97`  
		Last Modified: Wed, 21 Oct 2026 11:24:32 GMT  
		Size: 92.3 MB (92255808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a9bf4b6c25bedb6eb476358d6af69f90506d0d53806b43770b07f3a2f97d3c`  
		Last Modified: Wed, 21 Oct 2026 11:28:10 GMT  
		Size: 88.0 MB (87997517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a59f8304a7e73c1c79470b2192d4527b56c4f9a4a8e25715db395559457971`  
		Last Modified: Wed, 21 Oct 2026 11:28:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd98c6536d602a2c53545bf07d0b8e835765b5da7d375376502e7cbd104c260`  
		Last Modified: Wed, 21 Oct 2026 11:28:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:748995685fc73208f30b971aba19c16632219981289a26971f3563ecde83e10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7445471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1e3ad578530ec66b20183cfb96a9533cac678fe68688bd12de422b12ded55c`

```dockerfile
```

-	Layers:
	-	`sha256:223d66c7804b43abc779a287fe41022a31e14d98f42b9e497ba6a1e58381c0d9`  
		Last Modified: Wed, 21 Oct 2026 11:28:08 GMT  
		Size: 7.4 MB (7429522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7fe8a0fa42390f6bd89221f3d6e24be3fca81d2b746f40f5dd6fb46ccfdf8d9`  
		Last Modified: Wed, 21 Oct 2026 11:28:07 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json

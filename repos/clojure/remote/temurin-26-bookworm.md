## `clojure:temurin-26-bookworm`

```console
$ docker pull clojure@sha256:cb706f858d9ded6270edcbf947ce85361ef73ae9b4eec2f560e5e5b1e84826e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:13b937e3ffc0b31bebe4d996123536b3b7dff4408ff5ab56140d0d3628383da4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221086913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3d94d94d5dac8e95dbd35e6dec8c4f929348af47ecc34a9519565f5671fa65`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:21:25 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:21:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:21:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:21:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:21:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:21:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f379239e9b4ac5825707580f64033d6e2e5d7e7f622f78bd8d9a2b85bfeaadc8`  
		Last Modified: Wed, 21 Oct 2026 01:22:03 GMT  
		Size: 94.6 MB (94563521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f777bc2e8fdc1c860025430e725a195756950aadaf98e584dba522ea928ff5a0`  
		Last Modified: Wed, 21 Oct 2026 01:22:02 GMT  
		Size: 78.0 MB (78000264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51892906f1459146039fc43a3c8c76b0e7c64dcdb07a3b6297556e9fccd259a3`  
		Last Modified: Wed, 21 Oct 2026 01:21:59 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2bc10d595c3ae5f134bc84b6b899a127f42a851f851337cff6ccc2007dedce`  
		Last Modified: Wed, 21 Oct 2026 01:21:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:dfaa0881c65187bb1f2eaea8d711f089abdf9bf7fff7fed899e046bbac4a5268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7361531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c79862fe068db675c409cbc249fa434fe002131e22b571bc980e97b498ffccf`

```dockerfile
```

-	Layers:
	-	`sha256:8b9af55f67440db248285ae09e707e0d6f5c996506837a96e9b77b82a2ec5049`  
		Last Modified: Wed, 21 Oct 2026 01:22:00 GMT  
		Size: 7.3 MB (7344922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e62b40e9e9285315055f46b8f3b398f830b6ae32fb3f45272dfc33aca30d8e48`  
		Last Modified: Wed, 21 Oct 2026 01:21:59 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:85088ed53be0301a20d565238174b4e2785b15553b57b83d876c76451e964c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.9 MB (219931889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7251e5e18fddfa63017b59ec5f34979aa33c0fe519ac65563cf359840c322297`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:27:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:27:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:27:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:27:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:27:30 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:27:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:27:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:27:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:27:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:27:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:943925c619558e40930ca34cee42a18d2f46d9b6cee089da9cab9ede065af66c`  
		Last Modified: Wed, 21 Oct 2026 01:28:07 GMT  
		Size: 93.5 MB (93543601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b224d01064d69edc40c9c64f35f8a3b8e0ba17fce8912bae960d38f4a867cbab`  
		Last Modified: Wed, 21 Oct 2026 01:28:06 GMT  
		Size: 78.0 MB (77984133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983a69d6de03a95937b67d2035f73d37d93b110eb0c62eb38b13511beb65920b`  
		Last Modified: Wed, 21 Oct 2026 01:28:03 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc51ea6b1c8648afc664a4329cd3cb9702d08eca7528284551f03dcdde5f3110`  
		Last Modified: Wed, 21 Oct 2026 01:28:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7b19b01b730a19950c9ea8325fcdd0bb2c25ad0d71217688f5ccec56c9d0ba9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7367457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4c9e98bf0bba98d8fd050a58e23573393db1cbd09cbcedfacafd279f9139df`

```dockerfile
```

-	Layers:
	-	`sha256:595615ff2908de7ee5ede45267b132743499874ef81952a2f529f9a76c085efe`  
		Last Modified: Wed, 21 Oct 2026 01:28:04 GMT  
		Size: 7.4 MB (7350706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43b53040ace720230e43c07500c6660a46dd9953099e4aa8ab4b84873dd99bbe`  
		Last Modified: Wed, 21 Oct 2026 01:28:03 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:b63fb9744bf77b251ca8bc142d40344feaf15eb808f06cd14a456dfa827a3220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.0 MB (232004955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf01cd433d6f89ae1628e64524fed0d7eac116dfaab7db68d81ad1f176b3496`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 06:33:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:33:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:33:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:33:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:33:30 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:47:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:47:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:47:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:47:55 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:47:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fdb17aa02078bc4a148a1306d7221404a01756cca5380e56a8ec843770ebf3`  
		Last Modified: Sat, 17 Oct 2026 06:37:30 GMT  
		Size: 93.4 MB (93350832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91530aafe2f331a0cc6f95fdc851006fcd38390adb0d223b335fea19a573950`  
		Last Modified: Sat, 17 Oct 2026 06:48:37 GMT  
		Size: 86.3 MB (86290337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a09b3f1e183999640e489210e68d4f5d94e9e471d503a5ba25c4222f4ff51e`  
		Last Modified: Sat, 17 Oct 2026 06:48:34 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5a6cbf4a9ebe6a0722ba20889e2dc7b90a71541d608079e2c7f538fb913dff`  
		Last Modified: Sat, 17 Oct 2026 06:48:34 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e142feeea8343bb2d9d1945fe4b97f680595300f128e088aea47de1dd77e2dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a45101cee38a9bc6eedf3dbd93e246bdf5cda9a84b29bbe2abbce282a1a8cca`

```dockerfile
```

-	Layers:
	-	`sha256:6a6372e1219ddb5ed6f471c787fcdff5139f9b044d5c96dadfa8a40c7dfe570b`  
		Last Modified: Sat, 17 Oct 2026 06:48:35 GMT  
		Size: 7.3 MB (7335379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02d7863c836fecc71e32a97a5f4fca5e1addad9093dc517884b1b125e2a56ea6`  
		Last Modified: Sat, 17 Oct 2026 06:48:34 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json

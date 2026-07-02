## `clojure:temurin-21-trixie`

```console
$ docker pull clojure@sha256:195cc9f5cebffc5fd2dcd95ecab5cde5031faa4dfe52cea0b896b5ba2e6d1ca0
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

### `clojure:temurin-21-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:805ad69a7c43a55650a6b057567be1b3bfe4de2bfe6aee0f1b258aa5bd9810f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (290005378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d138b087bdc05ea31d82c773b27e34e7ff0d29e96e7c16d7480296d286aa26`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:53:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:53:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:53:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:53:43 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:53:43 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:53:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:53:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:59 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d147cfeee01a3701d03254eb028feff6884987c65e93cef3d96b94f23061324`  
		Last Modified: Thu, 02 Jul 2026 05:54:25 GMT  
		Size: 158.2 MB (158166913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8f1494384be49ad04091568c1febcb3203d0c022e4199c7e15aeb180ea9a29`  
		Last Modified: Thu, 02 Jul 2026 05:54:24 GMT  
		Size: 82.5 MB (82520167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc3cbe496c8811eb98b6dc41edf38cc57da1ee5894c9fbaa4f8ebbf3da3d345`  
		Last Modified: Thu, 02 Jul 2026 05:54:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8449d62fc0e7dcee4bdc92f57c1e980e1940f416271c126894e8acaca65ba1`  
		Last Modified: Thu, 02 Jul 2026 05:54:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:49124d671657cb0dd8583e795cf5f4bbf39855424d4397a1346c6e4da3872f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7486567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74bd222f770936bafcefc85c6762f47042408ba9b3f13db2f91bd8b792d2bb12`

```dockerfile
```

-	Layers:
	-	`sha256:386762fc059be6978ad020fe3818a7bb8d49c3bc44fc956999547c0957b8fdc5`  
		Last Modified: Thu, 02 Jul 2026 05:54:21 GMT  
		Size: 7.5 MB (7470659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55dc68bff4887ceb044a22b83bb9b9b36405ab9e135176dfb70585068260b9bb`  
		Last Modified: Thu, 02 Jul 2026 05:54:20 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6b92fc99e1d849220301597b3f8d4b625883dd3e6b7338bf68dd90c66901378f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288480921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b004f104f9c9fa6b079df102a2afc37997c2b5bf0c3811da4ef56734afd416`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:54:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:25 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:54:25 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:54:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:54:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:42 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a0389766517d533206e58bdfa53468ea3f009973d09aea41d67267d65378c54`  
		Last Modified: Thu, 02 Jul 2026 05:55:08 GMT  
		Size: 156.5 MB (156461309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d08a516d9ecae84a4a7036b4a2cf0ab071be2d270fa5a61580f440433131955`  
		Last Modified: Thu, 02 Jul 2026 05:55:07 GMT  
		Size: 82.3 MB (82340177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993ec8659b8594a26b14ce059bb416b7b54733656fa386617a6f9b817956551a`  
		Last Modified: Thu, 02 Jul 2026 05:55:03 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c53f78a71fbe03fa2432689fd7f5d4df4e7c4f85cafa79ba87a261e1f325949`  
		Last Modified: Thu, 02 Jul 2026 05:55:03 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b2b2a8e1face9a3cbcfd3f22a81c8f58d8717f0bac512260a18d922ae0c62714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7493077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feb965b9b2bddc090aacfc779104de6654abcb034d43167cd081ff5eebd2b734`

```dockerfile
```

-	Layers:
	-	`sha256:98de1386bea38e1967cb39dc726b047ab0a7db6d37a84738e647f27a89c8ccf2`  
		Last Modified: Thu, 02 Jul 2026 05:55:04 GMT  
		Size: 7.5 MB (7477052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a13a70dbbe7f7dbeb30fbfee8acd7b3b86976262bdf75f551a612279a9e78d8`  
		Last Modified: Thu, 02 Jul 2026 05:55:03 GMT  
		Size: 16.0 KB (16025 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:6f3dac3e2eb5b5137f5fe567ec70035bdd944a47adca58780d474bb68f8d7992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299420591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0da56cd9a44730133b2d5ab6b8b17f5aa279671793e6e753908a3fae47e6d720`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:26:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:26:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:26:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:26:05 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:26:06 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:32:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:32:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:32:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:32:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:32:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0964c3ddcdd7f9937042dfeaa30d8db89c3f68bedf99f1bb561e658ecd29cb6`  
		Last Modified: Thu, 02 Jul 2026 07:29:29 GMT  
		Size: 158.3 MB (158343184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ce520bb890e6a6c6fa42ce4d01e901d39f9ea18db335b4ae2be6ed4e5dd029`  
		Last Modified: Thu, 02 Jul 2026 07:33:35 GMT  
		Size: 87.9 MB (87938291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c0e8147edd69463fd9750a55e30e94eb77e459697a1563946062b37c03474d`  
		Last Modified: Thu, 02 Jul 2026 07:33:32 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a02631de79c7cf7eed5f7689f3b4f492c6e02dc51590c5c80a8b6ea068b0f775`  
		Last Modified: Thu, 02 Jul 2026 07:33:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3fc0802b7a07b437710e07c1a76a47046bb66e40539fb2a09181ec556134feba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf0a9654abd466fa1bace0eb266ab7a62f8bd3c80ebcfa94a91f088a60669aa`

```dockerfile
```

-	Layers:
	-	`sha256:9453a521ecbfdd65c342816c0fc59d385754dccfd2c1c68b57c4920adbbd674a`  
		Last Modified: Thu, 02 Jul 2026 07:33:32 GMT  
		Size: 7.5 MB (7475080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c564697b7da114e9489622514c8df4824cee404340a79c5fb46ab7ec0c715c22`  
		Last Modified: Thu, 02 Jul 2026 07:33:31 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:88e484f586d4273fe77fb080696f3ff0cbc5368da30bcf387af0d4d8525608b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280278139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2c1dc41e164852ef56acc99072e1cd497b5a95f5af3afaed01daf4ec5b94537`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:53:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:53:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:53:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:53:49 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:53:49 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:55:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:55:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ead621cb57de5ed499d17a4db193900e2342a0d4bf3c61eac91c7498df01367`  
		Last Modified: Thu, 02 Jul 2026 05:55:20 GMT  
		Size: 147.4 MB (147388354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b04580161502657bb4c08bd4121634a0866feca9c17d6f69646600beb3510b`  
		Last Modified: Thu, 02 Jul 2026 05:56:18 GMT  
		Size: 83.5 MB (83502683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83f819f6a47b8b484c1905a8f6ac1f124c9965d5a43f98de6e27e5c8cda48e3`  
		Last Modified: Thu, 02 Jul 2026 05:56:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1288e4415e33da0df73608f54bf32bffd5e6210ac46232eeae2e88a86628d292`  
		Last Modified: Thu, 02 Jul 2026 05:56:16 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3fd7c0b415b92e78e8a9d9fe7204e828602e0880ac9eef9fb139fb04df665222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7481533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdec150d3303df4f6271781e4a7228bf3cde88f7d562c5913af1d64ef0c97f3a`

```dockerfile
```

-	Layers:
	-	`sha256:4ad4299f5727a756262d90d1cda6752b574f70fa15163d315fe8ae866a25b48d`  
		Last Modified: Thu, 02 Jul 2026 05:56:16 GMT  
		Size: 7.5 MB (7466581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6eb2953907065a339b10be3722ffc20330e969dd07f2a2ea2d0c44a3b80ffe`  
		Last Modified: Thu, 02 Jul 2026 05:56:16 GMT  
		Size: 15.0 KB (14952 bytes)  
		MIME: application/vnd.in-toto+json

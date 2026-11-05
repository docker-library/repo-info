## `clojure:temurin-27-trixie-slim`

```console
$ docker pull clojure@sha256:9aad2778cc756e9a27363daa16be00bbe51cfa90a2ce60812a822586b78dbfdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9a40a62f60de2e13bf00351d0a3315a2689a57560aaac1cd52b61f5c066b328c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192469093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834527f56cc54b03a0ddb35b5727aadeeb2c5b3dcf777e48762a0cb6f5501864`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:12:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:12:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:12:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:12:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:12:03 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:12:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:12:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:12:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:12:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:12:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb98ec0cd1275e559f694c6b1331ef35e271b2bd43935a540309117dc63fc56`  
		Last Modified: Thu, 05 Nov 2026 08:12:36 GMT  
		Size: 93.6 MB (93622530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1886f2452eec9af6bcca991b0ed4b28ed06f9b9a5e938bf777b13fb89bcbb6`  
		Last Modified: Thu, 05 Nov 2026 08:12:36 GMT  
		Size: 69.0 MB (68989388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e17de5ffbd09bb395ec011279fcbb0ec0efcf13bf6fdc01025dbd69bf1a270`  
		Last Modified: Thu, 05 Nov 2026 08:12:33 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1dd467a453d2e650f3c9f8107f0ab939bc414b17c49228d4673db4f60eb70e`  
		Last Modified: Thu, 05 Nov 2026 08:12:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0131a139fbdd964432f4d0f2c1485d4009c2cd1a4b6ccc1af71ee79c4edb0ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce679c74e41d8ddb1860b1d7fff63b0e5183f479bca0c8d1694a48c0d280a2a`

```dockerfile
```

-	Layers:
	-	`sha256:d992267b683e025f39301897adc10f83a3448f92f55f4101cb0ea29b534a267a`  
		Last Modified: Thu, 05 Nov 2026 08:12:34 GMT  
		Size: 5.2 MB (5225689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b89752ffb3635c88780a84f09ef89714e376de0519330633cdd101390d6c300`  
		Last Modified: Thu, 05 Nov 2026 08:12:34 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cf167ba775bfa4c09fe947ffbb1f95497bc945cb4244291297a9a02fc990f3e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191653411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43508672080f69499b65a57b4c7a68fe79b7e318b0bbc08e4d2e4ba6b4f4752`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:21:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:21:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:21:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:21:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:21:37 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:21:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:21:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:21:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:21:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:21:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca058d19dabe67efa84e77f754d7394c03b71b18cba7c282f887a96c7d95050`  
		Last Modified: Thu, 05 Nov 2026 08:22:17 GMT  
		Size: 92.6 MB (92633133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22ba7ac5fa9bb137b2691e5975d9f296be0c278e8c8f3eecbc20f029aa7ba8b`  
		Last Modified: Thu, 05 Nov 2026 08:22:17 GMT  
		Size: 68.8 MB (68805198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7988da85cfdfbec57c2735149f45abc8028f068783057af3e436f11419e720a4`  
		Last Modified: Thu, 05 Nov 2026 08:22:14 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b02b22e0fc414c2500b851786aae67c821b107dfce716b91f9aa7eaef339308`  
		Last Modified: Thu, 05 Nov 2026 08:22:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1dd280ea0ce13da6a087e46f1c9e9b284235c3e0303896034ef2bb6d79fe6b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a4cd261c4dfda23f7fa9786a5e0e3ec63baebe95f4ac86ed8961c626ccd4a2`

```dockerfile
```

-	Layers:
	-	`sha256:cfe3b6c1728b072a2812467a67cb51b5c80be54dbead4d8e17d79085ff946ed4`  
		Last Modified: Thu, 05 Nov 2026 08:22:14 GMT  
		Size: 5.2 MB (5231447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5af030587abfb786f297388486011ef3425a68d5fc5daa807aca7512ce165b6b`  
		Last Modified: Thu, 05 Nov 2026 08:22:14 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:95fab7b5bb7d2e907de28aa6866d6f84da8fa7946ca0d0af2426eadc245296ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.3 MB (200343069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68ccb7cb8637dbd29d63a7e878c14a0288ed0c4c14339c6c1f90312ce2b76b97`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:19:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:19:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:19:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:19:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 16:19:04 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:27:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:27:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 16:27:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 16:27:26 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 16:27:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea18a9207438364f7efa683a4cfe98800d5dc3984d6c50c2aae84285294937e`  
		Last Modified: Thu, 05 Nov 2026 16:24:17 GMT  
		Size: 92.3 MB (92255791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6346ed419d2b2e2310d5f2b377f0dd1ccd94d4760530c45c32c8310d5a6f282e`  
		Last Modified: Thu, 05 Nov 2026 16:28:02 GMT  
		Size: 74.4 MB (74418585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cecfb83029c2643d587c50f544204cc18a36faf6a7491e65c535f473078524f`  
		Last Modified: Thu, 05 Nov 2026 16:28:00 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd8bfb024c193024621b64d6b842f1b6811c8a9aa5fa4028237c092436dfeea`  
		Last Modified: Thu, 05 Nov 2026 16:28:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:61e14b55fb2bc4e5fe419b4f5eb61ace8bdfb960127bf7bbe34aff7e8a6f4503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa905266818804aaf6ecb6d71981ab32b7f0481b8391a37dd605bce1f9dabeaf`

```dockerfile
```

-	Layers:
	-	`sha256:597fbf5f119ead12a795e2849f1c45a169c52f0d6e81a2e6f3dd108a627bfd15`  
		Last Modified: Thu, 05 Nov 2026 16:28:00 GMT  
		Size: 5.2 MB (5213996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b4db17545d02d116a75fbe0fa7605b1746176c28fb761b349b05a3635e30f2c`  
		Last Modified: Thu, 05 Nov 2026 16:28:00 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json

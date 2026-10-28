## `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:499b73005ca2978177c23b0388954a7ca631a6929ffb7a9b71341576f1eb1a69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bd055e864cfb7fed3464bdd9259ed68433bd10470aeaf5f3ffbe5357d71a4e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193409234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feff6bee649200c4f8a23edb65344b4fabef81e51170a7df3afde0b59c003fc0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:15:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:15:50 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:16:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:16:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:16:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:16:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0acb23daa540f2a0eef4f9b8527f9c120097427631fba29aab4d4ba7e401cb`  
		Last Modified: Wed, 28 Oct 2026 02:16:28 GMT  
		Size: 94.6 MB (94563578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b61babfaedfba3dc7c7d0436898e3370c8e1c1145675e191e16f2f5d498c480`  
		Last Modified: Wed, 28 Oct 2026 02:16:27 GMT  
		Size: 69.0 MB (68989376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6651b61151e4c22e7f7929238415b19aa6b806173ba91c5d5a5d5b55adf6e20`  
		Last Modified: Wed, 28 Oct 2026 02:16:24 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806a84f7ffb07734e9286a5afccced94e6148d8a5c141dc08e46945ef161ba46`  
		Last Modified: Wed, 28 Oct 2026 02:16:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c9fac43a712252996e0dd2178fc2b38db798f5661027f3b7cd869364064a78a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f69cc0509c6a0b0fc9e21c74bf179b77de32784a6570a06683c99323dd4066`

```dockerfile
```

-	Layers:
	-	`sha256:71d3c80282fd5367033b2a23c5c21d9ab2485806dd7a32bd9791757b4e87bd89`  
		Last Modified: Wed, 28 Oct 2026 02:16:24 GMT  
		Size: 5.2 MB (5226958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bb787a3d08479adeaa7f9030fb66277700927900c53703c7f4685d9de7d447f`  
		Last Modified: Wed, 28 Oct 2026 02:16:24 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f9a33e2a27cc9d034059b7b6d02b2f4b80f0b969b7fb0bb1d819eee9185b5963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192563203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab183e5977096100ad7234cc45fcdf4ff17f3adfb4af37075e6505e8f907dffb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:23:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:23:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:23:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:23:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:23:18 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:23:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:23:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:23:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:23:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:23:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b026f31de297175f4f418d18e8822b361a9c4b0f64297aefe49f78fc8be8c3a`  
		Last Modified: Wed, 28 Oct 2026 02:23:57 GMT  
		Size: 93.5 MB (93543621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f1028e4ad13db688a657b552e9921544b7aaaf06ad995a76050bc8ba689e25`  
		Last Modified: Wed, 28 Oct 2026 02:23:56 GMT  
		Size: 68.8 MB (68805044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fcccbe015ec7ebc43bab103207125c9112a23638705eca9ddede553472b5d87`  
		Last Modified: Wed, 28 Oct 2026 02:23:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2740b0a9e0adffef4e38b18fd4fd39c514f9095dcd051ba06257c37593ef1fb`  
		Last Modified: Wed, 28 Oct 2026 02:23:53 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:244b25b1b562e515f1354e3f74cb0c8eb9a22c50ddb431ea32f38009134c253e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada2e4770cf9fdee11474d8b7ea76b4a80b64372e8028d9a649ccaed3a99f836`

```dockerfile
```

-	Layers:
	-	`sha256:83a343bb2b7ededaaa223ca55446cbb0ced858e82716413f5e5c00df4d68b4dd`  
		Last Modified: Wed, 28 Oct 2026 02:23:54 GMT  
		Size: 5.2 MB (5232716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8963fcf3d47027e46d04d3d8f746d078ebfc6cefe83578694099a4573da6280`  
		Last Modified: Wed, 28 Oct 2026 02:23:53 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0df9482f1093553f3c8de9a98f05272366cac2aeaaa406994cb5cf1a763a102e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201436569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf6a33058b5e81e9fc1acc5d6f299b7340d62d2011c72207c2d56085d7082b0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:29:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:29:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:29:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:29:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:29:59 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:37:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:37:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:37:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:37:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:37:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae13760e9d61444fcc2f77a748836f80a9445eeeb0c585eb266a2d03c5608a2e`  
		Last Modified: Wed, 28 Oct 2026 10:34:22 GMT  
		Size: 93.4 MB (93350842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289a1a8081cc08b0b436a56c723a00fc9d6a8257d4aa9d9bc2e3fd4e94fa1801`  
		Last Modified: Wed, 28 Oct 2026 10:37:55 GMT  
		Size: 74.4 MB (74418421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a85b25cebe9160f588b51c1182bc8098b02411fbaf27d0912aa865187994e5`  
		Last Modified: Wed, 28 Oct 2026 10:37:52 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48be13a3bb9796961e32007a45d0c68ca46d5d8622dfca47a46cd1eba564295`  
		Last Modified: Wed, 28 Oct 2026 10:37:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c57d736468660c07b61175f862fde3f0c26b8c9248a86bd32ec912f71e25ce7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8739c554d1eb77c946068e62a4ae90efa983f9ed9b039c29a2009ed439ae20`

```dockerfile
```

-	Layers:
	-	`sha256:b469e1bb4063a295a8ed7352a181adf1020d72b23ce2ebcb4e34c46b533f0ad2`  
		Last Modified: Wed, 28 Oct 2026 10:37:52 GMT  
		Size: 5.2 MB (5215265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:443f39097a89de86428d27f7055db3046cf753fce8146f736e7217b1d900e4b6`  
		Last Modified: Wed, 28 Oct 2026 10:37:52 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json

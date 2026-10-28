## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:c1d04b867d82822d183e1e94f8f1e3a9ee5a0f779212ff5c8853d92698335b80
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:84dda4468bb2b1008f0cd6f130f01cab12d7bd37d482d85a18a262d1b0753cb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272347782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ead27be222c1321c5498dce691dbbdd3120f6163f5b98bb27fa7c5389e40f281`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:12:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:12:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:12:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:12:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:12:00 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:12:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:12:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:12:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:12:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:12:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a50de2c30be4a72f6f7d81cad2a2995349ffa122c3017fa5ae10cebb079d2fd`  
		Last Modified: Wed, 28 Oct 2026 02:12:38 GMT  
		Size: 145.8 MB (145825460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5a10eed33c80cca6cd7ffbb003780a7ad6f974fdde8f0af06364c33863daa3`  
		Last Modified: Wed, 28 Oct 2026 02:12:37 GMT  
		Size: 78.0 MB (77996726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60a304d4e0444013941418122d6f82f8b21fc026070d11d8b113de1ae17e0e5`  
		Last Modified: Wed, 28 Oct 2026 02:12:34 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cda0876729241395f69809137f7d564700b241f6f227391714adee210466ed8`  
		Last Modified: Wed, 28 Oct 2026 02:12:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bf7e9a35f9f402e99e12c0173db92f8c892584558528a02176089b9af394742d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7394501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:811c4972ad3095753387f25ced175519a0cb5d441c0ef72f146c045f0841cae4`

```dockerfile
```

-	Layers:
	-	`sha256:57cfb46f945573e208cf0f6fb28def9fae1b0ee824054a8c4222e3799443f113`  
		Last Modified: Wed, 28 Oct 2026 02:12:34 GMT  
		Size: 7.4 MB (7378569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f24b036f8829343dbbbfefc7480dd5319345efef2f6fa5a331d5c527fbec759a`  
		Last Modified: Wed, 28 Oct 2026 02:12:34 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ee17c53973ab1a1a370b28e4a28a5f5684ca4e15372e705af9a2ea346c6895f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (271047132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aee0a69bee6e6d67df4e31cc178ee9668d6e6477e82058f1ae6068b42c7f15a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:18:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:18:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:18:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:18:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:18:49 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:19:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:19:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:19:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:19:04 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:19:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b5f80d078a7d5ca0cb4d7c904556cd7ac8be458a8758085f8f885b0a57e1f6`  
		Last Modified: Wed, 28 Oct 2026 02:19:27 GMT  
		Size: 144.6 MB (144648276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d90bf803eea4a33436ccffe2ea486f4f8752fc0f5b96d7f141ce8879b78010`  
		Last Modified: Wed, 28 Oct 2026 02:19:26 GMT  
		Size: 78.0 MB (77992646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65195a709e1e7fb9d102e3b4b20b2261e6f09895b3d820284e59728d43577c8`  
		Last Modified: Wed, 28 Oct 2026 02:19:23 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aeec5411e7ad038744c5be063af2a03fcd624993355cf2efcbacd81971d6f51`  
		Last Modified: Wed, 28 Oct 2026 02:19:23 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f4c7b93c44a23899e07fb5ec0eb198d9b474b2b788601b8ecf41081c7ccfd7d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d1e5b2b3b1fe8de0597aa68a6e01b9e485785242e867a875f82c52dbc6b8ca`

```dockerfile
```

-	Layers:
	-	`sha256:1c38de0232b3fb06550c9dfb829eb89d9d4c1dd0585c03eb4331e59df936cde9`  
		Last Modified: Wed, 28 Oct 2026 02:19:23 GMT  
		Size: 7.4 MB (7384332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7b46354167e113109328553011512e33364bc618a526307499bdc1578fc3e7`  
		Last Modified: Wed, 28 Oct 2026 02:19:23 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:60cf2ffe20a8591026d35c5c73aec7a6f95fd4599d52a5ddd2d9761434458cdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281873919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87eee61b8ad63cd8d3e4c81367198b2915a2f86218ed3dce324fb6031b9cfeb1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:16:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:16:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:16:35 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:29:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:29:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:29:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:29:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:29:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbee517126a754df9c55cf053e388fa44232986d93d455338c5c357816aaca83`  
		Last Modified: Wed, 21 Oct 2026 10:22:05 GMT  
		Size: 145.7 MB (145671508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b946d03f1d850b7c8f4284e40d68b9a1a5a4dcde3901c65c871cf7771ee97819`  
		Last Modified: Wed, 21 Oct 2026 10:30:11 GMT  
		Size: 83.8 MB (83836626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ff8d4be0353a80ae881d911c4c2f5a118df70613b85627440bdf0f9c278ede`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca518a66c04e1f2bbbfe81b2197de8d8f392c71702bceb5fbc6d7b2b7f1a9e9`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5dd2b4446c14eaae431d67060074fae96b4057f26c772f6be26dd62fee268ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a5d7156b808b21265968c522883dfd39b41f7c3423b6b7dc7ccd5bd099b9c0`

```dockerfile
```

-	Layers:
	-	`sha256:c467f2354d882b77e21063f94cec78f6411b3fe070ace00bb08eb651354dd8e0`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 7.4 MB (7384559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:818f0212b5ecf8156922cfdf1715bec4be09104d7ae952c2b6fb27c4ca630d49`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json

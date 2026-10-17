## `clojure:temurin-26-tools-deps`

```console
$ docker pull clojure@sha256:2649d15271efafb50a7b574b4c383a922f418f763bcdc344dfe9313e5770accc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:32f898572e231eaba6fb8366302ce419d67b469f6799619d06eb631a8b66f98d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.4 MB (223370149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365f9051e2b34f3aff4ea948a594486915bca7361a671cd85b7f409c16334a85`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:53:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:53:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:53:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:53:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:53:44 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:54:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:54:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:54:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:54:03 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:54:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259f3707233b1642e4455a42e08b7576197d59de96f9f5cbef0795f54bcc61a3`  
		Last Modified: Sat, 17 Oct 2026 01:54:26 GMT  
		Size: 94.6 MB (94563496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1977d5b29d358c178185713c8cbc3c1a47e61937a6ad3daa2b5fd6be4504d486`  
		Last Modified: Sat, 17 Oct 2026 01:54:26 GMT  
		Size: 80.3 MB (80287592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0871e08bc44cc11ab21ed407d0ee89b472b39585ee9768fae7ba7073f891e40e`  
		Last Modified: Sat, 17 Oct 2026 01:54:23 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd58aabe6134c0f0ffd243cfc26879e0dda92746195fd572e56c319d231e28d9`  
		Last Modified: Sat, 17 Oct 2026 01:54:23 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:b16989e5ed8e3b4531230d76fff3244ec5331934c6593a15530b68666073c0ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7362826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998306d5a94a8f1865ec03e631785bd4b591dfde226a3a5412071384c0617591`

```dockerfile
```

-	Layers:
	-	`sha256:a692d787c2c9c29b80c109b944e64435e8eb24af5e0584d719c0cac50c931c26`  
		Last Modified: Sat, 17 Oct 2026 01:54:23 GMT  
		Size: 7.3 MB (7346217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9cc6e15e5df18afa123841054b7dd6e72f6511484986121abbe75331e1e7661`  
		Last Modified: Sat, 17 Oct 2026 01:54:23 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:600a8aa26654d16c48d976783fd386879dc47a7a5b543ac2a820248e56535a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.2 MB (222188559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48340eebac38a4bc20814bd220c9db952cfc24c72ad7f3df6ccbae63817cb38`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:53:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:53:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:53:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:53:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:53:51 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:54:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:54:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:54:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:54:08 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:54:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5202bca478bbbb89c8274fd0a0f261b060a8714c9abbf1e59ba23e1f251e970`  
		Last Modified: Sat, 17 Oct 2026 01:54:32 GMT  
		Size: 93.5 MB (93543583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be59b01fdb21c7e81264e643ffe6f46660edea68467509e5d68e9bd8cfc25d66`  
		Last Modified: Sat, 17 Oct 2026 01:54:31 GMT  
		Size: 80.2 MB (80242382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b348ab1042f91ae7cf19a4f74298a5c76e52896ff1d2491ec45e42166f1b5473`  
		Last Modified: Sat, 17 Oct 2026 01:54:28 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0440e53eb1e6831ef5c3639148e5c73e14cc4fd1e3f958a13c317483bf04955`  
		Last Modified: Sat, 17 Oct 2026 01:54:28 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:73943cdbd90d20a3f54b891360eca64db101391985ab6c91b0a2ff0c6f16d4a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f642157250366baaf4c8750f555414a94d4597a85bcfea3d51ef9545f44436f`

```dockerfile
```

-	Layers:
	-	`sha256:21f131b2ba02a8eb301e2fc8d96bff5f4595fcc3cbe95e101bf76d8468cf74ef`  
		Last Modified: Sat, 17 Oct 2026 01:54:29 GMT  
		Size: 7.4 MB (7352001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b469b5cb279fd8cf01af7783f43924cc7cca825c313cfde64b3fbac6efae203`  
		Last Modified: Sat, 17 Oct 2026 01:54:28 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps` - linux; ppc64le

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

### `clojure:temurin-26-tools-deps` - unknown; unknown

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

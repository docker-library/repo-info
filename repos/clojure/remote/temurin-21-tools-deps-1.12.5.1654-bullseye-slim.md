## `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye-slim`

```console
$ docker pull clojure@sha256:3a821095b7fb43034cb11de1b6667a329c5f4d7a8d4505eeba74965cfdc851e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a3541112ddbf37245b4f7ae92f4a47613ecaf10e08451694fb71bb4999cab2ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244528128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e36d922153e43085fd8d5644b5c36f4d4f0a28fef4bb7e7bb35f3f5457d3328`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:20:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:20:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:20:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:20:33 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:20:33 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:20:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:20:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:20:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:20:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:20:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48802f29054312a65ec214487e1c72a92f46b36eac33aaf7c9123273f47ffcf5`  
		Last Modified: Tue, 14 Jul 2026 02:21:07 GMT  
		Size: 158.2 MB (158166959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a5af8ed97307a98c0e6117c396c90fab157b184d6a8f050360115134616ca5`  
		Last Modified: Tue, 14 Jul 2026 02:21:05 GMT  
		Size: 56.1 MB (56100377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76e30298c5588e930831c8f12df057553b66247fd712266d7938d356e3e800e`  
		Last Modified: Tue, 14 Jul 2026 02:21:02 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b2448025fc02aaec273503c2bfc1bcdbd9db63aa296a53f962213c8f436a98`  
		Last Modified: Tue, 14 Jul 2026 02:21:03 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:29831a2b46edf63beddc4760c2c75d63f4ec6bb1f9e81f7d9932a7b185e7a71b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5335691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7789961c66f16418044fe2f2304e70d850ff30f46e98df20c5e0ec76cb4101b6`

```dockerfile
```

-	Layers:
	-	`sha256:6fcca4673a9a15fedc1c99883983cc236dc17a35edb4721fde539b3038c6463b`  
		Last Modified: Tue, 14 Jul 2026 02:21:03 GMT  
		Size: 5.3 MB (5319701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6abf121fd8109029d9b5045cd7090743a9ee293d68f1dee6a8874a2a94e1aac`  
		Last Modified: Tue, 14 Jul 2026 02:21:02 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:37d862f282313dce0573881ce134fbb8bb37d3b2335458be7b1ee178d6f3b68b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241478963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9c0a37df1e14dbe0c0fd5100583833587a1e68979efdf87e0518fed5b5ff47`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:27:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:27:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:27:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:27:37 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:27:37 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:27:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:27:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:27:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:27:50 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:27:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8636dc93d9c573df801ba94ff69afdaeef9f8c814683b53f4f16139247409d`  
		Last Modified: Tue, 14 Jul 2026 02:28:13 GMT  
		Size: 156.5 MB (156461278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e377dfc176df423d541152d044de22183747bce02ffe1258a6e27661399b28d`  
		Last Modified: Tue, 14 Jul 2026 02:28:11 GMT  
		Size: 56.3 MB (56267660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a28ed5d4e0b3e6cbe46bc42c78ae2cd6f88319cb142c82ce1c7eec2e3ffacd6`  
		Last Modified: Tue, 14 Jul 2026 02:28:09 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f1c429ac2f0b45e07e11c47c25e7d844e7cf07f783e40fe99e11659536c142`  
		Last Modified: Tue, 14 Jul 2026 02:28:09 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:03e139eaf4378318ec0f4b57153f6c1c307fd83b9560727844437afd8bf77f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa89dac52840372d1120172a4e0c3edf30f22a589a1a15d9053042bf9c755b94`

```dockerfile
```

-	Layers:
	-	`sha256:85275412fadc2f6b3dc295926d3f941e7f74ca9207090b5e124727fd3dd72646`  
		Last Modified: Tue, 14 Jul 2026 02:28:09 GMT  
		Size: 5.3 MB (5325433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f478d292d2be1a9a6528c99ae6d26d97b6527b3bfbd2e92910d43ebd760d1e9`  
		Last Modified: Tue, 14 Jul 2026 02:28:09 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

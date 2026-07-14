## `clojure:temurin-26-tools-deps-1.12.5.1654-bullseye-slim`

```console
$ docker pull clojure@sha256:56a503bbebb0b1a13ef81acbfcfa519cc3446e03813a9349741e96a431bf3e7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.5.1654-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:dfe4ba05ed526c1ba65fd842b4776c2a7c3ff96ac3abdde1eab87562f51184af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180885348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:378c9ff488a747a83c4a525f35dd8601bb598a3baad66548e755faa6f41fe99d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:23:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:58 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:23:58 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:24:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:24:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:24:10 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:24:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5875a3c48d025495994f4fedf0a570258238455a584f13dd6513bc752be466dd`  
		Last Modified: Tue, 14 Jul 2026 02:24:31 GMT  
		Size: 94.5 MB (94524297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b54b04604b25cc6ffc71e5954db875df3785cfbf64c09156edc11bf9467f3247`  
		Last Modified: Tue, 14 Jul 2026 02:24:31 GMT  
		Size: 56.1 MB (56100256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016ebac41bbefc53b4608609f001d10c5a72c2b5e6f60748813e634a6c471246`  
		Last Modified: Tue, 14 Jul 2026 02:24:28 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e0aac5a9cd8308325e768ada17008cb62fdfada477e534f2e8804cf29e106a2`  
		Last Modified: Tue, 14 Jul 2026 02:24:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8aae23317b3504f81984c49dfad972f8847a73fc8afa0694774db326fe038987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5298723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d4ff421f0227f7b5f177bd0eb327c9ba5c5ae4fca485c9bb115ea653a6a3ce`

```dockerfile
```

-	Layers:
	-	`sha256:2961a260740977d6d8aea9887ad266cc6da9078df68ff563d8be12c8df48d9a5`  
		Last Modified: Tue, 14 Jul 2026 02:24:28 GMT  
		Size: 5.3 MB (5282740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7af006ecd22840d39ea708d083610a21271e7233b7d05ff60dd03d14919f1b0`  
		Last Modified: Tue, 14 Jul 2026 02:24:28 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4716bca2e22b407f8f4a894cd9b318e803b2464194bbae0901cbafa52743e012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178521974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:880f612d09f0310431ac1c5f9c814f0cdde71795875aea794bc9ef7c567e9550`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:31:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:31:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:31:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:31:19 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:31:19 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:31:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:31:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:31:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:31:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:31:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:229198bdb31fc0503544edcd3ecc5840e16bd982ae64a7145739af9ff6bd6c3d`  
		Last Modified: Tue, 14 Jul 2026 02:31:53 GMT  
		Size: 93.5 MB (93504360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb64e28cafef1f69f52f56b805dd53c7d872a4c10b913fd8ccf348eb2c5d1c3`  
		Last Modified: Tue, 14 Jul 2026 02:31:52 GMT  
		Size: 56.3 MB (56267590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078d9bb6ef60c5a96ef273785b2ff75ff6852d7adce0344d64e8d43717c78b7c`  
		Last Modified: Tue, 14 Jul 2026 02:31:50 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bae950e0d73c92fad0a870f03a9037d4351c38d916b495e74d7a8a685351c9b`  
		Last Modified: Tue, 14 Jul 2026 02:31:50 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b75ecdfeb5e53ec97d06dc7c837d09b1b6ad6a78c5700765aa4e47527c60f930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5304570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27b0a25c652d271c57dfdbd1b2ee9520b526afe01897de10b5969ed50afcbad`

```dockerfile
```

-	Layers:
	-	`sha256:2d6179ffee6a7f2a564b5300564532822f3e2eb4ec6a979e023fa2f45199dc45`  
		Last Modified: Tue, 14 Jul 2026 02:31:50 GMT  
		Size: 5.3 MB (5288469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be2f51eb5c51a233ef57d36145b31a1981c902f0ca25b88e052893d1cb6df989`  
		Last Modified: Tue, 14 Jul 2026 02:31:50 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

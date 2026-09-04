## `clojure:temurin-25-bookworm-slim`

```console
$ docker pull clojure@sha256:4312a05ddc91ec985faa1eb13534ff40595330bf6dfc8d71a84f4eef25a691c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b0be941be7ffc6feb820d58d2f094bcf7c543216611d193cf3d2b6f0f6df24ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187533907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0e76b5c5807314aabffb495aee60b0472142c05e039a83a21048e5783f0e79`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:03:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:03:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:03:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:03:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:36 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:03:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:51 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8719b096b3949dd82eaec82a7e9759e524363fc2fac445c1784dc78a0fe0393b`  
		Last Modified: Fri, 04 Sep 2026 00:04:11 GMT  
		Size: 92.6 MB (92615071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6121d52253143eb8b1088c933b89046b61d40130d0de57fb5a6fa69f6c4e2c9e`  
		Last Modified: Fri, 04 Sep 2026 00:04:10 GMT  
		Size: 66.7 MB (66685139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac536999152e42a5361b5a901dbc7fe1d624c77c0e5b4047fbe05f9a493914fe`  
		Last Modified: Fri, 04 Sep 2026 00:04:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f23c61ff625ab64477a1ccb61dc4be156a8590a9546c0357fa891a6035b5f2`  
		Last Modified: Fri, 04 Sep 2026 00:04:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e337023d95a471bb820d50d70097c30a4ef3168d39cf699d9cbd5a7045406704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3645f8cf9379dafbf171b90158410fbb2fdec6269d6e324f3ec48610dc9a5bce`

```dockerfile
```

-	Layers:
	-	`sha256:b56e176cd3e4aa4f23ea650be9158184c405089ff16e73739c9f6560f7b2c15a`  
		Last Modified: Fri, 04 Sep 2026 00:04:08 GMT  
		Size: 5.1 MB (5087328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5b8c76f8b0bc3458944024fb060febe6a9f8f6a4132a9d9f8e6847b26629448`  
		Last Modified: Fri, 04 Sep 2026 00:04:08 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1437696d6078be2d98d2a54f376d6779d226546db8d6e62270743526605fd451
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186334503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e0c11bb35202231f89448e6f50c0f47ea6e30913f3fcea2caa2308ed459db7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:07:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:58 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:08:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:08:13 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:08:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679af05e4c6df8198227e60fc747dd5a9f2a639a0614eb31e2f1cb3000e6734a`  
		Last Modified: Fri, 04 Sep 2026 00:08:35 GMT  
		Size: 91.5 MB (91532194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3365d6e93fb060665e7229d32b886c699886f8702b308d575164b7a4312b9d5a`  
		Last Modified: Fri, 04 Sep 2026 00:08:34 GMT  
		Size: 66.7 MB (66683980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3dd709c905b7258f552671a519605abdf3940cb0fdfafa50e4057efb33dd4c`  
		Last Modified: Fri, 04 Sep 2026 00:08:31 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1673e3bf6912c64b7491d758637f8e2c83b3237c657747d665e6303e73361856`  
		Last Modified: Fri, 04 Sep 2026 00:08:30 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7dc7bf413ee9435847ae10c2e0e8bfdd497215a62bbe92ffa24d768c3abe996b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5109931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85e083f9bba88cff3eeebeff3b2d1173d959be1c9141a1eb10ee3d1e1e0cf55`

```dockerfile
```

-	Layers:
	-	`sha256:34fd4bf52fd0f1784027ccedeb28956cbf33282d9c4a4ddb801594eaf010e0e8`  
		Last Modified: Fri, 04 Sep 2026 00:08:31 GMT  
		Size: 5.1 MB (5093110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b320ac6e0b8683170fb1b8e81f502d85eb66f24ea47f2cfbdfabbcf6af8a8e86`  
		Last Modified: Fri, 04 Sep 2026 00:08:30 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ce712819fb0676eec6f9705ba2a410a08a3e655fd1d697ef29793ccf3b09f164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.8 MB (195832017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf8f5f7dcd9fb7c65f79dd114559f0c50d07a5a54dd8352d7ba6aecc7999e62`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:26:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:26:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:26:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:26:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:26:52 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:27:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:27:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:27:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:27:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:27:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a22fbbfc408dae3c28607d79e00a607cf87f23c89af839c30eb985419c6e0a5`  
		Last Modified: Fri, 04 Sep 2026 00:28:12 GMT  
		Size: 91.3 MB (91255803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5b3d0c42782c32fa4edd206fe464a36185586b09f9ec91353bfc0d9d555c5b`  
		Last Modified: Fri, 04 Sep 2026 00:28:12 GMT  
		Size: 72.5 MB (72498696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109b9ea3f6e9778c611682ae05dbb09b15496b5e8101f1129bb3dae6695da359`  
		Last Modified: Fri, 04 Sep 2026 00:28:08 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07afd20185f0f2f4981f8ffeeaa6b7208e8b712cecba15b2d41bf42c5e6a4a5`  
		Last Modified: Fri, 04 Sep 2026 00:28:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:70be96783e1bb97f676da716723f7668f368a1e35870c1c79353862bbc54dc3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5092548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975bb6bbf5474030f2ee474252890f7784de79f4b62bf7a34b9c97efb7e93f19`

```dockerfile
```

-	Layers:
	-	`sha256:6ae54b02d90855b177d8a577059154d08c854f8f582643674e9487a05406f759`  
		Last Modified: Fri, 04 Sep 2026 00:28:09 GMT  
		Size: 5.1 MB (5075810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:701767ef002194e6d201ef5400d3be82e87af9cbb71d2e3f04a4ac3c1cf2cb0c`  
		Last Modified: Fri, 04 Sep 2026 00:28:08 GMT  
		Size: 16.7 KB (16738 bytes)  
		MIME: application/vnd.in-toto+json

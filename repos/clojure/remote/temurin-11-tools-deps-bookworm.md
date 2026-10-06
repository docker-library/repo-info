## `clojure:temurin-11-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:bbd91fec033b1f4bb33ac483390d901755a72762bd9b9fb43ac4262cc0f69c92
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:de2120c2eef6f496d19fb493c5665dcbb84a862501698be43877f6516cbe3e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274668953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67aab1ac244dfd9a2ec09f19b4e73c4480b5f7f6f3f740f8181224a1d7ffbcbd`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:11:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:11:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:11:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:11:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:11:40 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:11:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:11:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:11:58 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce975cc54015af4745c662a52d52cc381cacaad47bff42e252fe5f4bbb4d6ea`  
		Last Modified: Tue, 06 Oct 2026 02:12:21 GMT  
		Size: 145.9 MB (145864234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903a5473151f949fba8dd4c5a3d959e2c33e33c3a8c0c593e387b28b2cc0f679`  
		Last Modified: Tue, 06 Oct 2026 02:12:20 GMT  
		Size: 80.3 MB (80286053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0f6b5c5f4f62d99cc24227f6caa6138a6fc3456f49e70a7437814464f2dd66d`  
		Last Modified: Tue, 06 Oct 2026 02:12:17 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f9147a60a25bc7e056cbb209d41f099807f28f350bfb38abd48b77f61ed96728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a20a9e1fe157cdc96927d9cdb0e56075b9e44b0d99748caafe9f962c7f05f2f`

```dockerfile
```

-	Layers:
	-	`sha256:c39aebb63b55d32eab7d29da2466f6617835feb188c733b020eaaa71b20daa40`  
		Last Modified: Tue, 06 Oct 2026 02:12:18 GMT  
		Size: 7.4 MB (7400156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f745eda05520e6127652ba187d9143bcc029166b744179405450b2271e3f20`  
		Last Modified: Tue, 06 Oct 2026 02:12:17 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:923da7f9d5055191fbd1cb2fe69292823d79996f9f16474ae559e63359a2b9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271210259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9af286c8fee80fbf5b2b0f5f988728068e9243905bdeb8911c86f365b15ce052`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:17:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:17:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:17:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:17:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:17:40 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:17:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:17:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:17:56 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c965127084defc625a54f9a4d41c2c783783e7082a0b44462c93e0da6270071`  
		Last Modified: Tue, 06 Oct 2026 02:18:19 GMT  
		Size: 142.6 MB (142576531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5cb1f5cad0be5df9a590606d51e5b66617cf2f6f59f7bcbb81146556a7ace4`  
		Last Modified: Tue, 06 Oct 2026 02:18:18 GMT  
		Size: 80.2 MB (80231529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4582df156d500c7100d90907888805a35b278edd7838c0003fba3126b8dde145`  
		Last Modified: Tue, 06 Oct 2026 02:18:15 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:486d930348420f9c5a823152382d5a0536f392ba9839bf0465265e2afdfb1fd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad227e53c0a24b2f2457addb01c202102833c1b5db9ef314268bd78b45c8787`

```dockerfile
```

-	Layers:
	-	`sha256:1213af5c0a6f801507dbf108e9fc095a64ecc42714823b2c71e371292b6f5094`  
		Last Modified: Tue, 06 Oct 2026 02:18:16 GMT  
		Size: 7.4 MB (7406537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67439b1f920f2088c0134085df745db70dfe548ea3cb6d97a8501494d82d2722`  
		Last Modified: Tue, 06 Oct 2026 02:18:15 GMT  
		Size: 14.5 KB (14480 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2c29d730df437ada41aa0f1757e01e8df2cfb48f9edc4b0fb614b7df919025f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269442816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b860402ff220f0c29c3c6a71ec3bd4e2085c6ad63c386d7c3b452071d5bbd79e`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 07:36:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:36:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:36:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:36:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 07:36:54 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 07:52:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 07:52:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 07:52:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aade50c3e515688be9e67b59c1d7ca063ac673c6ab38d179519ebaaca734f4d8`  
		Last Modified: Fri, 02 Oct 2026 07:40:56 GMT  
		Size: 133.1 MB (133094698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4319d01f9048706970e11bb9abefcbdbbd639f838e882f8f8fc6fbf65994b1cd`  
		Last Modified: Fri, 02 Oct 2026 07:52:52 GMT  
		Size: 84.0 MB (83998167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275c82a9c8b82deb7e5606c69546f5418289657a1494ab7904b1f5f4422467d7`  
		Last Modified: Fri, 02 Oct 2026 07:52:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:00996ffa3b7678861e3dc25e4652b2778c887d5a4d0bd3c94e6af4f9baf05b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7304d71282003fb6613d748c5c171ab8df0d84766702b94e2a001be599bce9a`

```dockerfile
```

-	Layers:
	-	`sha256:b34261164902a13f5d091dc9d52699dbe834ff7244625fc7a4f0e48b7bb24712`  
		Last Modified: Fri, 02 Oct 2026 07:52:50 GMT  
		Size: 7.4 MB (7404755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb61acec39f7b0e68655e89265296e46ab8737abf82e8963c29368b8244de75d`  
		Last Modified: Fri, 02 Oct 2026 07:52:50 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json

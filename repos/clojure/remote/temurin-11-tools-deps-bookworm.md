## `clojure:temurin-11-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:f800deffd298ef430818a8de1b3b965802db5dfd513f23b64f88fa8abeba281b
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
$ docker pull clojure@sha256:78bea6c6025c07a817bdca4a4675da8b3dc4b5199179b39dbe05f3eae0180385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271719675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351f128ab2e5bd03c98210948ef8bad6c939436171e05beda5a132a89ac2f618`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:45:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:45:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:45:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:45:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 09:45:16 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:56:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 09:56:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 09:56:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35adba34ddb621d647b1817760b55d8e71fb4bd4d48d9e56973c7a0bdf3f1df`  
		Last Modified: Tue, 06 Oct 2026 09:49:39 GMT  
		Size: 133.1 MB (133094722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ae3f01024148e0db8b5983f154d86e332525104e856d973b1617e0fac9bb40`  
		Last Modified: Tue, 06 Oct 2026 09:57:29 GMT  
		Size: 86.3 MB (86261571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a72a3d8c1ee70be62c3edc879c9017273b6ace2c7157f29d61d4f62b36689f21`  
		Last Modified: Tue, 06 Oct 2026 09:57:27 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a6290e142757e8742d298f63b09a316c26a2019656b003831a647628c59f0976
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7896d8fa5920d2d53d5aa31e78411d98b009a59447ea318865f1719ad3e936`

```dockerfile
```

-	Layers:
	-	`sha256:ec01ddb31bb0970239e40a7ea473a68eba91f5b04f2914f80cfc3ab145a49817`  
		Last Modified: Tue, 06 Oct 2026 09:57:27 GMT  
		Size: 7.4 MB (7404755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c7f9863326fe662325fb2faff07027d27be02844e2a609cd81ba09b88d5aa31`  
		Last Modified: Tue, 06 Oct 2026 09:57:27 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json

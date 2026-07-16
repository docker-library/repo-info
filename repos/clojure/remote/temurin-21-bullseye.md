## `clojure:temurin-21-bullseye`

```console
$ docker pull clojure@sha256:bfcab350c5d7196306b85c84107a4fbcf91f590e7a0f41fb1d7800d236d44c28
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:6726d8013a2e0124e494d9e2909ee7476c2e962dedb0ab26fa46041cbaec5b32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278457497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28f9ea3138b8733710d6227e1234b12f4db96c0d8d28d0cce0843dad32c22cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:33:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:33:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:33:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:33:46 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:33:46 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:34:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:34:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:34:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:34:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:34:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c2610f7094a30c572da1f8a8d5f5afae198054979e8fbab696481adca2863e`  
		Last Modified: Thu, 16 Jul 2026 01:34:24 GMT  
		Size: 158.2 MB (158166939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac89ee908ed7ea4d7ced7c480cd56fa77c05209a0fc8ed30600c71806f0c8bc1`  
		Last Modified: Thu, 16 Jul 2026 01:34:23 GMT  
		Size: 66.5 MB (66512941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4faad556057bdea1457214b6af4ec1af809426f63848e6bfacc88cdc62adde7e`  
		Last Modified: Thu, 16 Jul 2026 01:34:20 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85cb196103ba7adcf797fd979f79cd595f51376a1b6ee36460df2e057317f4b`  
		Last Modified: Thu, 16 Jul 2026 01:34:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:28be050a112a3e8a002860cf667e4ffde9b52939b60edf2c053660681de66c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7423233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d23ac77895e32ab523fce3de54febced534812b59c12fff53bcc106794a028ee`

```dockerfile
```

-	Layers:
	-	`sha256:83f0b272fa31900dae06ec2d73a8bc98386cb5abe2232975455a35cab12ca670`  
		Last Modified: Thu, 16 Jul 2026 01:34:20 GMT  
		Size: 7.4 MB (7407301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86c55babf488b550dd1ddb1e4b0ad2f2751b493cff4aba0590173a44b536998a`  
		Last Modified: Thu, 16 Jul 2026 01:34:20 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ebea301a62bcb5a03792facc54902a5cdb903c57377227667916d928c68e6043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275401080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b02dd46e2575345cb2c9a5e98edda181c1bea94ffb66fcdbc3adf4de6557f4c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:29:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:29:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:29:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:29:57 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:29:57 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:30:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:30:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:30:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:30:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:30:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052eab0bfbee961c3dfec678635046c1100149e9904c7aac9232052b7bca277e`  
		Last Modified: Thu, 16 Jul 2026 01:30:34 GMT  
		Size: 156.5 MB (156461259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7647aa9d930909f66ab0064ba3e565dc48e72fc73147708ae29565031261d2`  
		Last Modified: Thu, 16 Jul 2026 01:30:32 GMT  
		Size: 66.7 MB (66677890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89778b0cbec2c3ce1582a6132528834ce8a330b84e73cb14a1553fe8a118fd05`  
		Last Modified: Thu, 16 Jul 2026 01:30:30 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f56c10e9576b587e7c6ebf6e068b5a8d3ef47cfd607d1be2188662a570e20`  
		Last Modified: Thu, 16 Jul 2026 01:30:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:77e7b65f398408f753001c1569c8643bc5f64e492b29572d79e1dea35329bc36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7428450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf15cab7274c7d1af9d132cbb773226e2933b1b7199c07ac83cf10f3af05dd2`

```dockerfile
```

-	Layers:
	-	`sha256:f7cc929f7dc6098b050761c1bbb6d90a77b280c4a5ab143b8f82f192662b0c65`  
		Last Modified: Thu, 16 Jul 2026 01:30:30 GMT  
		Size: 7.4 MB (7412400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02763764e52d2959c866c3bf579082100b058ca1e6b131ee344de0029553c3ba`  
		Last Modified: Thu, 16 Jul 2026 01:30:30 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

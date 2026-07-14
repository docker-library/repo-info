## `clojure:temurin-8-tools-deps-1.12.5.1654-bullseye`

```console
$ docker pull clojure@sha256:9e8b88ab06946d06fc9eb6d139e15e7aaa27102612570a322d4cb415187616ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1654-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:7696bf8bb0154df4486a24425a0c386aa80c7872fc77412fe6b1a0fb451cae23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175488731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba43a74d331762ba5918bea23dde1e5ebeb047892e117be3b0f7dae5ad1015f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:15:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:15:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:15:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:15:31 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:15:31 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:15:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:15:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:15:45 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a52fd7c1d15635149df91e247e809b9e1d74a1e2b3484c7dff0ee1c6d712436`  
		Last Modified: Tue, 14 Jul 2026 02:16:02 GMT  
		Size: 55.2 MB (55198717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d73e510dc33e72a6320ef624a4663949dddb59363cddb7ef441cdbeaf3e04a14`  
		Last Modified: Tue, 14 Jul 2026 02:16:02 GMT  
		Size: 66.5 MB (66512793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1729f5ee9fa3fa1e4097df52ab3505f4b4f8b94101288552001429af66be4b0d`  
		Last Modified: Tue, 14 Jul 2026 02:15:59 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:4fbb5e73bec0eebcb4c615ea96855633aa5d08d14bdbc86a781545881bfab975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7540156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d54ae67829be0778f6ded6b0295c78345598ab773778bbf4c728b8b30158db`

```dockerfile
```

-	Layers:
	-	`sha256:8ebb9dac1e495aae69a5edff53bde4dd84574636a2619bf627cafd6579418efe`  
		Last Modified: Tue, 14 Jul 2026 02:16:00 GMT  
		Size: 7.5 MB (7525809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f267a1f72075e17e5c7a9687ddcc80dc79eb0b306d1ceaca54693f856ca0c754`  
		Last Modified: Tue, 14 Jul 2026 02:15:59 GMT  
		Size: 14.3 KB (14347 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1654-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:21f4ebee1aeafb8a0aa1dc268ca27ff65894457ad00366ec12d9c58069184ebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173212496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc4c2b7837aeabcd5b8486df78e9d51707d2c8629bb8ae835a7903bc988b2625`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:22:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:22:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:22:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:22:40 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:22:40 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:22:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:22:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e759dd5a9e01f3c8661fd500eabc6095bcc3089e4cf21fa2e3d20685233da5b`  
		Last Modified: Tue, 14 Jul 2026 02:23:11 GMT  
		Size: 54.3 MB (54272928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e293df9debba6896a915426fa2c21d4c80e12ad0d5e976e1c2f5e183e97a28b6`  
		Last Modified: Tue, 14 Jul 2026 02:23:12 GMT  
		Size: 66.7 MB (66678034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e8b841c043ef4a2141eafb6c0d4de42f1d0ca8bc55e7109918af8f7c66431f`  
		Last Modified: Tue, 14 Jul 2026 02:23:09 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:c9d1df9ba51ff66417548a29702d9f6be2955f0c47517b5e596ad5776c12e5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7546074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe62de31a3486491821f6498a66cdfd0a51b140ebecc35810f205c7daa1a1922`

```dockerfile
```

-	Layers:
	-	`sha256:c66a1235ee869e731e48b6cf1d219554abccc6ca449e8bc74676b64f3bbdc68a`  
		Last Modified: Tue, 14 Jul 2026 02:23:09 GMT  
		Size: 7.5 MB (7531608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4170c537ef175ba893ada02c1e5e4bc44ab0af3681dd73050a6bd1dca645db43`  
		Last Modified: Tue, 14 Jul 2026 02:23:09 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

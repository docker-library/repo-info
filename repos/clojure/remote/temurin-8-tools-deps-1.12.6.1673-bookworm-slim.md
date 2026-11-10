## `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:542f476ba95407b126d6b1b90a35a7542d25a0de5904eec65b3a5c985fc75dab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:069646c13b78518b3bd4925966a4ddb132166dafec8108c020d2002b3ab48ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.0 MB (149964822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7039544fd4fead1f15888cf3ae7b8cc6b0aa5db775a91070a77914a919da37`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:34:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:34:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:34:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:34:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:34:14 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:34:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:34:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:34:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41126492f9ebeafe2fd9bbed9dca88a823362c095dd9efee74db897c431bbcb4`  
		Last Modified: Tue, 10 Nov 2026 00:34:44 GMT  
		Size: 55.2 MB (55207904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb5824c37a7275d82aca42fe0e1a91ef7fb3d5cadbd990a3be7cdbb0a862978`  
		Last Modified: Tue, 10 Nov 2026 00:34:44 GMT  
		Size: 66.5 MB (66508288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b9f06c83e2438141539db17ba0ad572afbcfe718f9ad89c35e2c415c25697d`  
		Last Modified: Tue, 10 Nov 2026 00:34:42 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f03a673607a8d42e5a60296983fc74d4e528f88efa20968aeb16dcd99ce9cbe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cadab1789fd347fd24fbe1767f4c9f17f06ae6312c134b23e85bf9525b7b940`

```dockerfile
```

-	Layers:
	-	`sha256:33cd264ae00a07cc19faf9964de496dc04207d3ee2662dff390c808ce095852b`  
		Last Modified: Tue, 10 Nov 2026 00:34:42 GMT  
		Size: 5.2 MB (5238467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cd3fa97aa134527d66f08b2062cd3a42f6a9a0cdf49a6cbdec374781728600e`  
		Last Modified: Tue, 10 Nov 2026 00:34:42 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6c3fbe6c0e4f0fb0d21486f9ee4ee29e421cb7160d1e789947eb678c437e38df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148915766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf46a29eb6b5c5f2d6f200c6fe3ec4fe451713bf7fd6cacfb03e052b310e29fc`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:33:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:33:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:33:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:33:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:33:27 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:33:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:33:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:33:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1871b9538bebf047118e7855cdec7eb933247f751fa9e86bdc864ffd95c04a25`  
		Last Modified: Tue, 10 Nov 2026 00:33:59 GMT  
		Size: 54.3 MB (54270339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b10de7d79d86536c35000d4e4a8288cd565c53e0fddf977cb7fe07d3b5aa516`  
		Last Modified: Tue, 10 Nov 2026 00:34:00 GMT  
		Size: 66.5 MB (66500423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d2ea19054103feba55b09812f1fb2b5b4a6f1a3f4850d529efdfb94384604b`  
		Last Modified: Tue, 10 Nov 2026 00:33:57 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bf0512e1e86757985465660dadeb22e6df95be54aa6b2ed096e71c476587bcd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b8d9c72c4cab072f51c70894fde40d2ee2673c64bd2460730131359c8ebf96`

```dockerfile
```

-	Layers:
	-	`sha256:828612106219457595516545214f8eefcc6d6022499efee90b20d75653cd0d5d`  
		Last Modified: Tue, 10 Nov 2026 00:33:57 GMT  
		Size: 5.2 MB (5244928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0eb6a4ca761c0ed59cc1cd5d434d35d74f893de28954e883244ab273944a9f6f`  
		Last Modified: Tue, 10 Nov 2026 00:33:57 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b28d65b4614ef72207de9c9ba1a29b22041f814abaf628444a3d43dec2b6c5ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157117231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5ebee97138e3a828c6bfbf45aeb6d672910c207858d5e8567237d1aa023a3d`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:11:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:11:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:11:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:11:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:11:25 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:12:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:12:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:12:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a209ffa50a25fcb47e851538b91037f7af1d05cb89e6ad23aa249e44a560ab`  
		Last Modified: Tue, 10 Nov 2026 00:12:54 GMT  
		Size: 52.7 MB (52689135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:773b07e8f30535c49b4fc323144033148398400646b9989f17d8e9af702b7ce2`  
		Last Modified: Tue, 10 Nov 2026 00:12:54 GMT  
		Size: 72.3 MB (72333890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d1dcb583277ee206e58e4e267a0788e138770960f86caceba113a9e6a5b166`  
		Last Modified: Tue, 10 Nov 2026 00:12:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:41e088785ba7ec07752858849997a34bb8388755385da11d04480fd04cd40df6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5258670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deeac593ce57f6df20c2fd9ed75bd40bcba4ac0b8fee7d06783ff1817116fcab`

```dockerfile
```

-	Layers:
	-	`sha256:64d54bef05aa0af67b7a4569a9bd83ca27cf3bc05a8ca4eec5744d06d32064f2`  
		Last Modified: Tue, 10 Nov 2026 01:49:44 GMT  
		Size: 5.2 MB (5244220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14eea00c06ddb0c29df74608b7be0543820af32338ec4b327072c805368d1988`  
		Last Modified: Tue, 10 Nov 2026 01:49:44 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json

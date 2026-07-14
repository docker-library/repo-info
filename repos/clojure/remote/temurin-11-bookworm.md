## `clojure:temurin-11-bookworm`

```console
$ docker pull clojure@sha256:99ce74030abebc9c40a34f09dc5b63e3c9b11361bc70ddbfae33ede131cdb3ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:9cb490b10726fc86adb1628f32e3b267a4999e6181ef56e68708914e2ba1b94e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272514318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e695163faf8323b9590c16c180860e17d82df758c18b88a39ad4beed014a856b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:16:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:16:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:16:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:16:00 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:16:00 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:17:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:17:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:17:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393d238c82afb1818ce3b1ca09eec66d088f5d1ddf6674fe0a1ba93a5c637cdc`  
		Last Modified: Tue, 14 Jul 2026 02:17:26 GMT  
		Size: 145.9 MB (145886184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92acfaa60a46dea9ba1cafb675e938d67a1692259c5fb9db2c55e495e7d87ae4`  
		Last Modified: Tue, 14 Jul 2026 02:18:06 GMT  
		Size: 78.1 MB (78130086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88fd745ba31be7883dd3172053ba1b89e99a6d6e0858298b8c0b5625ce42b2f`  
		Last Modified: Tue, 14 Jul 2026 02:18:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:417c0dd1761e851d4d1dcd7775a29470f209329bce3df5c554fc7c727635f29a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7409092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8946227cb08261a0d360fe7461487d29b2bffd1716195e136d4102e5b8f9b5ea`

```dockerfile
```

-	Layers:
	-	`sha256:14aa23e0b5af6756d72c8f9f7cef9adec572b9d8f2e230244bdc3ce4312b5b01`  
		Last Modified: Tue, 14 Jul 2026 02:18:04 GMT  
		Size: 7.4 MB (7395686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11f297b1b9672e62c5e7d06470bce869d1d67ea4e70b281c52e1c01923894526`  
		Last Modified: Tue, 14 Jul 2026 02:18:04 GMT  
		Size: 13.4 KB (13406 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:77260f0ffea57e5b337a19156ac9e1933e5daebacd6af2b228cbe21c3381a2b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269088055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c490e83ece73c40e107e39ecd707fbd4e07911c313e7b18e59b4c8f178c8d423`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:24:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:24:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:24:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:24:09 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:24:09 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:24:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:24:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9d228036f29adea3a7ddc7abc124183b8dcc7769b330b105c2dcc147375981`  
		Last Modified: Tue, 14 Jul 2026 02:24:49 GMT  
		Size: 142.6 MB (142582173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a4b411b7fa0d95039a1d70415fee4bcbdcd5afb197dce0a7af61447c21f930`  
		Last Modified: Tue, 14 Jul 2026 02:24:48 GMT  
		Size: 78.1 MB (78121548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6677e2cbf0467db66a45466a78123ecc5d91635328b320ea9663b130b66feb4`  
		Last Modified: Tue, 14 Jul 2026 02:24:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:158277c17ab998d0f40248dceec4f0ff6813fbee5fd0c186cfddeb52ced76853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7416548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9793106f4da0e20b93be17bbdd9b22d052cd2f0e592d55a905471d79304fb8f`

```dockerfile
```

-	Layers:
	-	`sha256:d936d4d5d90f515dc182d25fdb0df64ffe4f2d9d1648cfe3359440a181282c8f`  
		Last Modified: Tue, 14 Jul 2026 02:24:45 GMT  
		Size: 7.4 MB (7402067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0e7e8d986ea3903a58082d23129bbe450d689fc5f7e7b055d5fd2c3b8aa20b3`  
		Last Modified: Tue, 14 Jul 2026 02:24:44 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:91bdc3163f4125d023bb84273766183dcd974fbac410b3733fab073222a2bf38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269412258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9762e2adccd48b3854470a92f4ec9bab16295a580159233e63173fcaf984eb8`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:10:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:10:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:10:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:10:42 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:10:42 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:19:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:19:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:19:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9f33be61fa38d606238321568484fc178182e6226b8fc95a8a21d56817577b`  
		Last Modified: Tue, 14 Jul 2026 08:14:12 GMT  
		Size: 133.1 MB (133110168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ae4def1622040aceb676eedb5341011bbc03919b8ac5f5facd3dff597ffc23`  
		Last Modified: Tue, 14 Jul 2026 08:19:55 GMT  
		Size: 84.0 MB (83959612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dee6de1a050a1dc8fc43693c87723bd9c4d9f033dec92b29f1ede77e6e0cd0a`  
		Last Modified: Tue, 14 Jul 2026 08:19:53 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:46d6e846039b80806560e6c98ac3729c0af7d0665ddcc7873c5809315817647f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd97f03352a6962bfd6f94920e16ee9ade49b2c9410d9011ce1614b68511d0a`

```dockerfile
```

-	Layers:
	-	`sha256:c2a14bd4f3ee670874f404cb1c04834863a3230913c71d4bcb1dd01de80f16ed`  
		Last Modified: Tue, 14 Jul 2026 08:19:53 GMT  
		Size: 7.4 MB (7400287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf4bf8e4ed14d99f531705f0b3eb05c750c981a4f86910e80a3ca4ba6413cefe`  
		Last Modified: Tue, 14 Jul 2026 08:19:53 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:ecb6a86dcb6a6b05a9eda8b5cdf1a27ac4ddf984cedd76ac3868fdd953157376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250747603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74bdc65fa668561d33fc470d3f65cc53a4a1bfe97e600ecb6034644d94dd8e86`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:24:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:24:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:24:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:24:39 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:24:39 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:26:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:26:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:26:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4e9fc4c2aa9d6ce8a2f8b7a8c543880b7e386e81bc65ed49ffa9e01f11666f`  
		Last Modified: Tue, 14 Jul 2026 04:26:13 GMT  
		Size: 126.7 MB (126651543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c26c15c29a241bb11150a596b16968dbb4d2c7e6a2b5dcdc8034f91506e7fa4b`  
		Last Modified: Tue, 14 Jul 2026 04:27:18 GMT  
		Size: 76.9 MB (76938135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65e0dc70c22e5d03e52d6b6b4b01418efa8f4c30281010ad3ef3a742c75971c`  
		Last Modified: Tue, 14 Jul 2026 04:27:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b08fd33a5466926850d66c8a88c38e77e053260d7f67148419d325ed7a97404d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:691307f34fce164fd8f8e9cfa3008919ffc607db6dcbbff7b0a821a15b5e8a4b`

```dockerfile
```

-	Layers:
	-	`sha256:63415395101d0d197e3f9a5e2676afc36acd611f9c8d214fd0e3c797e7ac7eff`  
		Last Modified: Tue, 14 Jul 2026 04:27:16 GMT  
		Size: 7.4 MB (7387009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:532f11489cd2dff11424ad984f3966575c7b9cadb6219975757e7b0218291152`  
		Last Modified: Tue, 14 Jul 2026 04:27:16 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

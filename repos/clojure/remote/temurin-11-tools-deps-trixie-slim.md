## `clojure:temurin-11-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:fbd271d9220342f7465230b08b3405492e7823c3c34b25a00a9088284a0a7d50
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

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1ad4413dcd462b5fe8e5f75988a6baf13c062deeb9080e2841ca840e9ce6eba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244639721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161f846313e659e32b9c958ab30de47a893c51a75145a161934211b43f3d0966`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:18:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:18:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:18:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:18:09 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:18:09 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:18:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:18:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:18:23 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72da3248c32b87a980aad44b1bd62ec96f893cd77797cf67c88c8964089fd3a0`  
		Last Modified: Tue, 14 Jul 2026 02:18:47 GMT  
		Size: 145.9 MB (145886183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c94a5d670f59943377a490a2ae0ca2ee7f671b5e9b695eee9366b36d81bf4e1b`  
		Last Modified: Tue, 14 Jul 2026 02:18:45 GMT  
		Size: 69.0 MB (68971989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108b1a6a133f9e390ff20efa69a014dcac03de418b86e24ea20566c71d0bcaf6`  
		Last Modified: Tue, 14 Jul 2026 02:18:42 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:25e04f0b82de5e6435bf529845daf978c435238ed342a5b5d82c63cc76a9f612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5291245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8386c9953652e5d055afbbdfed4e45c74263b14e9df1cea5f51b51dfa8efb947`

```dockerfile
```

-	Layers:
	-	`sha256:0c38f8e8efd88fc42bd7a1ee48fef6f06251d277f5021b09dd83122dd9b15805`  
		Last Modified: Tue, 14 Jul 2026 02:18:42 GMT  
		Size: 5.3 MB (5276848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3aa5ec110cdd733eacfb29584c0d31c709d44fcd43d8233590a33beb01ecd801`  
		Last Modified: Tue, 14 Jul 2026 02:18:42 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:535b4831bdb86685b50cc2d1bd70eac55b66ff463c7cc19168a3657b77347521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241504571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56ceee5e3ed918d245e3c5ee32b62dd3bffa1bc40b2fe8e6a23df4edae01a9e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:24:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:24:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:24:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:24:59 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:24:59 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:25:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:25:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:25:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1286e85ba1468b89d4f5ce387fe78d298c114244e86f26c11706f3194912fb8d`  
		Last Modified: Tue, 14 Jul 2026 02:25:39 GMT  
		Size: 142.6 MB (142582224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718646df864cdd91e6ba7760a255edf701ffc573dbaa5a41b75cd278505f66f`  
		Last Modified: Tue, 14 Jul 2026 02:25:38 GMT  
		Size: 68.8 MB (68777995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1dd7b9257e8d4b94bf6d04545f5ee3daa50d37355ec1ffd9f5872f3a6aa364`  
		Last Modified: Tue, 14 Jul 2026 02:25:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:424f7f3df9a4db95029b71ff121e350ea9b79de0c9b9581424fb606d6b3aa12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fdff60a2c40f63e4b8d5b120b22f176408ef0307eabc88f7a5392bbde1cd2d`

```dockerfile
```

-	Layers:
	-	`sha256:f84181e00f2541411af8b71c3e66d3edff6bec3c727051cab0abf3b5d696ac37`  
		Last Modified: Tue, 14 Jul 2026 02:25:35 GMT  
		Size: 5.3 MB (5283227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b315457e5e21a4e2ce1e51f2e5e04f3305663907ab3652a1ff36c318506809a8`  
		Last Modified: Tue, 14 Jul 2026 02:25:34 GMT  
		Size: 14.5 KB (14514 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d6a0e42e5b37a0f89d171b62c624e33ac33094dcf939cccb16e2a57afe23d0db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241087650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83a64bdee255eaec1854d78b88762b5d591214d345f08ff602f9d37984e9efa`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:00:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:00:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:00:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:00:10 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:00:10 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:05:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:05:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:05:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92baef43e33b2e3216fa49fd97c4c72e963f07fed6f47bc27884467e4bf4edbf`  
		Last Modified: Thu, 02 Jul 2026 07:03:12 GMT  
		Size: 133.1 MB (133110143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e779e29a21f1cfe45ef918938cc9b11b75a616645bdee165e41a13b9bae554e`  
		Last Modified: Thu, 02 Jul 2026 07:06:15 GMT  
		Size: 74.4 MB (74370472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f14028ba0b47dab32444c92e8c6030da2cd30675e1160b0fe5293c6a88611414`  
		Last Modified: Thu, 02 Jul 2026 07:06:12 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:31898835f92576ea510b175a5fb977410d2fb0e972625e93caf713bf697c48a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5294995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a4e5a194344ec57d60792ae7c70bc82dd63d746b63f4337fac2bde0e8b022d0`

```dockerfile
```

-	Layers:
	-	`sha256:de45d3365359d73d90f36cbe1a0b2bdf38f473f95f9ad8191e073eaacd11d6a4`  
		Last Modified: Thu, 02 Jul 2026 07:06:13 GMT  
		Size: 5.3 MB (5280550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3c68cc39afdd101b3167ce513bb8e7f94261fcf51c5410d4eae5878bd9f0bbe`  
		Last Modified: Thu, 02 Jul 2026 07:06:12 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:a6cd9b3dae758a247088d52bd53b11f872f8f682ef46eb7fc2554bca95493f5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226441465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b4164729b593fc3037f9294e1008a51c932bfcc2e6a4fcf3d953f1937c2018`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:26:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:26:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:26:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:26:31 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:26:31 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:27:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:27:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:27:52 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6454c299d84de923fd6a898c5324ed5947d27fffa887aac94615c70cef15e6`  
		Last Modified: Tue, 14 Jul 2026 04:28:05 GMT  
		Size: 126.7 MB (126651544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e768611e1acd32c8e2cc2daed6a2629593dc74a59b7fc402b43a379366457e4`  
		Last Modified: Tue, 14 Jul 2026 04:28:16 GMT  
		Size: 69.9 MB (69942646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52e5e7fda6ed225ba9360c45fc89ed67acfb16a5a9313b31f1dbd0bbacec14a`  
		Last Modified: Tue, 14 Jul 2026 04:28:14 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a0554558e7ce9224a87051ae9c1a20d685351c345bedb5ec7eca5707a561d0d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e945b110f0469049a5e5d3a190c33bfb80c6470e352a3d91b00aa66615abeb`

```dockerfile
```

-	Layers:
	-	`sha256:643e3d1bd7f81f61f4dcb6a047fedd3ee4e12dbbc86f95bd415bca6068a9cb8a`  
		Last Modified: Tue, 14 Jul 2026 04:28:14 GMT  
		Size: 5.3 MB (5272776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2beeee6c5c1ad74badabdf7f84b3ffe03e9bb7583163324c4a4fd672e58764ce`  
		Last Modified: Tue, 14 Jul 2026 04:28:14 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

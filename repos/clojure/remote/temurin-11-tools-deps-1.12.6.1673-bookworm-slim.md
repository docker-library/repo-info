## `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:3dd924af324d4826e0eeb2569cb0cd63577f6656bc0bca7d897d1e8ac257e96f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6b35e7de72c4654f523ba5721aa5e65c8ac943fa2f769a50869c613610ae63e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240620616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbeaa31fda2bc552157040e764e1a77e886e1f28e0e34abbbf193f4a037d6855`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:46:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:46:51 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:47:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:47:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:47:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107b812851206721d9751c0f8b820634d1c11769c693a778b1133c5675f96f8d`  
		Last Modified: Tue, 27 Oct 2026 00:47:28 GMT  
		Size: 145.9 MB (145864292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1edb16580a7fa6e9ec8a1f707bce18a740fdd515c4dcb6c5d7436ed3ad221492`  
		Last Modified: Tue, 27 Oct 2026 00:47:27 GMT  
		Size: 66.5 MB (66507741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c2e44491ada0e9644352fcca70ac4f9d4e478ff3d8ebfefb8f93e995b1dd0b`  
		Last Modified: Tue, 27 Oct 2026 00:47:23 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8a6d8983043f5156134280aa35f63fd5d311c5cadb84d1448029c1f658caf80e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5151978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd853f4c5383f5318c30f78fffea007e8962b0d9bd09482ecf78a0125daf484`

```dockerfile
```

-	Layers:
	-	`sha256:2f1b103d850d2eee17e8edf170c7de73cb2cd8135847e319a49fe3f4e6fad7c3`  
		Last Modified: Tue, 27 Oct 2026 00:47:23 GMT  
		Size: 5.1 MB (5137557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e36eb6cbcea6edb54126c1c1d22c1aa72c6df51672cfe7efc879cea2111c377e`  
		Last Modified: Tue, 27 Oct 2026 00:47:23 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e91211dd420faecb1adcaf0dc13d3d9c862973c8d8d7ae5198b2c06eec8c214e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.2 MB (237216827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36fd0ac5f003768161b91245312283c9aa119c96bddcd4eb10789c597c2e69c4`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:46:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:46:45 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:47:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:47:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:47:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd5389dea2d2ebf2131e4e4879fbc95e78bada10bbc46b91d08ca578194384`  
		Last Modified: Tue, 27 Oct 2026 00:47:23 GMT  
		Size: 142.6 MB (142576571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d7a56694cc21e3349ea1dd15070f13c18fbbba974b0894664a6b0dbae48520`  
		Last Modified: Tue, 27 Oct 2026 00:47:21 GMT  
		Size: 66.5 MB (66501184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90755a2545aa90c158f3b93be17b6e895a97d7ce2803513a66a5dec12204e952`  
		Last Modified: Tue, 27 Oct 2026 00:47:18 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bfec19e76d84398fcf45b8dcd6f3066e2bdbd012c61be45fd74a713fb1b5636f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5158475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3007a34563bc70eb746c23b887782a7d4a9e617f7dcb34938cd9f0189de5cf23`

```dockerfile
```

-	Layers:
	-	`sha256:e9e30aacd8a7c18ef66ea9f50d17bb9c5133dcea3b42907391a5984eae054b74`  
		Last Modified: Tue, 27 Oct 2026 00:47:18 GMT  
		Size: 5.1 MB (5143936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0861fd214666f4e494bf3c1a5656d2d1bcc2622d0b58f58f327971d1744cec37`  
		Last Modified: Tue, 27 Oct 2026 00:47:18 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e5ca0461b78c156e3e2fdfa2c182545bec09b03d17add77ff88df0ec18dd7a86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237522333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5d3fb6a3481cf11c3c8fcf9467878d3e9e046b6762d043e2bda850f9d2acc8`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:58:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:58:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:58:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:58:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:58:44 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:12:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:12:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:12:20 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb086e599d6565b3e77279e7b178001d0b1cb12c5fc3e049b1c486611b18ac61`  
		Last Modified: Wed, 21 Oct 2026 10:04:02 GMT  
		Size: 133.1 MB (133095148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6945a7594637330f460f4dfd251da8dcfe69712f769fb0c3e7c9dc6248e348ce`  
		Last Modified: Wed, 21 Oct 2026 10:13:08 GMT  
		Size: 72.3 MB (72333327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99d7d545f2af3e47866352cbe7df58a2c5960010084e4b45b25ebba78467c5f`  
		Last Modified: Wed, 21 Oct 2026 10:13:06 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2fced00ded6e8cfee1602fc97b484b4980453874b409896dc7aa3add69566acb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5156541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50634080299e36499247c025cf9895427391d7d2775d50b07c42e7dfc18f5b54`

```dockerfile
```

-	Layers:
	-	`sha256:f4c300ce07a0233f0ec0fa39ed26e265b0be33233dbd2c14dfb10b521067f441`  
		Last Modified: Wed, 21 Oct 2026 10:13:06 GMT  
		Size: 5.1 MB (5142072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63514aaeabb662354d4bcf08c701f2b67a4e058b5aeaa3145ae173a427e9c58d`  
		Last Modified: Wed, 21 Oct 2026 10:13:06 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json

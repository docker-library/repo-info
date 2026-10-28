## `clojure:temurin-26-trixie-slim`

```console
$ docker pull clojure@sha256:638cb271b6eca2ac2fd7d94e765288760cbb77fdb63ab2d9c102970a659031d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bd055e864cfb7fed3464bdd9259ed68433bd10470aeaf5f3ffbe5357d71a4e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193409234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feff6bee649200c4f8a23edb65344b4fabef81e51170a7df3afde0b59c003fc0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:15:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:15:50 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:16:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:16:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:16:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:16:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0acb23daa540f2a0eef4f9b8527f9c120097427631fba29aab4d4ba7e401cb`  
		Last Modified: Wed, 28 Oct 2026 02:16:28 GMT  
		Size: 94.6 MB (94563578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b61babfaedfba3dc7c7d0436898e3370c8e1c1145675e191e16f2f5d498c480`  
		Last Modified: Wed, 28 Oct 2026 02:16:27 GMT  
		Size: 69.0 MB (68989376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6651b61151e4c22e7f7929238415b19aa6b806173ba91c5d5a5d5b55adf6e20`  
		Last Modified: Wed, 28 Oct 2026 02:16:24 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806a84f7ffb07734e9286a5afccced94e6148d8a5c141dc08e46945ef161ba46`  
		Last Modified: Wed, 28 Oct 2026 02:16:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c9fac43a712252996e0dd2178fc2b38db798f5661027f3b7cd869364064a78a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f69cc0509c6a0b0fc9e21c74bf179b77de32784a6570a06683c99323dd4066`

```dockerfile
```

-	Layers:
	-	`sha256:71d3c80282fd5367033b2a23c5c21d9ab2485806dd7a32bd9791757b4e87bd89`  
		Last Modified: Wed, 28 Oct 2026 02:16:24 GMT  
		Size: 5.2 MB (5226958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bb787a3d08479adeaa7f9030fb66277700927900c53703c7f4685d9de7d447f`  
		Last Modified: Wed, 28 Oct 2026 02:16:24 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f9a33e2a27cc9d034059b7b6d02b2f4b80f0b969b7fb0bb1d819eee9185b5963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192563203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab183e5977096100ad7234cc45fcdf4ff17f3adfb4af37075e6505e8f907dffb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:23:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:23:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:23:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:23:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:23:18 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:23:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:23:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:23:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:23:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:23:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b026f31de297175f4f418d18e8822b361a9c4b0f64297aefe49f78fc8be8c3a`  
		Last Modified: Wed, 28 Oct 2026 02:23:57 GMT  
		Size: 93.5 MB (93543621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f1028e4ad13db688a657b552e9921544b7aaaf06ad995a76050bc8ba689e25`  
		Last Modified: Wed, 28 Oct 2026 02:23:56 GMT  
		Size: 68.8 MB (68805044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fcccbe015ec7ebc43bab103207125c9112a23638705eca9ddede553472b5d87`  
		Last Modified: Wed, 28 Oct 2026 02:23:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2740b0a9e0adffef4e38b18fd4fd39c514f9095dcd051ba06257c37593ef1fb`  
		Last Modified: Wed, 28 Oct 2026 02:23:53 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:244b25b1b562e515f1354e3f74cb0c8eb9a22c50ddb431ea32f38009134c253e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada2e4770cf9fdee11474d8b7ea76b4a80b64372e8028d9a649ccaed3a99f836`

```dockerfile
```

-	Layers:
	-	`sha256:83a343bb2b7ededaaa223ca55446cbb0ced858e82716413f5e5c00df4d68b4dd`  
		Last Modified: Wed, 28 Oct 2026 02:23:54 GMT  
		Size: 5.2 MB (5232716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8963fcf3d47027e46d04d3d8f746d078ebfc6cefe83578694099a4573da6280`  
		Last Modified: Wed, 28 Oct 2026 02:23:53 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7ad813e83dc80a9606abfc2933a0d487b7923adec5dc14f9f869f75d0fdfbe4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201422479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d93cbd045e4638c108f6e944661d9ade18b02f572f7ae196abedb7cd8aec8b81`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:08:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:08:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:08:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:08:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:08:04 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:16:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:16:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:16:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:16:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:16:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f071cd1452004b670fe80f61035d40d228deeb03aa70f3d9c8c28fc63a860b`  
		Last Modified: Wed, 21 Oct 2026 11:12:22 GMT  
		Size: 93.4 MB (93350849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1402977d97d6ed3bb7296391fcbfc32a8b39958d8c0acf49bd442a0bac2d8e2`  
		Last Modified: Wed, 21 Oct 2026 11:17:12 GMT  
		Size: 74.4 MB (74418650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4063306e05316e65228b5abea0df1958320ef2a5ffd51cfdbf00134cb1671c`  
		Last Modified: Wed, 21 Oct 2026 11:17:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f99a510aa1072035ca6f108bfa224c093bb62799049e088457af69e4461513e3`  
		Last Modified: Wed, 21 Oct 2026 11:17:10 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:81e77432fa7e00b96dbd31f94d9876bdb6de3bb18844a80d47815fa5f3dc03f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5624b6d66d6f3323243a6df5c3de2cd10e79dc21386d95fc4beedc3189efe3`

```dockerfile
```

-	Layers:
	-	`sha256:645a00dcb054913d31396efccf7b000b97ce347a09dba6ee0f1183bc86a6f63b`  
		Last Modified: Wed, 21 Oct 2026 11:17:10 GMT  
		Size: 5.2 MB (5215237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4609cfb8fcb5f0c9871cf57ff176039714ebe10f30fb824e5e3d04a7d8463f9`  
		Last Modified: Wed, 21 Oct 2026 11:17:09 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json

## `clojure:temurin-11-bullseye-slim`

```console
$ docker pull clojure@sha256:9e86588d77545e1bf37ae6243957524a249d76651d8ad30622a94b379d7c938d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e1de1ba9a910a064f0cd1d283b6f17efb152c30658b5f62799269a0a40f945ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232252710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1353f3215823631befcb77866e66b086c62563c2964fa6d015eeaaee2abfdb`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:20:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:20:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:20:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:20:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:20:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:20:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:20:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517698448b1f3c564d75fd443e917e7b2aba26635ea00bfdfe793d39a784955e`  
		Last Modified: Wed, 05 Aug 2026 01:20:38 GMT  
		Size: 145.9 MB (145886314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d73969e4e4cee68dfd5f3bf38fbb6d0dc27d6abf1435bfe351cc2430ae046c7`  
		Last Modified: Wed, 05 Aug 2026 01:20:36 GMT  
		Size: 56.1 MB (56106131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb30443ddfc989ab408f8597eab804c462ec679d8a241ddd614548ea727a24c6`  
		Last Modified: Wed, 05 Aug 2026 01:20:34 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7304ae265a642e08d2e57212639ea30c165ba355ab3fb92ba17b426d53e69a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c676434dce40a696354ba1fc4c71688a8c1dbac1674e5b6c949972324e69c6`

```dockerfile
```

-	Layers:
	-	`sha256:6f2f0d2c182199d70978ecdeea1dc5520728efc31521e17e7e6e2c7f697bd390`  
		Last Modified: Wed, 05 Aug 2026 01:20:34 GMT  
		Size: 5.3 MB (5337365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a1870d2d35cbfd9f894db59af6c92670bbba0abbec027e2a98b61acf22e3b55`  
		Last Modified: Wed, 05 Aug 2026 01:20:34 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0ad7fa8a73ef0d8503add8a4b63daed50bbd2042807089b9584d8a5bd7a9142c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227607748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50a970bf9e2269f6c1b3c33fe2df6d9a5256342be411c2f406811de53eb39a1`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:49:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:49:04 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:49:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:49:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502af9c5828b740f70337d0ffd375b12e1255633e50eddbeb1ccbf1649d8c55c`  
		Last Modified: Tue, 04 Aug 2026 02:49:39 GMT  
		Size: 142.6 MB (142582307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52955dc349b286a8cb960fb0abe2e4a7fa3e95f6a2aed5626fa5b018b21b75d2`  
		Last Modified: Tue, 04 Aug 2026 02:49:38 GMT  
		Size: 56.3 MB (56275812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f843d18258214d35273d12b2b2c016c34727499520ae07406f246dce0b9cc7`  
		Last Modified: Tue, 04 Aug 2026 02:49:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cf7c8a3ad4a1430510891f1827f6cca482f8eb0c47b39ea480c73c8d0c58e481
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5358254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc0b62577685c1bb45b77525591163e0db9d2d57320c7a7b010ad310135772c`

```dockerfile
```

-	Layers:
	-	`sha256:43aa799151dd546ac89826ea2b6492f7e45b03213efa7d2bbf9cb173d08ed7b5`  
		Last Modified: Tue, 04 Aug 2026 02:49:36 GMT  
		Size: 5.3 MB (5343715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6febd8c9cd9146e4f7fb027f85e759f7fcc9fb55d513eac9f24ecc5e7099d1b9`  
		Last Modified: Tue, 04 Aug 2026 02:49:35 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

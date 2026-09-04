## `clojure:temurin-8-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:031ceed9bbf429e180572bffdd80b7b482cd1db87197fa261400788ccebd63b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5307e4a92832c19a85906bdbd27f76e9306eb1c78be63c0cf4cfb615dca829a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.6 MB (141552586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d30d69da98d651f503710d7234fbd568aca053ac1d36e28c897414a8ea66abb`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:00:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:00:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:00:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:00:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:00:53 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:01:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a79b68d1f5ddb474debd439dfd4fc9342a360a91ed767411f7c9c95ca0dca5`  
		Last Modified: Fri, 04 Sep 2026 00:01:21 GMT  
		Size: 55.2 MB (55164381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66aa6ace267318b63711b7ea1c6f08fb1aa26b7d36a7245f3e4c99c81032ce56`  
		Last Modified: Fri, 04 Sep 2026 00:01:21 GMT  
		Size: 56.1 MB (56127834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f40048e30bc275ee49a2c203697ac2982206ccf61cf79dca5e66c917ff4983e`  
		Last Modified: Fri, 04 Sep 2026 00:01:19 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:db36871b3a0588988fbfe1d60e6c15842be719747fa8811c71f0680e3a7989d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5457814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6279da875bedc7dc422e46c2ea48aabd62bf854c67e4b3b281c3a751942b97`

```dockerfile
```

-	Layers:
	-	`sha256:63148da0c691aba7fcfc9d096d54a30a1c5877caf2de673c97ab19e4cf593b9b`  
		Last Modified: Fri, 04 Sep 2026 00:01:19 GMT  
		Size: 5.4 MB (5443412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3eebdb64f0167a72efd654f5895b4188e5401130cb196830004e4a83c4dbd585`  
		Last Modified: Fri, 04 Sep 2026 00:01:19 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:69753122ce221062a81168132d2aaa6cffa561cc1868a4b5fa41f13941238421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139300033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a50862373320171f5c81e32aa1d7e5b6e86691f67d99b33b8d651d08c5376b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:04:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:04:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:04:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:04:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:04:34 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:04:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d670e5a3bcfd359b4650b2376f0dd8a8367750711d005fe220cc1c9fa4db4b`  
		Last Modified: Fri, 04 Sep 2026 00:05:05 GMT  
		Size: 54.3 MB (54262762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3ae1741206f8af6f8ece737db06873f662468d81f32f51c7cbb43abbcf60d5`  
		Last Modified: Fri, 04 Sep 2026 00:05:05 GMT  
		Size: 56.3 MB (56287597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1934741a86fa0b3dbe22669960de849c274574ac6716a76c194f533bb9e407f7`  
		Last Modified: Fri, 04 Sep 2026 00:05:02 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:860a9afc4e31848e75c2fca55104e6d523aa6ed93963b46f3fe13cd2c2052e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab61d8f2906b8acbdf667dfcd39d2a9e1f3e1f78438dca90ab804e5df24b4a91`

```dockerfile
```

-	Layers:
	-	`sha256:c98727eb6026c426401007d3c4cbbb14feaab8099dd43412536b7f6fb6990bad`  
		Last Modified: Fri, 04 Sep 2026 00:05:03 GMT  
		Size: 5.4 MB (5449844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c65dc520372fc086b3de49a230f9a5f56463e470447e8a213692cf9d80b2e75`  
		Last Modified: Fri, 04 Sep 2026 00:05:02 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json
